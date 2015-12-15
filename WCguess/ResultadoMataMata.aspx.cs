using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Web.UI.HtmlControls;

namespace WCguess
{
    public partial class ResultadoMataMata : System.Web.UI.Page
    {
        String ID_Usuario = String.Empty;
        JogoBLO BLO_Jogo = new JogoBLO();
        TimeBLO BLO_Time = new TimeBLO();
        List<REP_TEAM> AllTeams;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Usuario"] = "4";
            if (Session["Usuario"] == null)
                Response.Redirect("Login.aspx");
            else
                ID_Usuario = Session["Usuario"].ToString();

            if (!IsPostBack)
            {
                AllTeams = BLO_Time.GetAllTeams();
                LoadInformation();
            }


        }

        private void LoadInformation()
        {
            List<REP_JOGOS> AllResultados = BLO_Jogo.GetResultados();
            List<REP_JOGOS> AllJogos = BLO_Jogo.GetJogosDefinitivos(ID_Usuario);
            if (AllJogos.Count < 63)
            {
                DivJogos.Visible = false;
                DivPreencherJogos.Visible = true;
                return;
            }
            DivJogos.Visible = true;
            DivPreencherJogos.Visible = false;
            List<REP_JOGOS> LstMataMata = AllJogos.Where(x => x.ID_JOGO > 47).ToList<REP_JOGOS>();
            FillAposta(LstMataMata, AllResultados);
            FillResultado(AllResultados, LstMataMata);


        }

        private void FillResultado(List<REP_JOGOS> AllResultados, List<REP_JOGOS> LstMataMata)
        {
            for (int i = 0; i < LstMataMata.Count; i++)
            {
                REP_JOGOS TheResult = AllResultados.FirstOrDefault(x => x.ID == LstMataMata[i].ID_JOGO);
                HtmlTableRow TR = new HtmlTableRow();
                HtmlTableCell TdTime1 = new HtmlTableCell();
                HtmlTableCell TdX = new HtmlTableCell();
                HtmlTableCell TdTime2 = new HtmlTableCell();

                TR.Attributes.Add("class", "trResultado");

                TdTime1.Attributes.Add("class", "tdTime");
                TdTime1.Attributes.Add("align", "center");

                TdX.Attributes.Add("class", "tdX");
                TdX.Attributes.Add("align", "center");

                TdTime2.Attributes.Add("class", "tdTime");
                TdTime2.Attributes.Add("align", "center");

                String NomeTime1 = TheResult != null ? AllTeams.FirstOrDefault(x => x.ID == int.Parse(TheResult.TIME_1)).Nome : "Não definido";
                String NomeTime2 = TheResult != null ? AllTeams.FirstOrDefault(x => x.ID == int.Parse(TheResult.TIME_2)).Nome : "Não definido";
                TdTime1.InnerHtml = NomeTime1;
                if (TheResult != null)
                    TdX.InnerHtml = "<img src='Styles/Images/flags/" + NomeTime1 + ".png' width=36px; height=36px />" + "<input type='text' style='width:30px; height:30px; text-align:center;' value='" + TheResult.RESULTADO_TIME_1 + "' disabled />" + "<input type='text' style='width:30px; height:30px; text-align:center;' value='" + TheResult.RESULTADO_TIME_2 + "' disabled />" + "<img src='Styles/Images/flags/" + NomeTime2 + ".png' width=36px; height=36px />";
                else
                    TdX.InnerHtml = "<img src='Styles/Images/flags/Default.png' width=36px; height=36px />" + "<input type='text' style='width:30px; height:30px; text-align:center;' value='X' disabled />" + "<input type='text' style='width:30px; height:30px; text-align:center;' value='X' disabled />" + "<img src='Styles/Images/flags/Default.png' width=36px; height=36px />";

                TdTime2.InnerHtml = NomeTime2;


                TR.Controls.Add(TdTime1);
                TR.Controls.Add(TdX);
                TR.Controls.Add(TdTime2);
                tbResultado.Controls.Add(TR);


            }
        }
        private string CheckWinner(REP_JOGOS TheGame, List<REP_JOGOS> ResultToSearch)
        {
            REP_JOGOS TheResult = ResultToSearch.FirstOrDefault(x => x.ID == TheGame.ID_JOGO);
            if (TheResult == null)
                return "N/C";

            String Time1 = TheGame.TIME_1;
            String Time2 = TheGame.TIME_2;
            String Time1_Resultado = TheResult.TIME_1;
            String Time2_Resultado = TheResult.TIME_2;

            int Resultado1 = TheGame.RESULTADO_TIME_1;
            int Resultado2 = TheGame.RESULTADO_TIME_2;
            int Resultado1_Resultado = TheResult.RESULTADO_TIME_1;
            int Resultado2_Resultado = TheResult.RESULTADO_TIME_2;



            string Pontos = "3";

            if (Time1 != Time1_Resultado || Time2 != Time2_Resultado)
                return "3";

            if (Resultado1 == Resultado1_Resultado && Resultado2 == Resultado2_Resultado) //verifica placar em cima
            {
                Pontos = "10";
            }
            else if (Resultado1 > Resultado2) //Verifica vitoria apostando time 1;
            {
                if (Resultado1_Resultado > Resultado2_Resultado)
                    Pontos = "7";
            }
            else if (Resultado2 > Resultado1) //Verifica vitoria apostando time 2;
            {
                if (Resultado2_Resultado > Resultado1_Resultado)
                    Pontos = "7";
            }

            return Pontos;

        }
        private void FillAposta(List<REP_JOGOS> Apostas, List<REP_JOGOS> ResultToSearch)
        {
            for (int i = 0; i < Apostas.Count; i++)
            {
                HtmlTableRow TR = new HtmlTableRow();
                HtmlTableCell TdPontos = new HtmlTableCell();
                HtmlTableCell TdTime1 = new HtmlTableCell();
                HtmlTableCell TdX = new HtmlTableCell();
                HtmlTableCell TdTime2 = new HtmlTableCell();

                TR.Attributes.Add("class", "trResultado");
                TdPontos.Attributes.Add("class", "tdPontos");
                TdPontos.Attributes.Add("align", "center");

                TdTime1.Attributes.Add("class", "tdTime");
                TdTime1.Attributes.Add("align", "center");

                TdX.Attributes.Add("class", "tdX");
                TdX.Attributes.Add("align", "center");

                TdTime2.Attributes.Add("class", "tdTime");
                TdTime2.Attributes.Add("align", "center");

                String NomeTime1 = AllTeams.FirstOrDefault(x => x.ID == int.Parse(Apostas[i].TIME_1)).Nome;
                String NomeTime2 = AllTeams.FirstOrDefault(x => x.ID == int.Parse(Apostas[i].TIME_2)).Nome;
                TdPontos.InnerHtml = CheckWinner(Apostas[i], ResultToSearch);
                TdTime1.InnerHtml = NomeTime1;
                TdX.InnerHtml = "<img src='Styles/Images/flags/" + NomeTime1 + ".png' width=36px; height=36px />" + "<input type='text' style='width:30px; height:30px; text-align:center;' value='" + Apostas[i].RESULTADO_TIME_1 + "' disabled />" + "<input type='text' style='width:30px; height:30px; text-align:center;' value='" + Apostas[i].RESULTADO_TIME_2 + "' disabled />" + "<img src='Styles/Images/flags/" + NomeTime2 + ".png' width=36px; height=36px />";
                TdTime2.InnerHtml = NomeTime2;

                TR.Controls.Add(TdPontos);
                TR.Controls.Add(TdTime1);
                TR.Controls.Add(TdX);
                TR.Controls.Add(TdTime2);
                tbAposta.Controls.Add(TR);


            }
        }
    }
}