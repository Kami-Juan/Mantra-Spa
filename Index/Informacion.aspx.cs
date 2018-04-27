using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Index
{
    public partial class Información : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblEmail.Text = Convert.ToString(this.Request.QueryString["email"]);
            lblMensaje.Text = Convert.ToString(this.Request.QueryString["mensaje"]);
            lblNombre.Text = Convert.ToString(this.Request.QueryString["nombre"]);
            lblTel.Text = Convert.ToString(this.Request.QueryString["telefono"]);

        }
    }
}