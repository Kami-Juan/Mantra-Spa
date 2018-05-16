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
    public partial class Agregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (this.Request.Cookies["username"] == null)
            {
                this.Response.Redirect("Login.aspx");
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {

            String nombre = this.Request.Form["txtNombre"];
            String descripcion = this.Request.Form["txtDescripcion"];
            String tipo = this.Request.Form["tipo"];
            String presion = this.Request.Form["presion"];
            String precio = txtPrecio.Text;

            SqlConnection Conn;
            String OrdenSQL;
            Conn = new SqlConnection();

            //NUEVO
            SqlDataAdapter adp = null;
            //NUEVO
            DataSet ds;
            // Conn.ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\MEDINA\\Documents\\Visual Studio 2017\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";
            Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\juandedios\\Documents\\ProyectoMantraSpa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";
            try
            {
                Conn.Open();
                OrdenSQL = String.Format("SELECT * FROM tratamientos");
                //NUEVO
                ds = new DataSet();
                //NUEVO
                adp = new SqlDataAdapter(OrdenSQL, Conn);
                adp.Fill(ds, "CopiaTabla");

                DataRow dr;
                //AGREGAMOS FILA AL ARREGLO
                dr = ds.Tables["CopiaTabla"].NewRow();
                //Agregamos info a la fila
                //tipo,nombre,descripcion,presion,duracion,precio
                dr["tipo"] = tipo;
                dr["nombre"] = nombre;
                dr["descripcion"] = descripcion;
                dr["presion"] = precio;
                dr["duracion"] = 10;
                dr["precio"] = precio;
                ds.Tables["CopiaTabla"].Rows.Add(dr);
                lblRespuesta.Text = "Se ingresó registro";

                //Ahora se actuliza una vez
                SqlCommandBuilder cb;
                cb = new SqlCommandBuilder(adp);
                adp.Update(ds.Tables["CopiaTabla"]);
                Conn.Close();
            }
            catch (Exception ex)
            {
                lblRespuesta.Text = "Error " + ex;
            }
        }

        //protected void btnEnviar_Click(object sender, EventArgs e)
        //{

        //    String nombre = this.Request.Form["txtNombre"];
        //    String descripcion = this.Request.Form["txtDescripcion"]; 
        //    String tipo = this.Request.Form["tipo"];
        //    //String zonas = this.Request.Form["zonas"];
        //    String presion = this.Request.Form["presion"];
        //    // String tratamiento = this.Request.Form["txtTratamiento"]; 
        //    String precio = txtPrecio.Text;



        //    SqlConnection Conn;
        //    String OrdenSQL;
        //    Conn = new SqlConnection();
        //    //Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\juandedios\\Documents\\ProyectoMantraSpa\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";
        //    // Conn.ConnectionString = ("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\JoséLuis\\Documents\\Visual Studio 2015\\Projects\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30");
        //    Conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\juandedios\\Documents\\ProyectoMantraSpa\\spabd.mdf;Integrated Security=True;Connect Timeout=30";

        //    try
        //    {
        //        Conn.Open();
        //        OrdenSQL = String.Format("INSERT INTO tratamientos(tipo,nombre,descripcion,presion,duracion,precio) VALUES('{0}','{1}','{2}','{3}',{4},{5})", tipo, nombre, descripcion, presion, 10, precio);

        //        SqlCommand cmd = new SqlCommand(OrdenSQL, Conn);
        //        cmd.ExecuteNonQuery();

        //        lblRespuesta.Text = "Se ingresó registro";
        //        Conn.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        lblRespuesta.Text = "Error " + ex;
        //    }
        //}
    }

}