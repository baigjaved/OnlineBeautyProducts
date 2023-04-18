using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class addproductA : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
       
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcategory.SelectedIndex == 1)
        {
            ddlproduct.Items.Clear();
            ddlproduct.Items.Add("Compact");
            ddlproduct.Items.Add("Foundation");
            ddlproduct.Items.Add("Primer");
            ddlproduct.Items.Add("Blushes");

        }
        else if (ddlcategory.SelectedIndex == 2)
        {
            ddlproduct.Items.Clear();
            ddlproduct.Items.Add("Lipstick");
            ddlproduct.Items.Add("Lip Gloss");
            ddlproduct.Items.Add("Lip Liner");
            ddlproduct.Items.Add("Lip Tints");

        }

        else if (ddlcategory.SelectedIndex == 3)
        {
            ddlproduct.Items.Clear();
            ddlproduct.Items.Add("Eye Shadow");
            ddlproduct.Items.Add("Shimmer");
            ddlproduct.Items.Add("Eye Liner");
            ddlproduct.Items.Add("Mascara");

        }

        else if (ddlcategory.SelectedIndex == 4)
        {
            ddlproduct.Items.Clear();
            ddlproduct.Items.Add("Serums");
            ddlproduct.Items.Add("Shampoos");
            ddlproduct.Items.Add("Conditioners");
            ddlproduct.Items.Add("Hair Colour");

        }

        else if (ddlcategory.SelectedIndex == 5)
        {
            ddlproduct.Items.Clear();
            ddlproduct.Items.Add("Moisturizers");
            ddlproduct.Items.Add("Body Creams");
            ddlproduct.Items.Add("Body Scrubs");
            ddlproduct.Items.Add("Body Washes");

        }

        else if (ddlcategory.SelectedIndex == 6)
        {
            ddlproduct.Items.Clear();
            ddlproduct.Items.Add("Deodorants");
            ddlproduct.Items.Add("Perfumes");


        }



    }
    protected void ddlproduct_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlshade_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/Images/") + FileUpload1.FileName);
            Image1.ImageUrl = "/Images/" + FileUpload1.FileName;
        }
        else
        {
            lblmsg.Text = "Please select image";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void btn_ok_Click(object sender, EventArgs e)
    {
        try
        {
            cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "insert into product(category,product_name,price,quantity,shade,description,image_url)values(@category,@product_name,@price,@quantity,@shade,@description,@image_url)";
            cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@category", ddlcategory.Text);
            cmd.Parameters.AddWithValue("@product_name", ddlproduct.Text);
            cmd.Parameters.AddWithValue("@price", txtprice.Text);
            cmd.Parameters.AddWithValue("@quantity", txtquantity.Text);
            cmd.Parameters.AddWithValue("@shade", ddlshade.Text);
            cmd.Parameters.AddWithValue("@description", txtdescription.Text);
            cmd.Parameters.AddWithValue("@image_url", Image1.ImageUrl);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            lblmsg.Text = "Record Saved";
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}