using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using BLL;
using System.IO;

namespace WCguess
{
    public partial class Guess : System.Web.UI.Page
    {
        JogoBLO BLO_Jogo = new JogoBLO();
        const int CELRESTIME1 = 1;
        const int CELRESTIME2 = 3;
        const int CELPONTOS = 7;
        const int CONTROLPONTOS = 1;
        const int CONTROLRESULTADO = 0;
        const int CONTROLTIME = 1;
        const int CELDATA = 0;
        const int CONTROLDATA = 0;
        const int STARTTR = 1;
        const int TIME1FLAG = 0;
        const int TIME1CONTROL = 1;
        const int TIME2FLAG = 4;
        const int TIME2CONTROL = 1;
        int ID_Jogo = 0;
        List<HtmlTable> AllGrupos = new List<HtmlTable>();

        String ID_Usuario = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Usuario"] = "1";
            if (Session["Usuario"] == null)
                Response.Redirect("Login.aspx");
            else
                ID_Usuario = Session["Usuario"].ToString();

            if (!IsPostBack)
            {
                LoadInformation();
            }

        }

        private void LoadInformation()
        {
            AllGrupos.Add(tbGrupoA);
            AllGrupos.Add(tbGrupoB);
            AllGrupos.Add(tbGrupoC);
            AllGrupos.Add(tbGrupoD);
            AllGrupos.Add(tbGrupoE);
            AllGrupos.Add(tbGrupoF);
            AllGrupos.Add(tbGrupoG);
            AllGrupos.Add(tbGrupoH);

            bool TemJogo = BLO_Jogo.TemJogo(ID_Usuario);

            if (TemJogo)
            {
                LoadRascunho();
                ClientScript.RegisterStartupScript(this.GetType(), "AtualizaBandeiras", "LoadOitavas();", true);
            }
        }

        private void LoadRascunho()
        {
            List<REP_JOGOS> AllJogos = BLO_Jogo.GetJogos(ID_Usuario);
            List<HtmlTable> AllGrupos = new List<HtmlTable>();
            AllGrupos.Add(tbGrupoA);
            AllGrupos.Add(tbGrupoB);
            AllGrupos.Add(tbGrupoC);
            AllGrupos.Add(tbGrupoD);
            AllGrupos.Add(tbGrupoE);
            AllGrupos.Add(tbGrupoF);
            AllGrupos.Add(tbGrupoG);
            AllGrupos.Add(tbGrupoH);
            int r = 0;
            foreach (HtmlTable Table in AllGrupos)
            {
                for (int i = STARTTR; i < 7; i++)
                {
                    HtmlTableRow TR = ((HtmlTableRow)Table.Controls[i]);
                    ((TextBox)TR.Cells[CELRESTIME1].Controls[CONTROLTIME]).Text = AllJogos[r].RESULTADO_TIME_1.ToString();
                    ((TextBox)TR.Cells[CELRESTIME2].Controls[CONTROLTIME]).Text = AllJogos[r].RESULTADO_TIME_2.ToString();
                    r++;
                }
            }
            txtJogo48Time1.Text = AllJogos[48].RESULTADO_TIME_1.ToString();
            txtJogo48Time2.Text = AllJogos[48].RESULTADO_TIME_2.ToString();

            txtJogo49Time1.Text = AllJogos[49].RESULTADO_TIME_1.ToString();
            txtJogo49Time2.Text = AllJogos[49].RESULTADO_TIME_2.ToString();

            txtJogo50Time1.Text = AllJogos[50].RESULTADO_TIME_1.ToString();
            txtJogo50Time2.Text = AllJogos[50].RESULTADO_TIME_2.ToString();

            txtJogo51Time1.Text = AllJogos[51].RESULTADO_TIME_1.ToString();
            txtJogo51Time2.Text = AllJogos[51].RESULTADO_TIME_2.ToString();

            txtJogo52Time1.Text = AllJogos[52].RESULTADO_TIME_1.ToString();
            txtJogo52Time2.Text = AllJogos[52].RESULTADO_TIME_2.ToString();

            txtJogo53Time1.Text = AllJogos[53].RESULTADO_TIME_1.ToString();
            txtJogo53Time2.Text = AllJogos[53].RESULTADO_TIME_2.ToString();

            txtJogo54Time1.Text = AllJogos[54].RESULTADO_TIME_1.ToString();
            txtJogo54Time2.Text = AllJogos[54].RESULTADO_TIME_2.ToString();

            txtJogo55Time1.Text = AllJogos[55].RESULTADO_TIME_1.ToString();
            txtJogo55Time2.Text = AllJogos[55].RESULTADO_TIME_2.ToString();

            txtJogo56Time1.Text = AllJogos[56].RESULTADO_TIME_1.ToString();
            txtJogo56Time2.Text = AllJogos[56].RESULTADO_TIME_2.ToString();

            txtJogo57Time1.Text = AllJogos[57].RESULTADO_TIME_1.ToString();
            txtJogo57Time2.Text = AllJogos[57].RESULTADO_TIME_2.ToString();

            txtJogo58Time1.Text = AllJogos[58].RESULTADO_TIME_1.ToString();
            txtJogo58Time2.Text = AllJogos[58].RESULTADO_TIME_2.ToString();

            txtJogo59Time1.Text = AllJogos[59].RESULTADO_TIME_1.ToString();
            txtJogo59Time2.Text = AllJogos[59].RESULTADO_TIME_2.ToString();

            txtJogo60Time1.Text = AllJogos[60].RESULTADO_TIME_1.ToString();
            txtJogo60Time2.Text = AllJogos[60].RESULTADO_TIME_2.ToString();

            txtJogo61Time1.Text = AllJogos[61].RESULTADO_TIME_1.ToString();
            txtJogo61Time2.Text = AllJogos[61].RESULTADO_TIME_2.ToString();

            txtJogo62Time1.Text = AllJogos[62].RESULTADO_TIME_1.ToString();
            txtJogo62Time2.Text = AllJogos[62].RESULTADO_TIME_2.ToString();

            txtJogo63Time1.Text = AllJogos[63].RESULTADO_TIME_1.ToString();
            txtJogo63Time2.Text = AllJogos[63].RESULTADO_TIME_2.ToString();
        }
        public void SaveRascunho(HtmlTable Table, bool TemJogo)
        {
            List<REP_JOGOS> ListJogos = new List<REP_JOGOS>();
            for (int i = STARTTR; i < 7; i++)
            {
                HtmlTableRow TR = ((HtmlTableRow)Table.Controls[i]);
                String Data = ((LiteralControl)TR.Cells[CELDATA].Controls[CONTROLDATA]).Text.Replace(Environment.NewLine, "").Trim();
                String ResTime1 = ((TextBox)TR.Cells[CELRESTIME1].Controls[CONTROLTIME]).Text;
                String ResTime2 = ((TextBox)TR.Cells[CELRESTIME2].Controls[CONTROLTIME]).Text;
                String Flag1 = Path.GetFileNameWithoutExtension((((HtmlImage)TR.Cells[TIME1FLAG].Controls[TIME1CONTROL]).Src));
                String Flag2 = Path.GetFileNameWithoutExtension((((HtmlImage)TR.Cells[TIME2FLAG].Controls[TIME2CONTROL]).Src));

                ListJogos.Add(new REP_JOGOS() { ID_JOGO = ID_Jogo, ID_USUARIO = ID_Usuario, TIME_1 = Flag1, RESULTADO_TIME_1 = int.Parse(ResTime1), TIME_2 = Flag2, RESULTADO_TIME_2 = int.Parse(ResTime2), TIPO_GRAVACAO = 0, FASE = 1 });

                ID_Jogo++;
            }
            if (TemJogo)
                BLO_Jogo.UpdateJogos(ListJogos);
            else
                BLO_Jogo.AddJogos(ListJogos);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool TemJogo = BLO_Jogo.TemJogo(ID_Usuario);
            SaveRascunho(tbGrupoA, TemJogo);
            SaveRascunho(tbGrupoB, TemJogo);
            SaveRascunho(tbGrupoC, TemJogo);
            SaveRascunho(tbGrupoD, TemJogo);
            SaveRascunho(tbGrupoE, TemJogo);
            SaveRascunho(tbGrupoF, TemJogo);
            SaveRascunho(tbGrupoG, TemJogo);
            SaveRascunho(tbGrupoH, TemJogo);
            SaveOitavas(TemJogo);

            LoadInformation();
            ClientScript.RegisterStartupScript(this.GetType(), "AlertSucesso", "alert('Rascunho salvo com sucesso');", true);

        }
        private void SaveOitavas(bool TemJogo)
        {
            List<REP_JOGOS> ListJogos = new List<REP_JOGOS>();

            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 48, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo48Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo48Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo48Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo48Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 49, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo49Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo49Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo49Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo49Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 50, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo50Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo50Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo50Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo50Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 51, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo51Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo51Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo51Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo51Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 52, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo52Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo52Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo52Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo52Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 53, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo53Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo53Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo53Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo53Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 54, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo54Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo54Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo54Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo54Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 55, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo55Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo55Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo55Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo55Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 56, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo56Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo56Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo56Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo56Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 57, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo57Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo57Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo57Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo57Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 58, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo58Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo58Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo58Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo58Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 59, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo59Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo59Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo59Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo59Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 60, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo60Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo60Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo60Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo60Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 61, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo61Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo61Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo61Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo61Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 62, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo62Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo62Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo62Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo62Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            ListJogos.Add(new REP_JOGOS() { ID_JOGO = 63, ID_USUARIO = ID_Usuario, TIME_1 = Path.GetFileNameWithoutExtension(ImgJogo63Time1.ImageUrl), RESULTADO_TIME_1 = int.Parse(txtJogo63Time1.Text), TIME_2 = Path.GetFileNameWithoutExtension(ImgJogo63Time2.ImageUrl), RESULTADO_TIME_2 = int.Parse(txtJogo63Time2.Text), TIPO_GRAVACAO = 0, FASE = 2 });
            if (!TemJogo)
            {

                BLO_Jogo.AddJogos(ListJogos);
            }
            else
            {
                BLO_Jogo.UpdateJogos(ListJogos);
            }
        }
    }
}