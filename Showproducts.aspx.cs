using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Productbooking : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["username"] == null)
        //    Response.Redirect("~/Customerlogin.aspx");
        if (!IsPostBack)
            fillcategory();
    }
    protected void fillcategory()
    {
        cn = new
            SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string sql = "select distinct category from product";
        cmd = new SqlCommand(sql, cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        ddl_cat.Items.Add("-Select-");
        while (dr.Read())
        {
            ddl_cat.Items.Add(dr[0].ToString());
        }
        cn.Close();
    }

    protected void ddl_cat_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillgrid();
    }
    protected void fillgrid()
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string sql = "select * from Product where category=@cat";
        cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@cat", ddl_cat.SelectedItem.ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        dlproduct.DataSource = dt;
        dlproduct.DataBind();
    }

    protected void dlproduct_ItemCommand(object source, DataListCommandEventArgs e)
    {
      //  if (Session["username"] == null)
            Response.Write("<script>alert('Please Register and Login to add to cart')</script>");
        //dlproduct.SelectedIndex = e.Item.ItemIndex;
        //if (e.CommandName == "select")
        //{
        //    if (checkincart() == true)
        //    {
        //        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        //        string sql = "insert into product_cart(username,pid,pname,qty,price_unit,total_price,dateofadd,imageurl)values(@uname,@pid,@pname,@qty,@price_unit,@total_price,@doa,@imageurl)";
        //        cmd = new SqlCommand(sql, cn);
        //        cmd.Parameters.AddWithValue("@uname", Session["username"].ToString());
        //        cmd.Parameters.AddWithValue("@pid", ((Label)dlproduct.SelectedItem.FindControl("lblpid")).Text);
        //        cmd.Parameters.AddWithValue("@pname", ((Label)dlproduct.SelectedItem.FindControl("lblname")).Text);
        //        //Get the quantity from textbox of quantity
        //        int q = Convert.ToInt32(((TextBox)dlproduct.SelectedItem.FindControl("txtqty")).Text);
        //        cmd.Parameters.AddWithValue("@qty", q);
        //        //Get the price per unit of product
        //        int p = Convert.ToInt32(((Label)dlproduct.SelectedItem.FindControl("lblamt")).Text);
        //        cmd.Parameters.AddWithValue("@price_unit", p);
        //        //calculate total of the product
        //        int t = p * q;
        //        cmd.Parameters.AddWithValue("@total_price", t);
        //        cmd.Parameters.AddWithValue("@doa", DateTime.Now);
        //        Image img = (Image)dlproduct.SelectedItem.FindControl("Image1");
        //        cmd.Parameters.AddWithValue("@imageurl", img.ImageUrl);
        //        cn.Open();
        //        cmd.ExecuteNonQuery();
        //        cn.Close();
        //        Response.Write("<script>alert('Product added into cart successfully')</script>");
        //    }
        //    else
        //        Response.Write("<script>alert('Product already present in cart')</script>");
        //}
    }
    protected bool checkincart()
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
        string sql = "select * from product_cart where pid=@pid and username=@uname";
        cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@pid", ((Label)dlproduct.SelectedItem.FindControl("lblpid")).Text);
        cmd.Parameters.AddWithValue("@uname", Session["username"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count <= 0)
            return true;
        else
            return false;

    }
}
