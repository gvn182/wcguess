using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using System.Data;

namespace BLL
{

    public class RankBLO
    {
        RankDAO DAO = new RankDAO();

        public void DeleteRank()
        {
            DAO.RemoveRank();
        }
        public List<REP_RANKING> GetRanks()
        {
            DataTable Resultado = DAO.GetAllRanks();
            List<REP_RANKING> LstRanking = new List<REP_RANKING>();
            for (int i = 0; i < Resultado.Rows.Count; i++)
            {
                REP_RANKING TheRank = new REP_RANKING();
                TheRank.Posicao = int.Parse(Resultado.Rows[i].ItemArray[0].ToString());
                TheRank.Id_usuario = Resultado.Rows[i].ItemArray[1].ToString();
                TheRank.Pontos = int.Parse(Resultado.Rows[i].ItemArray[2].ToString());
                TheRank.Nome = Resultado.Rows[i].ItemArray[3].ToString();
                TheRank.Facebook_id = Resultado.Rows[i].ItemArray[4].ToString();
                LstRanking.Add(TheRank);
            }
            return LstRanking;
        }
        public REP_RANKING GetRankBy(String ID_Usuario)
        {
            DataTable Resultado = DAO.GetRankBy(ID_Usuario);
            if (Resultado.Rows.Count > 0)
            {
                REP_RANKING TheRank = new REP_RANKING();
                TheRank.Posicao = int.Parse(Resultado.Rows[0].ItemArray[0].ToString());
                TheRank.Id_usuario = Resultado.Rows[0].ItemArray[1].ToString();
                TheRank.Pontos = int.Parse(Resultado.Rows[0].ItemArray[2].ToString());
                TheRank.Nome = Resultado.Rows[0].ItemArray[3].ToString();
                TheRank.Facebook_id = Resultado.Rows[0].ItemArray[4].ToString();
                return TheRank;
            }
            return null;
        }
        public void InsertRank(List<REP_RANKING> ListRankings)
        {
            String Insert = String.Empty;

            foreach (REP_RANKING Item in ListRankings)
            {
                Insert += String.Format("INSERT INTO TB_RANKING VALUES ({0},{1},{2});" + Environment.NewLine, Item.Posicao, Item.Id_usuario, Item.Pontos);
            }
            DAO.InsertRank(Insert);
        }

        public List<REP_RANKING> GetRankByIdFacebook(List<string> Ids_Instalados)
        {
            DataTable Resultado = DAO.GetRankByIDFacebook(Ids_Instalados);
            List<REP_RANKING> LstRanking = new List<REP_RANKING>();
            for (int i = 0; i < Resultado.Rows.Count; i++)
            {
                REP_RANKING TheRank = new REP_RANKING();
                TheRank.Posicao = int.Parse(Resultado.Rows[i].ItemArray[0].ToString());
                TheRank.Id_usuario = Resultado.Rows[i].ItemArray[1].ToString();
                TheRank.Pontos = int.Parse(Resultado.Rows[i].ItemArray[2].ToString());
                TheRank.Nome = Resultado.Rows[i].ItemArray[3].ToString();
                TheRank.Facebook_id = Resultado.Rows[i].ItemArray[4].ToString();
                LstRanking.Add(TheRank);
            }
            return LstRanking;
        }
    }
}
