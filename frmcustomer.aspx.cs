using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class frmcustomer : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string sql = "insert into customer(name,address,city,uname,mobileno,password)  Values (@name,@address,@city,@uname,@mob,@passwd)";
        cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@uname", txtusername.Text);
        cmd.Parameters.AddWithValue("@mob", txtmobileno.Text);
        cmd.Parameters.AddWithValue("@passwd", txtpassword.Text);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        lblmsg.Text = "Record Saved Successfully";
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {

    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
        try
        {
            cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "select uname from customer where uname=@un";
            cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@un", txtusername.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0) 
            {
                lblmsg.Text = "Email is already present";
                btnsubmit.Enabled = false;
            }
            else
            {
                btnsubmit.Enabled = true;
                lblmsg.Text ="";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }
}