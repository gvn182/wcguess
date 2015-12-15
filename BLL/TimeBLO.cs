using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAO;

namespace BLL
{
    public class TimeBLO
    {
        TimeDAO DAO_TIME = new TimeDAO();
        public List<REP_TEAM> GetAllTeams()
        {
            DataTable Query = DAO_TIME.GetAllTeams();
            List<REP_TEAM> Result = new List<REP_TEAM>();
            for (int i = 0; i < Query.Rows.Count; i++)
            {
                Result.Add(new REP_TEAM() { ID = int.Parse(Query.Rows[i].ItemArray[0].ToString()), Nome = Query.Rows[i].ItemArray[1].ToString() });
            }
            return Result;
        }
    }
}
