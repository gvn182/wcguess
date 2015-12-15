using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class JogoDAO
    {
        DataBase DB_ACESS = new DataBase();
        public bool AddNewJogos(String Insert)
        {
           
            bool QueryStatus = DB_ACESS.SetNonQuery(Insert) == "Sucesso" ? true : false;

            return QueryStatus;

        }

        public bool UpdateJogos(String Update)
        {
            bool QueryStatus = DB_ACESS.SetNonQuery(Update) == "Sucesso" ? true : false;
            return QueryStatus;
        }

        public DataTable TemDefinitivo(string ID_USUARIO)
        {
            string select = "Select * from TB_JOGO where ID_USUARIO ='" + ID_USUARIO + "' and tipo_gravacao = 1;";
            return DB_ACESS.SetQuery(select);

        }
        public DataTable TemJogo(string ID_USUARIO)
        {
            string select = "Select * from TB_JOGO where ID_USUARIO ='" + ID_USUARIO + "';";
            return DB_ACESS.SetQuery(select);

        }

        public DataTable GetAllJogos(string ID_USUARIO)
        {
            string select = "Select * from TB_JOGO where ID_USUARIO ='" + ID_USUARIO + "';";
            return DB_ACESS.SetQuery(select);
        }
        public DataTable GetAllJogosDefinitivos(string ID_USUARIO)
        {
            string select = "Select * from TB_JOGO where ID_USUARIO ='" + ID_USUARIO + "' and tipo_gravacao = 1 ;";
            return DB_ACESS.SetQuery(select);
        }

        public DataTable GetAllJogos()
        {
            string select = "Select * from TB_JOGO;";
            return DB_ACESS.SetQuery(select);
        }
        public DataTable GetAllJogosApostados()
        {
            string select = "Select * from TB_JOGO where tipo_gravacao = 1;";
            return DB_ACESS.SetQuery(select);
        }
        public DataTable TemResultado()
        {
            string select = "Select * from TB_RESULTADO;";
            return DB_ACESS.SetQuery(select);
        }

        public DataTable GetAllResultados()
        {
            string select = "Select * from TB_Resultado;";
            return DB_ACESS.SetQuery(select);
        }

        public void SetJogosDefinitivos(string ID_Usuario)
        {
            string update = "update tb_jogo set tipo_gravacao = 1 where id_usuario = " + ID_Usuario;
            DB_ACESS.SetNonQuery(update);
        }
    }
}
