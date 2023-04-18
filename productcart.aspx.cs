using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class productcart : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("Customerlogin.aspx");
        if (!IsPostBack)
        {
            filldatagrid();
            totalprice();
        }
    }
    protected void totalprice()
    {
        double total = 0;
        double price_unit, qty, price;
        foreach (GridViewRow gvr in gvcart.Rows)
        {
            Label tb = (Label)gvr.Cells[3].FindControl("Label4");
            Label tb1 = (Label)gvr.Cells[2].FindControl("Label3");
            double.TryParse(tb.Text.Trim(), out price_unit);
            double.TryParse(tb1.Text.Trim(), out qty);
            price = price_unit * qty;
            total = total + price;
        }
        lblamt.Text = total.ToString();
    }
   

    protected void filldatagrid()
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ToString());
        string sql = "select * from product_cart where username=@uname";
        cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@uname", Session["username"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        gvcart.DataSource = dt;
        gvcart.DataBind();
        if (gvcart.Rows.Count <= 0)
            Response.Write("</script>('No Records to show')</script>");
    }
    
    protected void gvcart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvcart.EditIndex = e.NewEditIndex;
        filldatagrid();
    }
    protected void gvcart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ToString());
        string sql = "delete from product_cart where pid=@pid and username=@uname";
        cmd = new SqlCommand(sql, cn);
        Label lbldeleteID = (Label)gvcart.Rows[e.RowIndex].FindControl("Label1");
        cmd.Parameters.AddWithValue("@pid", lbldeleteID.Text);
        cmd.Parameters.AddWithValue("@uname",Session["username"].ToString());
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        filldatagrid();
        totalprice();

    }
    protected void gvcart_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ToString());
        string sql = "select max(bid)+1 from booking_master";
        cmd = new SqlCommand(sql, cn);
        cn.Open();
        Object obj = cmd.ExecuteScalar();
        if (obj == DBNull.Value)
            obj = 1;
        int bid = Convert.ToInt32(obj);
        cn.Close();

        sql = "insert into booking_master values(@bno,@uname,@totalamt,@dob)";
        cmd = new SqlCommand(sql, cn);

        cmd.Parameters.AddWithValue("@bno", bid);
        cmd.Parameters.AddWithValue("@uname", Session["username"].ToString());
        cmd.Parameters.AddWithValue("@totalamt", lblamt.Text);
        cmd.Parameters.AddWithValue("@dob", DateTime.Now);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();

        sql = "select * from product_cart where username=@uname";
        cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@uname", Session["username"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        for (int k=0;k < dt.Rows.Count;k++)
        {
            sql = "insert into Booking_Details values (@bid,@pid,@pname,@qty,@price_unit,@total_price)";
            cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@bid", bid);
            cmd.Parameters.AddWithValue("@pid", dt.Rows[k][1]);
            cmd.Parameters.AddWithValue("@pname", dt.Rows[k][2]);
            cmd.Parameters.AddWithValue("@qty", dt.Rows[k][3]);
            cmd.Parameters.AddWithValue("@price_unit", dt.Rows[k][4]);
            cmd.Parameters.AddWithValue("@total_price", dt.Rows[k][5]);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        sql = "delete from product_cart where username=@uname";
        cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@uname", Session["username"].ToString());
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["bid"] = bid;
        Session["amount"] = lblamt.Text;
        Response.Redirect("Successfull.aspx");

    }
    protected void gvcart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ToString());
        string sql = "update product_cart set qty=@qty,total_price=@total_price where pid=@pid and username=@uname";
        cmd = new SqlCommand(sql, cn);
        TextBox txtqty = (TextBox)gvcart.Rows[e.RowIndex].FindControl("TextBox3");
        cmd.Parameters.AddWithValue("@qty", txtqty.Text);
        TextBox txtprice_unit = (TextBox)gvcart.Rows[e.RowIndex].FindControl("TextBox4");
        int total_price = Convert.ToInt32(txtqty.Text) * Convert.ToInt32(txtprice_unit.Text);
        cmd.Parameters.AddWithValue("@total_price", total_price);
        TextBox txtID = (TextBox)gvcart.Rows[e.RowIndex].FindControl("TextBox1");
        cmd.Parameters.AddWithValue("@pid", txtID.Text);
        cmd.Parameters.AddWithValue("@uname", Session["username"].ToString());
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        gvcart.EditIndex = -1;
        filldatagrid();
        totalprice();
    }
    protected void gvcart_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
