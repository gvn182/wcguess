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
    public partial class Rank : System.Web.UI.Page
    {
        String ID_Usuario = String.Empty;
        RankBLO Rank_BLO = new RankBLO();
        BonusBLO BonusBLO = new BonusBLO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
                Response.Redirect("Login.aspx");
            else
                ID_Usuario = Session["Usuario"].ToString();

            if (!IsPostBack)
            {
                LoadInformation();

            }



        }

        private void AddTwitterIcon(String text)
        {

            HtmlGenericControl ATwitter = new HtmlGenericControl("a");
            Image img = new Image();
            img.ImageUrl = "/Styles/images/twitter.png";
            ATwitter.Attributes.Add("href", String.Format("http://twitter.com/home/?status={0}", text));
            ATwitter.Attributes.Add("target", "target='_blank'");
            ATwitter.Controls.Add(img);
            TdTwitter.Controls.Add(ATwitter);

        }
        protected void LoadInformation()
        {
            REP_RANKING TheRank = Rank_BLO.GetRankBy(ID_Usuario);
            int MyBonusPoints = BonusBLO.GetBonusBy(ID_Usuario);
            if (TheRank != null)
            {
                lblNome.Text = TheRank.Nome;
                lblPosicao.Text = TheRank.Posicao.ToString();
                lblPontos.Text = String.Format("{0} + ({1})", (TheRank.Pontos - MyBonusPoints).ToString(), MyBonusPoints.ToString());
                imgFoto.ImageUrl = TheRank.Facebook_id != String.Empty ? String.Format("https://graph.facebook.com/{0}/picture?type=normal", TheRank.Facebook_id) : "/Styles/images/Default.jpg";
                AddTwitterIcon("Estou participando do World Cup Guess e estou em " + TheRank.Posicao + " lugar, vem participar tambem! Voce pode ganhar varios premios! - http://www.wcguess.com");
                divPlayerRank.Visible = true;
                divSocialMedia.Visible = true;
                divSorry.Visible = false;
            }
            else
            {
                divPlayerRank.Visible = false;
                divSocialMedia.Visible = false;
                divSorry.Visible = true;
            }
            List<REP_RANKING> LstRanks = Rank_BLO.GetRanks();

            if (LstRanks.Count > 0)
            {
                divAllRanks.Visible = true;
                divAllRanksSorry.Visible = false;
                foreach (REP_RANKING Item in LstRanks)
                {
                    AddNewRank(Item);
                }
            }
            else
            {
                divAllRanks.Visible = false;
                divAllRanksSorry.Visible = true;
            }

        }
        private void AddNewRank(REP_RANKING Item)
        {
            HtmlTableRow TR = new HtmlTableRow();
            HtmlTableCell TD = new HtmlTableCell();
            HtmlTableCell TD2 = new HtmlTableCell();
            HtmlGenericControl Div_Pos = new HtmlGenericControl("div");
            HtmlGenericControl Div_Rank = new HtmlGenericControl("div");
            Image Img = new Image();
            HtmlGenericControl SpanNome = new HtmlGenericControl("span");
            HtmlGenericControl SpanPontos = new HtmlGenericControl("span");

            TD2.Attributes.Add("width", "300px");
            Div_Pos.Attributes.Add("class", "rank");
            Div_Rank.Attributes.Add("class", "rank-user");
            Img.Attributes.Add("class", "profile-img");
            Img.Attributes.Add("z-index", "1000");
            Img.Width = 52;
            Img.Height = 52;
            SpanNome.Attributes.Add("class", "top-ranking-name");
            SpanNome.Attributes.Add("z-index", "5");
            SpanPontos.Attributes.Add("class", "top-ranking-points");

            Div_Pos.InnerText = Item.Posicao.ToString();
            Img.ImageUrl = Item.Facebook_id != String.Empty ? String.Format("https://graph.facebook.com/{0}/picture?type=normal", Item.Facebook_id) : "/Styles/images/Default.jpg";
            SpanNome.InnerText = Item.Nome;
            SpanPontos.InnerText = Item.Pontos.ToString();

            TD.Controls.Add(Div_Pos);

            Div_Rank.Controls.Add(Img);
            Div_Rank.Controls.Add(SpanNome);
            Div_Rank.Controls.Add(SpanPontos);


            TD2.Controls.Add(Div_Rank);
            TR.Controls.Add(TD);
            TR.Controls.Add(TD2);
            TableRank.Controls.Add(TR);
        }
    }
}