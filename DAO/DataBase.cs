using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Npgsql;

namespace DAO
{
    public class DataBase
    {
        public SqlConnection priv_sql_Connection;
        public NpgsqlConnection priv_pg_Connection;
        public string Retorno;


        public DataBase(string ip, string user, string pass, string nomeBase)
        {
            SetSQLConnection(ip, nomeBase, user, pass);
        }
        public DataBase()
        {
            SetSQLConnection();
        }
        public string SetNonQueryResultbyReader(string strcommand)
        {
            string valoridCod = "";
            try
            {
                SqlCommand sqlCommand = new SqlCommand(strcommand, priv_sql_Connection);
                SqlDataReader reader = sqlCommand.ExecuteReader();

                while (reader.Read())
                {

                    valoridCod = reader[0].ToString();

                }
                reader.Close();


                return valoridCod;

            }
            catch (SqlException erro)
            {

                return erro.Message.ToString();
            }
        }
        public string InsertImage(string strcommand, byte[] image)
        {
            try
            {
                SqlParameter picparameter = new SqlParameter();
                picparameter.SqlDbType = SqlDbType.Image;
                picparameter.ParameterName = "pic";
                picparameter.Value = image;

                SqlCommand sqlCommand = new SqlCommand(strcommand, priv_sql_Connection);
                sqlCommand.Parameters.Add(picparameter);
                sqlCommand.ExecuteNonQuery();

                return "Sucesso";
            }
            catch (Exception a)
            {

                return "Erro";

            }
        }
        public string[] SetNonQuerywithReturn(string strcommand)
        {
            string[] retornos = null;
            try
            {

                SqlCommand sqlCommand = new SqlCommand(strcommand, priv_sql_Connection);
                SqlDataReader reader = sqlCommand.ExecuteReader();


                if (reader.Read())
                {
                    retornos = new string[reader.FieldCount];

                    for (int i = 0; i < reader.FieldCount; i++)
                    {
                        retornos[i] = reader[i].ToString();
                    }


                }
                return retornos;
            }
            catch (SqlException erro)
            {

                return retornos;
            }
        }
        public string SetNonQuery(string strcommand)
        {
            try
            {
                if (priv_pg_Connection.State != ConnectionState.Open)
                    priv_pg_Connection.Open();

                Npgsql.NpgsqlCommand sqlCommand = new Npgsql.NpgsqlCommand(strcommand, priv_pg_Connection);
                sqlCommand.ExecuteNonQuery();

                if (priv_pg_Connection.State == ConnectionState.Open)
                    priv_pg_Connection.Close();

                return "Sucesso";

            }
            catch (SqlException erro)
            {
                return "erro";
               // throw erro;
            }
        }
        public DataTable SetQuery(string strcommand)
        {
            DataTable tblTMP = new DataTable();
            try
            {
                if (priv_pg_Connection.State != ConnectionState.Open)
                    priv_pg_Connection.Open();

                Npgsql.NpgsqlDataAdapter setSelect = new Npgsql.NpgsqlDataAdapter(strcommand, priv_pg_Connection);
                setSelect.Fill(tblTMP);

                if (priv_pg_Connection.State == ConnectionState.Open)
                    priv_pg_Connection.Close();

                return tblTMP;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        private DataTable LoadXML(string path)
        {
            try
            {
                DataTable tmp = new DataTable("CONFIG");

                tmp.ReadXml(path);
                return tmp;

            }
            catch
            {
                return null;
            }
        }
        public bool SetSQLConnection(string Conex)
        {
            try
            {
                string sConexao = Conex;
                priv_sql_Connection = new SqlConnection(sConexao);
                priv_sql_Connection.Open();
                return true;

            }
            catch (Exception erro)
            {
                Retorno = erro.ToString();
                return false;
            }
        }
        public bool SetSQLConnection(string strServer, string strDataBase, string strUser, string strPwd)
        {
            try
            {
                string sConexao = "Data Source = " + strServer + ";Initial Catalog=" + strDataBase + ";Persist Security Info=True;User ID=" + strUser + ";Password=" + strPwd + ";";
                priv_sql_Connection = new SqlConnection(sConexao);
                priv_sql_Connection.Open();
                return true;

            }
            catch (Exception erro)
            {
                return false;
            }
        }
        public bool SetSQLConnection()
        {
            try
            {
                string sConexao = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                priv_pg_Connection = new NpgsqlConnection(sConexao);
                return true;

            }
            catch (Exception erro)
            {
                throw erro;
            }
        }

    }
}

