using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WCguess
{
    public partial class Resultado : System.Web.UI.Page
    {
        String ID_Usuario = String.Empty;
        JogoBLO BLO_Jogo = new JogoBLO();
        TimeBLO BLO_Time = new TimeBLO();
        List<REP_TEAM> AllTeams;
        
        protected void Page_Load(object sender, EventArgs e)
        {
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
            List<REP_JOGOS> AllJogos = BLO_Jogo.GetJogos(ID_Usuario);

            List<REP_RESULTADOS> AllJogosResultados = new List<REP_RESULTADOS>();
            List<REP_RESULTADOS> ListGrupoA = new List<REP_RESULTADOS>();
            for (int i = 0; i < AllResultados.Count; i++)
            {
                REP_RESULTADOS Aposta = new REP_RESULTADOS();
                Aposta.ID_JOGO = AllJogos[i].ID_JOGO;
                Aposta.RESULTADO_TIME_1 = AllJogos[i].RESULTADO_TIME_1;
                Aposta.TIME_1 = AllJogos[i].TIME_1;
                Aposta.TIME_2 = AllJogos[i].TIME_2;
                Aposta.RESULTADO_TIME_2 = AllJogos[i].RESULTADO_TIME_2;


                REP_RESULTADOS Resultado = new REP_RESULTADOS();
                Resultado.ID_JOGO = AllJogos[i].ID_JOGO;
                Resultado.RESULTADO_TIME_1 = AllResultados[i].RESULTADO_TIME_1;
                Resultado.TIME_1 = AllResultados[i].TIME_1;
                Resultado.TIME_2 = AllResultados[i].TIME_2;
                Resultado.RESULTADO_TIME_2 = AllResultados[i].RESULTADO_TIME_2;

                AllJogosResultados.Add(Aposta);
                AllJogosResultados.Add(Resultado);


            }


            GdrGrupoA.DataSource = AllJogosResultados.Where(x => x.ID_JOGO <= 5).ToList<REP_RESULTADOS>();
            GdrGrupoA.DataBind();

            GdrGrupoB.DataSource = AllJogosResultados.Where(x => x.ID_JOGO > 5 && x.ID_JOGO <= 11).ToList<REP_RESULTADOS>();
            GdrGrupoB.DataBind();

            GdrGrupoC.DataSource = AllJogosResultados.Where(x => x.ID_JOGO > 11 && x.ID_JOGO <= 17).ToList<REP_RESULTADOS>();
            GdrGrupoC.DataBind();

            GdrGrupoD.DataSource = AllJogosResultados.Where(x => x.ID_JOGO > 17 && x.ID_JOGO <= 23).ToList<REP_RESULTADOS>();
            GdrGrupoD.DataBind();

            GdrGrupoE.DataSource = AllJogosResultados.Where(x => x.ID_JOGO > 23 && x.ID_JOGO <= 29).ToList<REP_RESULTADOS>();
            GdrGrupoE.DataBind();

            GdrGrupoF.DataSource = AllJogosResultados.Where(x => x.ID_JOGO > 29 && x.ID_JOGO <= 35).ToList<REP_RESULTADOS>();
            GdrGrupoF.DataBind();

            GdrGrupoG.DataSource = AllJogosResultados.Where(x => x.ID_JOGO > 35 && x.ID_JOGO <= 41).ToList<REP_RESULTADOS>();
            GdrGrupoG.DataBind();

            GdrGrupoH.DataSource = AllJogosResultados.Where(x => x.ID_JOGO > 41 && x.ID_JOGO <= 47).ToList<REP_RESULTADOS>();
            GdrGrupoH.DataBind();

            GdrFinais.DataSource = AllJogosResultados.Where(x => x.ID_JOGO > 47 && x.ID_JOGO <= 63).ToList<REP_RESULTADOS>();
            GdrFinais.DataBind();


        }

        protected void GdrGrupoA_DataBound(object sender, EventArgs e)
        {
            FabulizerGrid(GdrGrupoA,lblTotalA);
        }
        protected void GdrGrupoB_DataBound(object sender, EventArgs e)
        {
            FabulizerGrid(GdrGrupoB, lblTotalB);
        }
        protected void GdrGrupoC_DataBound(object sender, EventArgs e)
        {
            FabulizerGrid(GdrGrupoC, lblTotalC);
        }
        protected void GdrGrupoD_DataBound(object sender, EventArgs e)
        {
            FabulizerGrid(GdrGrupoD, lblTotalD);
        }
        protected void GdrGrupoE_DataBound(object sender, EventArgs e)
        {
            FabulizerGrid(GdrGrupoE, lblTotalE);
        }
        protected void GdrGrupoF_DataBound(object sender, EventArgs e)
        {
            FabulizerGrid(GdrGrupoF, lblTotalF);
        }

        protected void GdrGrupoG_DataBound(object sender, EventArgs e)
        {
            FabulizerGrid(GdrGrupoG, lblTotalG);
        }

        protected void GdrGrupoH_DataBound(object sender, EventArgs e)
        {
            FabulizerGrid(GdrGrupoH, lblTotalH);
        }
        protected void GdrFinais_DataBound(object sender, EventArgs e)
        {
            FabulizerGrid(GdrFinais, lblTotalOitavas);
        }

        private void FabulizerGrid(GridView TheGrid, Label TheLabel)
        {
            int Total = 0;
            if (TheGrid.Rows.Count > 0)
            {
                TheGrid.HeaderRow.Cells[0].Visible = false;

                for (int i = 0; i < TheGrid.Rows.Count; i++)
                {
                    TheGrid.Rows[i].Cells[0].Visible = false;

                    if (i % 2 == 1)
                    {
                        int Pontos =  CheckWinner(TheGrid,i);
                        TheGrid.Rows[i].Cells[5].Text = Pontos.ToString();
                        Total += Pontos;
                        
                    }

                    String Team1Name = AllTeams.FirstOrDefault(x => x.ID == int.Parse(TheGrid.Rows[i].Cells[1].Text)).Nome;
                    String Team2Name = AllTeams.FirstOrDefault(x => x.ID == int.Parse(TheGrid.Rows[i].Cells[4].Text)).Nome;
                    TheGrid.Rows[i].Cells[1].Text = "<img src='Styles/images/flags/" + Team1Name + ".png' style='width:24px; height:24px;' />";
                    TheGrid.Rows[i].Cells[4].Text = "<img src='Styles/images/flags/" + Team2Name + ".png' style='width:24px; height:24px;' />";

                   
                }
            }
            TheLabel.Text = Total.ToString();
        }

        private int CheckWinner(GridView TheGrid, int RowResultado)
        {
            int RowAposta = RowResultado - 1;
            String Time1 = TheGrid.Rows[RowAposta].Cells[1].Text;
            String Time2 = TheGrid.Rows[RowAposta].Cells[4].Text;
            String Time1_Resultado = TheGrid.Rows[RowResultado].Cells[1].Text;
            String Time2_Resultado = TheGrid.Rows[RowResultado].Cells[4].Text;

            int Resultado1 = int.Parse(TheGrid.Rows[RowAposta].Cells[2].Text);
            int Resultado2 = int.Parse(TheGrid.Rows[RowAposta].Cells[3].Text);
            int Resultado1_Resultado = int.Parse(TheGrid.Rows[RowResultado].Cells[2].Text);
            int Resultado2_Resultado = int.Parse(TheGrid.Rows[RowResultado].Cells[3].Text);



            int Pontos = 1;

            if (Time1 != Time1_Resultado || Time2 != Time2_Resultado)
                return 1;

            if (Resultado1 == Resultado1_Resultado && Resultado2 == Resultado2_Resultado) //verifica placar em cima
            {
                Pontos = 5;
            }
            else if (Resultado1 > Resultado2) //Verifica vitoria apostando time 1;
            {
                if (Resultado1_Resultado > Resultado2_Resultado)
                    Pontos = 3;
            }
            else if (Resultado2 > Resultado1) //Verifica vitoria apostando time 2;
            {
                if (Resultado2_Resultado > Resultado1_Resultado)
                    Pontos = 3;
            }

            return Pontos;

        }
    }
}