using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using System.Data;

namespace BLL
{

    public class BonusBLO
    {
        BonusDAO DAO = new BonusDAO();

        public void AdicionaBonus(string usuario_id, string facebook_to)
        {
            DAO.AdicionaBonus(usuario_id, facebook_to);
        }
        public int GetBonusBy(string usuario_id)
        {
            DataTable Result = DAO.GetBonus(usuario_id);
            return int.Parse(Result.Rows[0].ItemArray[0].ToString());
        }
        public List<REP_BONUS> GetAllBonus()
        {
            List<REP_BONUS> LstBonus = new List<REP_BONUS>();
            DataTable Result = DAO.GetAllBonus();

            for (int i = 0; i < Result.Rows.Count; i++)
            {
                REP_BONUS NewBonus = new REP_BONUS();
                NewBonus.ID = Result.Rows[i].ItemArray[0].ToString();
                NewBonus.Pontos = int.Parse(Result.Rows[i].ItemArray[1].ToString());
                LstBonus.Add(NewBonus);
            }
            return LstBonus;

        }
    }
}
