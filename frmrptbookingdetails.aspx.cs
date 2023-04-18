using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.Reporting.WebForms;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class frmrptbookingdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ConnectionString);
            string sql = "select * from Booking_Details";
            SqlCommand cmd = new SqlCommand(sql, cn);
            dsproduct dsemp = new dsproduct();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dsemp, "DataTable1");
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/rptbookingdetails.rdlc");
            ReportDataSource rds = new ReportDataSource("dsbookingdetails", dsemp.Tables[0]);
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(rds);
        }
    }
}