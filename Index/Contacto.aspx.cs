using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            this.Response.Redirect("Informacion.aspx?nombre="+ this.ViewState["nombre"]+"&email="+this.ViewState["email"]+"&telefono="+this.ViewState["tel"]+"&mensaje="+ this.ViewState["msg"]);
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