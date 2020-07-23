using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ProyectoSyden
{
    class ClsConecion
    {
        private SqlConnection sql;
        private DataTable dt;
        public ClsConecion()
        {
            this.sql = null;
            this.dt = null;
        }
        private string Conection()
        {
            dt = null;
            string mensaje = "";
            sql = new SqlConnection(@"server= server; database= dbname; user=sa; password = 123");
            try
            {
                sql.Open();
                mensaje = "Connection Completed";

            }
            catch (Exception e)
            {
                sql.Close();
                mensaje = "Error en " + e.ToString();
            }
            return mensaje;
        }
        private string Ejecutar(string qry)
        {
            string mensaje = "";
            if (sql == null)
            {
                Conection();
            }
            if (sql != null)
            {
                try
                {
                    SqlCommand comand = new SqlCommand(qry, sql);
                    comand.ExecuteNonQuery();
                    sql.Close();
                    mensaje = "Process executed successfully.";

                }
                catch (Exception e)
                {
                    sql.Close();
                    mensaje = "Error: " + e.ToString();
                }
            }
            return mensaje;
        }
        /// <summary>
        /// Fill (Llenado de la tabla dt)
        /// </summary>
        /// <param name="qry"></param>
        /// <returns></returns>
        private string Fill(string qry)
        {
            dt = null;
            string msj = "";
            if (sql != null)
            {
                msj = Conection();
            }
            try
            {
                Conection();
                dt = new DataTable();
                SqlCommand comand = new SqlCommand(qry, sql);
                SqlDataAdapter adap = new SqlDataAdapter(comand);
                adap.Fill(dt);
                sql.Close();
                msj = "Query executed successfully";
            }
            catch (Exception e)
            {
                sql.Close();
                msj = "The Query has not been executed by: " + e.ToString();
            }
            return msj;
        }

        /// <summary>
        /// Regreso de la tabla
        /// </summary>
        /// <returns></returns>
        private DataTable GetTable()
        {
            return dt;
        }
    }
}