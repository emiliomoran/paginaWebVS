using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;

namespace PaginaFinal
{
    public class ManejoSql
    {
        private SqlConnection conectar;
        private SqlCommand comando;
        private SqlDataAdapter adaptador;        

        private void inicia()
        {
            try
            {
                conectar = new SqlConnection();
                //conectar.ConnectionString = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=dbcooperativa;Data Source=MOISES-PC\\SQLEXPRESS";
                conectar.ConnectionString = "workstation id=CooperativaDB.mssql.somee.com;packet size=4096;user id=momo95_SQLLogin_1;pwd=ylhez571be;data source=CooperativaDB.mssql.somee.com;persist security info=False;initial catalog=CooperativaDB";
                conectar.Open();
            }
            catch
            {

            }
        }

        public bool guardardatos(string nombre, string apellido, int edad, string telf, string email, string usuario, string pass)
        {
            inicia();
            try
            {
                comando = new SqlCommand("guardardatos", conectar);
                comando.CommandType = CommandType.StoredProcedure;
                SqlParameter prm1 = new SqlParameter("@nombre", nombre);
                SqlParameter prm2 = new SqlParameter("@apellido", apellido);
                SqlParameter prm3 = new SqlParameter("@edad", edad);
                SqlParameter prm4 = new SqlParameter("@telf", telf);
                SqlParameter prm5 = new SqlParameter("@usuario", usuario);
                SqlParameter prm6 = new SqlParameter("@pass", pass);
                SqlParameter prm7 = new SqlParameter("@email", email);
                comando.Parameters.Add(prm1);
                comando.Parameters.Add(prm2);
                comando.Parameters.Add(prm3);
                comando.Parameters.Add(prm4);
                comando.Parameters.Add(prm5);
                comando.Parameters.Add(prm6);
                comando.Parameters.Add(prm7);
                comando.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;

            }
        }

        public EntUsuario Login(String usuario, String password)
        {
            EntUsuario obj = null;
            SqlDataReader dr = null;
            inicia();            
            try
            {                
                comando=new SqlCommand("VerificarUsuario", conectar);                                
                comando.Parameters.AddWithValue("@usuario", usuario);
                comando.Parameters.AddWithValue("@pass", password);
                comando.CommandType = CommandType.StoredProcedure;                
                dr = comando.ExecuteReader();
                obj = new EntUsuario();
                dr.Read();                                
                obj.idUsuario = Convert.ToInt32(dr["id_user"].ToString());
                obj.Nombre = dr["nombre"].ToString();
                obj.Apellido = dr["apellido"].ToString();
                obj.Edad = Convert.ToInt32(dr["edad"].ToString());
                obj.Telf = dr["telf"].ToString();
                obj.Password = dr["pass"].ToString();
                obj.Usuario = dr["usuario"].ToString();
                obj.Email = dr["email"].ToString();
            }
            catch (Exception e)
            {
                obj = null;                
            }
            finally
            {
                comando.Connection.Close();
            }
            return obj;
        }
    }
}