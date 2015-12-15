using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using System.Data;

namespace BLL
{

    public class JogoBLO
    {
        JogoDAO DAO_Jogo = new JogoDAO();
        TimeBLO BLO_Time = new TimeBLO();
        List<REP_TEAM> Lst_Teams;
        public JogoBLO()
        {
         
        }
        public bool TemJogo(string ID_USUARIO)
        {
            bool Retorno = (DAO_Jogo.TemJogo(ID_USUARIO).Rows.Count > 0) ? true : false;
            return Retorno;
        }
        public bool TemResultado()
        {
            bool Retorno = (DAO_Jogo.TemResultado().Rows.Count > 0) ? true : false;
            return Retorno;
        }
        public bool UpdateJogos(List<REP_JOGOS> AllGames)
        {
            if (Lst_Teams == null || Lst_Teams.Count <= 0) 
                Lst_Teams = BLO_Time.GetAllTeams();

            String Update = String.Empty;
            foreach (REP_JOGOS item in AllGames)
            {
                item.TIME_1 = item.TIME_1.Replace("%20", " ");
                item.TIME_2 = item.TIME_2.Replace("%20", " ");
                item.TIME_1 = Lst_Teams.FirstOrDefault(x => x.Nome.ToUpper().Equals(item.TIME_1.ToUpper())).ID.ToString();
                item.TIME_2 = Lst_Teams.FirstOrDefault(x => x.Nome.ToUpper().Equals(item.TIME_2.ToUpper())).ID.ToString();
                Update += String.Format("UPDATE TB_JOGO SET ID_JOGO={0},ID_USUARIO='{1}',RESULTADO_1={2},RESULTADO_2={3},TIPO_GRAVACAO={4},FASE={5}, TIME_1={6},TIME_2={7},DATA_CADASTRO='{8}' WHERE ID_JOGO={0} AND ID_USUARIO='{1}';" + Environment.NewLine, item.ID_JOGO, item.ID_USUARIO, item.RESULTADO_TIME_1, item.RESULTADO_TIME_2, item.TIPO_GRAVACAO, item.FASE, item.TIME_1, item.TIME_2, DateTime.Now.ToString("dd/MM/yyyy hh:mm"));

            }
            return DAO_Jogo.UpdateJogos(Update);
        }
        public bool AddJogos(List<REP_JOGOS> AllGames)
        {

            if (Lst_Teams == null || Lst_Teams.Count <= 0) 
                Lst_Teams = BLO_Time.GetAllTeams();

            String Insert = String.Empty;
            foreach (REP_JOGOS item in AllGames)
            {
                item.TIME_1 = item.TIME_1.Replace("%20", " ");
                item.TIME_2 = item.TIME_2.Replace("%20", " ");
                item.TIME_1 = Lst_Teams.FirstOrDefault(x => x.Nome.ToUpper().Equals(item.TIME_1.ToUpper())).ID.ToString();
                item.TIME_2 = Lst_Teams.FirstOrDefault(x => x.Nome.ToUpper().Equals(item.TIME_2.ToUpper())).ID.ToString();
                Insert += "Insert into TB_JOGO (ID_JOGO,ID_USUARIO,TIME_1,RESULTADO_1,TIME_2,RESULTADO_2,TIPO_GRAVACAO,FASE,DATA_CADASTRO) values";
                Insert += String.Format(" ({0},'{1}',{2},{3},{4},{5},{6},{7},'{8}');" + Environment.NewLine, item.ID_JOGO, item.ID_USUARIO, item.TIME_1, item.RESULTADO_TIME_1, item.TIME_2, item.RESULTADO_TIME_2, Convert.ToInt32(item.TIPO_GRAVACAO), item.FASE, DateTime.Now.ToString("dd/MM/yyyy hh:mm"));
            }

            return DAO_Jogo.AddNewJogos(Insert);
        }

        public List<REP_JOGOS> GetResultados()
        {
            List<REP_JOGOS> Result = new List<REP_JOGOS>();
            DataTable Retorno = DAO_Jogo.GetAllResultados();
            for (int i = 0; i < Retorno.Rows.Count; i++)
            {
                Result.Add(new REP_JOGOS
                {
                    ID = Convert.ToInt32(Retorno.Rows[i].ItemArray[0]),
                    TIME_1 = Retorno.Rows[i].ItemArray[1].ToString(),
                    RESULTADO_TIME_1 = Convert.ToInt32(Retorno.Rows[i].ItemArray[2]),
                    TIME_2 = Retorno.Rows[i].ItemArray[3].ToString(),
                    RESULTADO_TIME_2 = Convert.ToInt32(Retorno.Rows[i].ItemArray[4]),
                });
            }
            return Result.OrderBy(x => x.ID).ToList();
        }
        public List<REP_JOGOS> GetJogosDefinitivos(string ID_USUARIO)
        {
            List<REP_JOGOS> Result = new List<REP_JOGOS>();
            DataTable Retorno = DAO_Jogo.GetAllJogosDefinitivos(ID_USUARIO);
            for (int i = 0; i < Retorno.Rows.Count; i++)
            {
                Result.Add(new REP_JOGOS
                {
                    ID_USUARIO = Retorno.Rows[i].ItemArray[0].ToString(),
                    ID_JOGO = Convert.ToInt32(Retorno.Rows[i].ItemArray[1]),
                    TIME_1 = Retorno.Rows[i].ItemArray[2].ToString(),
                    RESULTADO_TIME_1 = Convert.ToInt32(Retorno.Rows[i].ItemArray[3]),
                    TIME_2 = Retorno.Rows[i].ItemArray[4].ToString(),
                    RESULTADO_TIME_2 = Convert.ToInt32(Retorno.Rows[i].ItemArray[5]),
                    TIPO_GRAVACAO = Convert.ToInt32(Retorno.Rows[i].ItemArray[6]),
                    FASE = Convert.ToInt32(Retorno.Rows[i].ItemArray[7]),
                });
            }
            return Result.OrderBy(x => x.ID_JOGO).ToList();
        }
        public List<REP_JOGOS> GetJogos(string ID_USUARIO)
        {
            List<REP_JOGOS> Result = new List<REP_JOGOS>();
            DataTable Retorno = DAO_Jogo.GetAllJogos(ID_USUARIO);
            for (int i = 0; i < Retorno.Rows.Count; i++)
            {
                Result.Add(new REP_JOGOS
                {
                    ID_USUARIO = Retorno.Rows[i].ItemArray[0].ToString(),
                    ID_JOGO = Convert.ToInt32(Retorno.Rows[i].ItemArray[1]),
                    TIME_1 = Retorno.Rows[i].ItemArray[2].ToString(),
                    RESULTADO_TIME_1 = Convert.ToInt32(Retorno.Rows[i].ItemArray[3]),
                    TIME_2 = Retorno.Rows[i].ItemArray[4].ToString(),
                    RESULTADO_TIME_2 = Convert.ToInt32(Retorno.Rows[i].ItemArray[5]),
                    TIPO_GRAVACAO = Convert.ToInt32(Retorno.Rows[i].ItemArray[6]),
                    FASE = Convert.ToInt32(Retorno.Rows[i].ItemArray[7]),
                });
            }
            return Result.OrderBy(x=> x.ID_JOGO).ToList();
        }

        public List<REP_JOGOS> GetAllJogos()
        {
            List<REP_JOGOS> Result = new List<REP_JOGOS>();
            DataTable Retorno = DAO_Jogo.GetAllJogosApostados();
            for (int i = 0; i < Retorno.Rows.Count; i++)
            {
                Result.Add(new REP_JOGOS
                {
                    ID_USUARIO = Retorno.Rows[i].ItemArray[0].ToString(),
                    ID_JOGO = Convert.ToInt32(Retorno.Rows[i].ItemArray[1]),
                    TIME_1 = Retorno.Rows[i].ItemArray[2].ToString(),
                    RESULTADO_TIME_1 = Convert.ToInt32(Retorno.Rows[i].ItemArray[3]),
                    TIME_2 = Retorno.Rows[i].ItemArray[4].ToString(),
                    RESULTADO_TIME_2 = Convert.ToInt32(Retorno.Rows[i].ItemArray[5]),
                    TIPO_GRAVACAO = Convert.ToInt32(Retorno.Rows[i].ItemArray[6]),
                    FASE = Convert.ToInt32(Retorno.Rows[i].ItemArray[7]),
                    DATA_APOSTA = Convert.ToDateTime(Retorno.Rows[i].ItemArray[8])
                });
            }
            return Result;
        }

        public bool TemDefinitivo(string ID_Usuario)
        {
            bool Retorno = (DAO_Jogo.TemDefinitivo(ID_Usuario).Rows.Count > 0) ? true : false;
            return Retorno;
        }

        public void SetJogosDefinitivos(string ID_Usuario)
        {
            DAO_Jogo.SetJogosDefinitivos(ID_Usuario);
        }
    }
}
