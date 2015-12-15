using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class BonusDAO
    {
        DataBase DB_ACESS = new DataBase();
        public void AdicionaBonus(string usuario_id, string facebook_to)
        {
            String insert = String.Format("insert into tb_bonus values ({0},'{1}');", usuario_id, facebook_to);
            DB_ACESS.SetNonQuery(insert);
        }


        public DataTable GetBonus(string usuario_id)
        {
            string select = "select count(*) from tb_bonus where id_usuario=" + usuario_id;
            return DB_ACESS.SetQuery(select);
        }

        public DataTable GetAllBonus()
        {
            string select = "select id_usuario, count(*) from tb_bonus group by id_usuario";
            return DB_ACESS.SetQuery(select);
        }
    }
}
