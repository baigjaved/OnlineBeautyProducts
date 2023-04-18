using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Adminlogin : System.Web.UI.Page
{
   SqlCommand cmd;
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["admin"] == null)
        //{
        //    Response.Redirect("adminlogin.aspx");
        //}
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "select * from adminreg where username=@u and password=@p";
            cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@u", txtuname.Text);
            cmd.Parameters.AddWithValue("@p", txtpassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["admin"] = dt.Rows[0][0].ToString();
              //  lblmsg.Text = "login successful " + Session["admin_name"];
                Response.Redirect("adminloggedin.aspx");

            }
            else
            {
                lblmsg.Text = "login unsuccessful";

            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}
    
