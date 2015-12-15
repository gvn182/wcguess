using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using BLL;
using System.Data;

namespace BLO
{

    public class UsuarioBLO
    {
        UsuarioDAO DAO_User = new UsuarioDAO();
        public int GetUserID(string email, string senha)
        {
            return DAO_User.CheckIfExists(email, senha);
        }
        public int GetUserID(string facebook_id)
        {
            return DAO_User.CheckIfExistsFacebook(facebook_id);
        }
        public int CadastraUsuario(string nome, string sobrenome, string sexo, string nascimento, string pais, string email, string senha, string facebook_id, int mobile)
        {
            if (facebook_id != String.Empty)
            {
                int ID_Usuario = DAO_User.CheckIfExistsFacebook(facebook_id);
                if (ID_Usuario == -1)
                {
                    int LastID = DAO_User.GetLastID();
                    DAO_User.AddNewUsuario(LastID + 1, nome, sobrenome, sexo, nascimento, pais, email, facebook_id, facebook_id, mobile);
                    return LastID + 1;
                }
                else return ID_Usuario;
            }
            else
            {
                int ID_Usuario = DAO_User.CheckIfExists(email, senha);
                if (ID_Usuario == -1)
                {
                    int LastID = DAO_User.GetLastID();
                    DAO_User.AddNewUsuario(LastID + 1, nome, sobrenome, sexo, nascimento, pais, email, senha, String.Empty, mobile);
                    return LastID + 1;
                }
                else return ID_Usuario;
            }

        }

        public REP_USUARIO GetUsuarioBy(string ID_Usuario)
        {
            DataTable Usuario = DAO_User.GetUserBy(ID_Usuario);
            if (Usuario.Rows.Count > 0)
            {
                REP_USUARIO The_User = new REP_USUARIO();
                The_User.ID = Convert.ToInt32(Usuario.Rows[0].ItemArray[0].ToString());
                The_User.Nome = Usuario.Rows[0].ItemArray[1].ToString();
                The_User.Sobrenome = Usuario.Rows[0].ItemArray[2].ToString();
                The_User.Sexo = Usuario.Rows[0].ItemArray[3].ToString();
                The_User.Nascimento = Usuario.Rows[0].ItemArray[4].ToString();
                The_User.Pais = Usuario.Rows[0].ItemArray[5].ToString();
                The_User.Email = Usuario.Rows[0].ItemArray[6].ToString();
                The_User.Senha = Usuario.Rows[0].ItemArray[7].ToString();
                The_User.facebook_id = Usuario.Rows[0].ItemArray[8].ToString();
                The_User.mobile = int.Parse(Usuario.Rows[0].ItemArray[9].ToString());
                return The_User;
            }
            return null;
        }
    }
}
