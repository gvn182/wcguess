using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BLL;

namespace RankProcessor
{
    public partial class Form1 : Form
    {
        JogoBLO BLO_Jogo = new JogoBLO();
        RankBLO BLO_Rank = new RankBLO();
        BonusBLO BLO_Bonus = new BonusBLO();
        List<REP_JOGOS> LstAllResults;
        List<REP_JOGOS> LstAllJogos;
        List<REP_BONUS> LstAllBonus;
        public Form1()
        {
            InitializeComponent();
        }

        private void btnProcessar_Click(object sender, EventArgs e)
        {
            List<REP_RANKING> LstAllRanks = new List<REP_RANKING>();
            LstAllResults = BLO_Jogo.GetResultados();
            LstAllJogos = BLO_Jogo.GetAllJogos();
            LstAllBonus = BLO_Bonus.GetAllBonus();
            List<string> LstDistinctUsers = LstAllJogos.Select(x => x.ID_USUARIO).Distinct().ToList();
            Progress.Minimum = 0;
            Progress.Maximum = LstAllJogos.Count;


            foreach (string Usuario in LstDistinctUsers)
            {
                int Pontos = 0;
                DateTime DataAposta = DateTime.MaxValue;
                foreach (REP_JOGOS CurrentUserGuess in LstAllJogos.Where(x => x.ID_USUARIO == Usuario).Select(x => x).ToList<REP_JOGOS>())
                {
                    REP_JOGOS TheGuess = LstAllResults.FirstOrDefault(x => x.ID == CurrentUserGuess.ID_JOGO);
                    if (TheGuess != null)
                    {
                        DataAposta = TheGuess.DATA_APOSTA;
                        Pontos += CheckWinner(CurrentUserGuess, TheGuess);
                        Progress.Value += 1;
                        Progress.Update();
                        Progress.Refresh();
                    }
                }
                
                int BonusPoints = LstAllBonus.FirstOrDefault(x => x.ID == Usuario) != null ? LstAllBonus.FirstOrDefault(x => x.ID == Usuario).Pontos : 0;
                LstAllRanks.Add(new REP_RANKING() { DATA_APOSTA = DataAposta, Id_usuario = Usuario, Pontos = Pontos + BonusPoints });
            }

            LstAllRanks = LstAllRanks.OrderBy(x => x.DATA_APOSTA).OrderByDescending(x=> x.Pontos).ToList();
            for (int i = 0; i < LstAllRanks.Count; i++)
            {
                LstAllRanks[i].Posicao = i + 1;
            }
            BLO_Rank.DeleteRank();
            BLO_Rank.InsertRank(LstAllRanks);
            Progress.Value = Progress.Maximum;
            MessageBox.Show("FEITO");

        }
        private int CheckWinner(REP_JOGOS Aposta, REP_JOGOS Resultado)
        {
            int Pontos = 3;

            if (Aposta.TIME_1 != Resultado.TIME_1 || Aposta.TIME_2 != Resultado.TIME_2)
                return 3;

            if (Aposta.RESULTADO_TIME_1 == Resultado.RESULTADO_TIME_1 && Aposta.RESULTADO_TIME_2 == Resultado.RESULTADO_TIME_2) //verifica placar em cima
            {
                Pontos = 10;
            }
            else if (Aposta.RESULTADO_TIME_1 > Aposta.RESULTADO_TIME_2) //Verifica vitoria apostando time 1;
            {
                if (Resultado.RESULTADO_TIME_1 > Resultado.RESULTADO_TIME_2)
                    Pontos = 7;
            }
            else if (Aposta.RESULTADO_TIME_2 > Aposta.RESULTADO_TIME_1) //Verifica vitoria apostando time 2;
            {
                if (Resultado.RESULTADO_TIME_2 > Resultado.RESULTADO_TIME_1)
                    Pontos = 7;
            }
            return Pontos;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //Progress.Minimum = 0;
            //Progress.Maximum = 100;
        }
    }
}
