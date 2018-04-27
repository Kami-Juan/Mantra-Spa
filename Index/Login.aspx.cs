using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Index
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            lblError.Text = "";
            if (this.Session["Error"] != null)
            {
                lblError.Text = Convert.ToString(this.Session["Error"]);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "MantraSpa" && txtPassword.Text == "123")
            {
                HttpCookie ck = new HttpCookie("username", txtUsername.Text);
                ck.Expires = DateTime.Now.AddMinutes(60*24*365);
                this.Response.Cookies.Add(ck);

                this.Session["Error"] = null;
                this.Response.Redirect("TratamientosAdmin.aspx");
            }
            else if(txtUsername.Text != "MantraSpa")
            {
                this.Session["Error"] = "El usuario "+ txtUsername.Text + " no exite, por favor escribir otro";
                this.Response.Redirect(Request.RawUrl);
            }
            else if (txtPassword.Text != "123")
            {
                this.Session["Error"] = "La contraseña no corresponde con el usuario";
                this.Response.Redirect(Request.RawUrl);
            }
        }
    }
}