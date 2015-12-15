using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class RankDAO
    {
        DataBase DB = new DataBase();
        public void RemoveRank()
        {
            String delete = "delete from tb_ranking;";
            DB.SetNonQuery(delete);
        }
        public void InsertRank(String Insert)
        {
            DB.SetNonQuery(Insert);
        }

        public DataTable GetRankBy(string ID_Usuario)
        {
            string select = @"select A.posicao,A.id_usuario,A.pontos,B.nome,B.facebook_id from tb_ranking A
            join tb_usuario B on A.id_usuario = B.id
            where A.id_usuario ='" + ID_Usuario + "';";
            return DB.SetQuery(select);
        }

        public DataTable GetAllRanks()
        {
            string select = @"select A.posicao,A.id_usuario,A.pontos,B.nome,B.facebook_id from tb_ranking A
            join tb_usuario B on A.id_usuario = B.id order by A.posicao";
            return DB.SetQuery(select);
        }

        public DataTable GetRankByIDFacebook(List<string> Ids_Instalados)
        {
            string select = @"select A.posicao,A.id_usuario,A.pontos,B.nome,B.facebook_id from tb_ranking A
            join tb_usuario B on A.id_usuario = B.id
            where B.facebook_id in (";

            for (int i = 0; i < Ids_Instalados.Count; i++)
            {
                if (i == Ids_Instalados.Count - 1)
                {

                    select += "'" + Ids_Instalados[i] + "'";
                }
                else
                {
                    select += "'" + Ids_Instalados[i] + "',";
                }
            }
            select += ") order by A.posicao";

            return DB.SetQuery(select);
        }
    }
}
