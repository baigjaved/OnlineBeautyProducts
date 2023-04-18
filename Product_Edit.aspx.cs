using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Product_Edit : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
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
        Gvproduct.DataSource = dt;
        Gvproduct.DataBind();
        if (Gvproduct.Rows.Count <= 0)
            Response.Write("<script>alert('No records in table')</script>");
    }
    

    protected void Gvproduct_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Gvproduct_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    if(e.CommandName=="select")
    {
        int i = Convert.ToInt32(e.CommandArgument);
        txtproid.Text = Gvproduct.Rows[i].Cells[0].Text;
        txtproductname.Text = Gvproduct.Rows[i].Cells[1].Text;
        txtquantity.Text = Gvproduct.Rows[i].Cells[4].Text;
        txtprice.Text = Gvproduct.Rows[i].Cells[3].Text;
        Image img = (Image)Gvproduct.Rows[i].Cells[7].Controls[0];
        ImageButton1.ImageUrl = img.ImageUrl;
    }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            cn = new
            SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "update product set product_name=@n,price=@p,quantity=@q,image_url=@img where product_id=@pid";
            cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@n", txtproductname.Text);
            cmd.Parameters.AddWithValue("@p", txtprice.Text);
            cmd.Parameters.AddWithValue("@q", txtquantity.Text);
            cmd.Parameters.AddWithValue("@pid",txtproid.Text);
            cmd.Parameters.AddWithValue("@img",ImageButton1.ImageUrl);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            lblmsg.Text = "Record updated";
            fillgrid();
            //clear the textboxes is needed

        }
        catch(Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/Images/") + FileUpload1.FileName);
            ImageButton1.ImageUrl = "/Images/" + FileUpload1.FileName;
        }
        else
        {
            lblmsg.Text = "Please Select File";
        }
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            cn=new
            SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "Delete From Product Where product_id=@pid";
            cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@pid", txtproid.Text);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            lblmsg.Text = "RECORD DELETED";
            fillgrid();
            //Clear the textboxes is needed
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}