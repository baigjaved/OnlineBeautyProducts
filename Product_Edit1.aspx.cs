using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Product_Edit1 : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            fillgrid();
    }
    protected void fillgrid()
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string qry = "select * from product";
        cmd = new SqlCommand(qry, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        gvproduct.DataSource = dt;
        gvproduct.DataBind();
        if (gvproduct.Rows.Count <= 0)
            Response.Write("<script>alert('No records to show')</script>");
    }
    protected void gvproduct_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {

    }
}