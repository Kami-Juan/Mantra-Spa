using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tratamientos
{
    public partial class Tratamientos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mostrar();
        }

        public void mostrar() {
            SqlConnection Conn;
            String OrdenSQL;
            Conn = new SqlConnection();
            //Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\juandedios\\Documents\\ProyectoMantraSpa\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";
            Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\llito\\Documents\\Visual Studio 2015\\Projects\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";


            Conn.Open();
            //OrdenSQL = String.Format("SELECT * FROM tratamientos");
            SqlCommand cmd = Conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * from tratamientos";
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //GridView1.DataSource = dt;



            // SqlCommand cmd = new SqlCommand(OrdenSQL, Conn);
            //cmd.ExecuteNonQuery();

            //lblRespuesta.Text = "Se ingresó registro";
            Conn.Close();
        }
    }

    
}