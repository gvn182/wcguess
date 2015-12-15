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
    public partial class Resultado1 : System.Web.UI.Page
    {
        String ID_Usuario = String.Empty;
        JogoBLO BLO_Jogo = new JogoBLO();
        TimeBLO BLO_Time = new TimeBLO();
        List<REP_TEAM> AllTeams;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Usuario"] = "1";
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
            List<REP_JOGOS> LstGrupoA = AllJogos.Where(x => x.ID_JOGO <= 5).Select(x => x).ToList<REP_JOGOS>();
            List<REP_JOGOS> LstGrupoB = AllJogos.Where(x => x.ID_JOGO > 5 && x.ID_JOGO <= 11).ToList<REP_JOGOS>();
            List<REP_JOGOS> LstGrupoC = AllJogos.Where(x => x.ID_JOGO > 11 && x.ID_JOGO <= 17).ToList<REP_JOGOS>();
            List<REP_JOGOS> LstGrupoD = AllJogos.Where(x => x.ID_JOGO > 17 && x.ID_JOGO <= 23).ToList<REP_JOGOS>();
            List<REP_JOGOS> LstGrupoE = AllJogos.Where(x => x.ID_JOGO > 23 && x.ID_JOGO <= 29).ToList<REP_JOGOS>();
            List<REP_JOGOS> LstGrupoF = AllJogos.Where(x => x.ID_JOGO > 29 && x.ID_JOGO <= 35).ToList<REP_JOGOS>();
            List<REP_JOGOS> LstGrupoG = AllJogos.Where(x => x.ID_JOGO > 35 && x.ID_JOGO <= 41).ToList<REP_JOGOS>();
            List<REP_JOGOS> LstGrupoH = AllJogos.Where(x => x.ID_JOGO > 41 && x.ID_JOGO <= 47).ToList<REP_JOGOS>();

            FillTable(tbGrupoA, LstGrupoA, AllResultados);
            FillTable(tbGrupoB, LstGrupoB, AllResultados);
            FillTable(tbGrupoC, LstGrupoC, AllResultados);
            FillTable(tbGrupoD, LstGrupoD, AllResultados);
            FillTable(tbGrupoE, LstGrupoE, AllResultados);
            FillTable(tbGrupoF, LstGrupoF, AllResultados);
            FillTable(tbGrupoG, LstGrupoG, AllResultados);
            FillTable(tbGrupoH, LstGrupoH, AllResultados);


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
        private void FillTable(HtmlTable tbToBeFilled, List<REP_JOGOS> My6Games, List<REP_JOGOS> ResultToSearch)
        {
            for (int i = 0; i < My6Games.Count; i++)
            {
                REP_JOGOS TheResult = ResultToSearch.FirstOrDefault(x => x.ID == My6Games[i].ID_JOGO);
                HtmlTableRow TR = new HtmlTableRow();
                HtmlTableCell TdPontos = new HtmlTableCell();
                HtmlTableCell TdTime1 = new HtmlTableCell();
                HtmlTableCell TdX = new HtmlTableCell();
                HtmlTableCell TdTime2 = new HtmlTableCell();
                HtmlTableCell TdResultado = new HtmlTableCell();

                TR.Attributes.Add("class", "trResultado");
                TdPontos.Attributes.Add("class", "tdPontos");
                TdPontos.Attributes.Add("align", "center");

                TdTime1.Attributes.Add("class", "tdTime");
                TdTime1.Attributes.Add("align", "center");

                TdX.Attributes.Add("class", "tdX");
                TdX.Attributes.Add("align", "center");

                TdTime2.Attributes.Add("class", "tdTime");
                TdTime2.Attributes.Add("align", "center");
                
                TdResultado.Attributes.Add("class", "tdResultado");

                String NomeTime1 = AllTeams.FirstOrDefault(x => x.ID == int.Parse(My6Games[i].TIME_1)).Nome;
                String NomeTime2 = AllTeams.FirstOrDefault(x => x.ID == int.Parse(My6Games[i].TIME_2)).Nome;
                TdPontos.InnerHtml = CheckWinner(My6Games[i], ResultToSearch);
                TdTime1.InnerHtml = NomeTime1;
                TdX.InnerHtml = "<img src='Styles/Images/flags/" + NomeTime1 + ".png' width=36px; height=36px />" + " X " + "<img src='Styles/Images/flags/" + NomeTime2 + ".png' width=36px; height=36px />" ;
                TdTime2.InnerHtml = NomeTime2;
                
                String ResultadoText = TheResult != null? TheResult.RESULTADO_TIME_1 + ":" + TheResult.RESULTADO_TIME_2 : "N/A";
                TdResultado.InnerHtml = String.Format("{0}:{1} </br> {2}", My6Games[i].RESULTADO_TIME_1, My6Games[i].RESULTADO_TIME_2, ResultadoText);

                
                
                TR.Controls.Add(TdPontos);
                TR.Controls.Add(TdTime1);
                TR.Controls.Add(TdX);
                TR.Controls.Add(TdTime2);
                TR.Controls.Add(TdResultado);
                tbToBeFilled.Controls.Add(TR);

                //<tr class="trResultado">
                //            <td class="tdPontos" align="center">
                //                13
                //            </td>
                //            <td class="tdTime" align="center">
                //                Brasil
                //            </td>
                //            <td class="tdX" align="center">
                //                X
                //            </td>
                //            <td class="tdTime" align="center">
                //                Croacia
                //            </td>
                //            <td class="tdResultado">
                //                9:0
                //                <br />
                //                1:0
                //            </td>
                //        </tr>
            }
        }
    }
}