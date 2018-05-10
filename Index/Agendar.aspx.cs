using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Index
{
    public partial class Agendar : System.Web.UI.Page
    {
        String nombre;
        String email;
        String tel;
        String sexo;
        String horario;
        String tratamiento;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            tratamiento = this.Request.Form["nombre"];
            nombre = txtNombre.Text;
            email = txtEmail.Text;
            tel = txtTelefono.Text;
            sexo = this.Request.Form["sexo"];
            horario = this.Request.Form["horario"];

            SqlConnection Conn;
            String OrdenSQL;
            Conn = new SqlConnection();
            //Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\juandedios\\Documents\\ProyectoMantraSpa\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";
            Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\o\\Documents\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";
            try
            {
                Conn.Open();
                OrdenSQL = String.Format("INSERT INTO citas(nombre,email,telefono,sexo,horario,tratamiento) VALUES('{0}','{1}','{2}','{3}','{4}','{5}')",nombre,email,tel,sexo,horario,tratamiento);

                SqlCommand cmd = new SqlCommand(OrdenSQL, Conn);
                cmd.ExecuteNonQuery();

                lblRespuesta.Text = "Se ingresó registro";
                Conn.Close();
            }
            catch (Exception ex)
            {
                lblRespuesta.Text = "Error " + ex;
            }
        }
    }
}