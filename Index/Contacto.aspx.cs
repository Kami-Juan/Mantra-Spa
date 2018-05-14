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
    public partial class Contacto : System.Web.UI.Page
    {
        String nombre;
        String email;
        String tel;
        String msj;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnContactar_Click(object sender, EventArgs e)
        {
            //this.Response.Redirect("Informacion.aspx?nombre="+ this.ViewState["nombre"]+"&email="+this.ViewState["email"]+"&telefono="+this.ViewState["tel"]+"&mensaje="+ this.ViewState["msg"]);
            SqlConnection Conn;
            String OrdenSQL;
            Conn = new SqlConnection();
            //Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\juandedios\\Documents\\ProyectoMantraSpa\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";
            Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\o\\Documents\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";
            try
            {
                Conn.Open();
                OrdenSQL = String.Format("INSERT INTO contacto(nombre,correo,telefono,sexo,mensaje) VALUES('{0}','{1}','{2}','{3}','{4}')", this.ViewState["nombre"], this.ViewState["email"], this.ViewState["tel"],"masculino", this.ViewState["msg"]);

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

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["nombre"] = txtNombre.Text;
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["email"] = txtEmail.Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           this.ViewState["tel"] = TextBox1.Text;
        }

        protected void txtMensaje_TextChanged(object sender, EventArgs e)
        {
            this.ViewState["msg"] = txtMensaje.Text;
        }
    }
}