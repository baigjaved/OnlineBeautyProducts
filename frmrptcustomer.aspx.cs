using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.Reporting.WebForms;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class frmrptcustomer : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testdb"].ToString());
            string sql = "select * from customer";
            cmd = new SqlCommand(sql, cn);
            dscustomer dsemp = new dscustomer();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dsemp, "DataTable1");
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/rptcustomer.rdlc");
            ReportDataSource rds = new ReportDataSource("dscustomer", dsemp.Tables[0]);
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(rds);
        }
    }
}