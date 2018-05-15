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
        private SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\llito\\Documents\\Visual Studio 2015\\Projects\\Mantra-Spa\\spabd.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind();
            }
        }
        protected void gvbind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from tratamientos", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            conn.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView6.DataSource = ds;
                GridView6.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView6.DataSource = ds;
                GridView6.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView6.Rows[0].Cells.Clear();
                GridView6.Rows[0].Cells.Add(new TableCell());
                GridView6.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView6.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
        protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView6.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete FROM tratamientos where id='" + Convert.ToInt32(GridView6.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            gvbind();
        }
        protected void GridView6_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView6.EditIndex = e.NewEditIndex;
            gvbind();
        }
        protected void GridView6_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int userid = Convert.ToInt32(GridView6.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridView6.Rows[e.RowIndex];
            Label lblID = (Label)row.FindControl("lblID");
            //TextBox txtname=(TextBox)gr.cell[].control[];  
            TextBox textName = (TextBox)row.Cells[1].Controls[0];
            TextBox textDes = (TextBox)row.Cells[2].Controls[0];
            TextBox textPresion = (TextBox)row.Cells[3].Controls[0];
            TextBox textDura = (TextBox)row.Cells[4].Controls[0];
            TextBox textPrecio = (TextBox)row.Cells[5].Controls[0];


            //TextBox textadd = (TextBox)row.FindControl("txtadd");  
            //TextBox textc = (TextBox)row.FindControl("txtc");  
            GridView6.EditIndex = -1;
            conn.Open();
            //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);  
            SqlCommand cmd = new SqlCommand("update tratamientos set nombre='" + textName.Text + "',descripcion='" + textDes.Text + "',presion='" + textPresion.Text + "',duracion='" + Convert.ToInt16(textDura.Text) + "',precio='" + Convert.ToDecimal(textPrecio.Text) + "'where id='" + userid + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            gvbind();
            //GridView1.DataBind();  
        }
        protected void GridView6_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView6.PageIndex = e.NewPageIndex;
            gvbind();
        }
        protected void GridView6_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView6.EditIndex = -1;
            gvbind();
        }
    }
}