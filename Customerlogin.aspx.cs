using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class Default2 : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["username"] == null)
       // {
           // Response.Redirect("adminlogin.aspx");
        //}
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "select name,password from customer where uname=@u and password=@p";
            cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@u", txtuname.Text);
            cmd.Parameters.AddWithValue("@p", txtpassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
                Session["username"] = dt.Rows[0][0].ToString();
                Response.Redirect("customerloggedin.aspx");
                //lblmessage.Text = "login successful "+Session["cust_name"];
                
            }
            else
            {
                lblmessage.Text = "login unsuccessful";

            }
        }
        catch(Exception ex)
        {
            lblmessage.Text = ex.Message;
        }

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {

    }
}

    
    
