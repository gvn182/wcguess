using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class UsuarioDAO
    {
        DataBase DB_ACESS = new DataBase();
        public int CheckIfExistsFacebook(string ID)
        {
            string select = "Select * from TB_USUARIO where FACEBOOK_ID ='" + ID + "';";
            DataTable Resultado = DB_ACESS.SetQuery(select);

            if (Resultado.Rows.Count > 0)
                return int.Parse(Resultado.Rows[0].ItemArray[0].ToString());

            return -1;
        }
        public int GetLastID()
        {
            string select = "Select count(*) from TB_USUARIO;";
            return int.Parse(DB_ACESS.SetQuery(select).Rows[0].ItemArray[0].ToString());
        }
        public int CheckIfExists(string Email, string Senha)
        {
            string select = String.Format("Select ID from TB_USUARIO where Email ='{0}';", Email);
            DataTable Resultado = DB_ACESS.SetQuery(select);
            if (Resultado.Rows.Count > 0)
            {
                select = String.Format("Select ID from TB_USUARIO where Email ='{0}' AND Senha = '{1}';", Email, Senha);
                Resultado = DB_ACESS.SetQuery(select);
                if (Resultado.Rows.Count > 0)
                {
                    return int.Parse(Resultado.Rows[0].ItemArray[0].ToString());
                }
                return -2;
            }

            return -1;
        }
        public bool AddNewUsuario(int ID, string Nome,string Sobrenome,string Sexo, string nascimento,string pais,string email,string senha,string facebook_id,int mobile)
        {
            string Insert = String.Format("Insert into TB_USUARIO values ({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}',{9});", ID, Nome, Sobrenome,Sexo,nascimento,pais,email,senha,facebook_id,mobile);
            return DB_ACESS.SetNonQuery(Insert) == "Sucesso" ? true : false;
        }

        public DataTable GetUserBy(string ID_Usuario)
        {
            string select = "SELECT * FROM TB_USUARIO WHERE ID = " + ID_Usuario + ";";
            return DB_ACESS.SetQuery(select);
        }
    }
}
