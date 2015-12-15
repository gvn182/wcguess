using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TimeDAO
    {
        DataBase DB_ACESS = new DataBase();
        public DataTable GetAllTeams()
        {
            string select = "Select * from TB_TIME;";
            return DB_ACESS.SetQuery(select);
        }

    }
}
