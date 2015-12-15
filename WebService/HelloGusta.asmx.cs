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
                return The_Usuario.ID + "," + The_Usuario.Nome + "," + The_Usuario.Sobrenome + "," + The_Usuario.Email + "," + The_Usuario.Nascimento + "," + The_Usuario.Pais + "," + The_Usuario.Sexo;

            return String.Empty;
        }

        [WebMethod]
        public string SetGuess(string Guess, string ID_Usuario)
        {
            JogoBLO BLO_Jogo = new JogoBLO();
            bool TemJogo = BLO_Jogo.TemJogo(ID_Usuario);
            List<REP_JOGOS> ListJogos = new List<REP_JOGOS>();
            List<string> ListGuess = Guess.Split(';').ToList<string>();
            for (int i = 0; i < ListGuess.Count; i++)
            {
                if (ListGuess[i] != String.Empty)
                {
                    int idJogo = int.Parse(ListGuess[i].Split(',')[0]);
                    string time1 = ListGuess[i].Split(',')[1].Replace(".png", "");
                    int resTime1 = int.Parse(ListGuess[i].Split(',')[2]);
                    string time2 = ListGuess[i].Split(',')[3].Replace(".png", "");
                    int resTime2 = int.Parse(ListGuess[i].Split(',')[4]);
                    int tipoGrav = int.Parse(ListGuess[i].Split(',')[5]);
                    ListJogos.Add(new REP_JOGOS()
                    {
                        ID_JOGO = idJogo,
                        ID_USUARIO = ID_Usuario,
                        TIME_1 = time1,
                        RESULTADO_TIME_1 = resTime1,
                        TIME_2 = time2,
                        RESULTADO_TIME_2 = resTime2,
                        TIPO_GRAVACAO = tipoGrav,
                        FASE = 1
                    });
                }
            }
            if (ListGuess.Count == 0)
                return "VEIO COUNT ZERO";

            if (TemJogo)
            {
                BLO_Jogo.UpdateJogos(ListJogos);
                return "Atualizado";
            }
            else
            {
                BLO_Jogo.AddJogos(ListJogos);
                return "Inserido";
            }


        }
        [WebMethod]
        public string SetGuess2(List<string> Guess, string ID_Usuario)
        {
            JogoBLO BLO_Jogo = new JogoBLO();
            bool TemJogo = BLO_Jogo.TemJogo(ID_Usuario);
            List<REP_JOGOS> ListJogos = new List<REP_JOGOS>();
            for (int i = 0; i < Guess.Count; i++)
            {
                int idJogo = int.Parse(Guess[i].Split(',')[0]);
                string time1 = Guess[i].Split(',')[1].Replace(".png", "");
                int resTime1 = int.Parse(Guess[i].Split(',')[2]);
                string time2 = Guess[i].Split(',')[3].Replace(".png", "");
                int resTime2 = int.Parse(Guess[i].Split(',')[4]);
                int tipoGrav = int.Parse(Guess[i].Split(',')[5]);
                ListJogos.Add(new REP_JOGOS()
                {
                    ID_JOGO = idJogo,
                    ID_USUARIO = ID_Usuario,
                    TIME_1 = time1,
                    RESULTADO_TIME_1 = resTime1,
                    TIME_2 = time2,
                    RESULTADO_TIME_2 = resTime2,
                    TIPO_GRAVACAO = tipoGrav,
                    FASE = 1
                });
            }
            if(Guess.Count == 0)
                return "VEIO COUNT ZERO";
            if (TemJogo)
            {
                BLO_Jogo.UpdateJogos(ListJogos);
                return "Atualizado";
            }

            else
            {
                if (BLO_Jogo.AddJogos(ListJogos))
                {
                    return "Inserido";
                }
                else
                {
                    return "deu teco";
                }
            }

            
        }
        [WebMethod]
        public string[] GetGuess(int ID_Usuario)
        {
            TimeBLO BLO_Time = new TimeBLO();
            List<REP_TEAM> Lst_Teams;
            JogoBLO BLO_Jogo = new JogoBLO();
            List<REP_JOGOS> AllJogos = BLO_Jogo.GetJogos(ID_Usuario.ToString());
            List<string> Retorno = new List<string>();

             Lst_Teams = BLO_Time.GetAllTeams();

             foreach (REP_JOGOS Item in AllJogos)
             {
                 Item.TIME_1 = Lst_Teams.FirstOrDefault(x => x.ID == int.Parse(Item.TIME_1)).Nome.ToString();
                 Item.TIME_2 = Lst_Teams.FirstOrDefault(x => x.ID == int.Parse(Item.TIME_2)).Nome.ToString();
                 Retorno.Add(Item.ID_JOGO + "," + Item.TIME_1 + "," + Item.RESULTADO_TIME_1 + "," + Item.TIME_2 + "," + Item.RESULTADO_TIME_2 + "," + Item.TIPO_GRAVACAO);
             }
             return Retorno.ToArray();

             
        }
    }
}
