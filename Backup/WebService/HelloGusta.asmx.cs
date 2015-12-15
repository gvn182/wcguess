using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BLO;
using BLL;
using System.IO;

namespace WebService
{
    /// <summary>
    /// Summary description for HelloGusta
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class HelloGusta : System.Web.Services.WebService
    {

        [WebMethod]
        public int VerificaLogin(string email, string senha)
        {
            UsuarioBLO UserBLO = new UsuarioBLO();
            return UserBLO.GetUserID(email,senha); //-1 não existe, -2 senha invalida - resto ID.
            
        }
        [WebMethod]
        public int FacebookLogin(string name, string lastname, string Sexo, string Nascimento, string Location, string email, string facebookID)
        {
            UsuarioBLO UserBLO = new UsuarioBLO();
            return UserBLO.CadastraUsuario(name, lastname, Sexo, Nascimento, Location, email, facebookID, facebookID, 1);
        }
        [WebMethod]
        public int CadastraLogin(string name, string lastname, string Sexo, string Nascimento, string Location, string email, string senha)
        {
            UsuarioBLO UserBLO = new UsuarioBLO();
            return UserBLO.CadastraUsuario(name, lastname, Sexo, Nascimento, Location, email, senha, String.Empty, 1);
        }
        [WebMethod]
        public string[] GetAllRanks()
        {
            RankBLO Rank_BLO = new RankBLO();
            List<REP_RANKING> AllRanks = Rank_BLO.GetRanks();
            string[] Retorno = new string[AllRanks.Count];
            for (int i = 0; i < AllRanks.Count; i++)
            {
                Retorno[i] = AllRanks[i].Posicao + "," + AllRanks[i].Facebook_id + "," + AllRanks[i].Nome + "," + AllRanks[i].Pontos;
            }
            return Retorno;
        }
        [WebMethod]
        public string GetRankBy(String ID_Usuario)
        {
            RankBLO Rank_BLO = new RankBLO();
            REP_RANKING TheRank = Rank_BLO.GetRankBy(ID_Usuario);
            if (TheRank != null)
                return TheRank.Posicao + "," + TheRank.Facebook_id + "," + TheRank.Nome + "," + TheRank.Pontos;

            return String.Empty;
        }
        [WebMethod]
        public string GetUsuarioBy(String ID_Usuario)
        {
            
            
            UsuarioBLO Usuario_BLO = new UsuarioBLO();
            REP_USUARIO The_Usuario = Usuario_BLO.GetUsuarioBy(ID_Usuario);
            if (The_Usuario != null)
                return The_Usuario.ID + "," + The_Usuario.Nome + "," + The_Usuario.Sobrenome + "," + The_Usuario.Email + "," + The_Usuario.Nascimento + "," + The_Usuario.Pais;

            return String.Empty;
        }
    }
}
