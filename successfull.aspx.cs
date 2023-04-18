using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class successfull : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = DateTime.Now.AddDays(4).ToShortDateString();
        lblbid.Text = Session["bid"].ToString();
        lblamt.Text = Session["amount"].ToString();
    }
}