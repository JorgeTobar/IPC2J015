using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Reporting;
using CrystalDecisions.Web;
using CrystalDecisions.Shared;

public partial class Factura : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ReportDocument reporte = new ReportDocument();
        reporte.Load(@"C:\Users\Jorge\Documents\Visual Studio 2013\WebSites\Quetzal\Factura.rpt");

        ExportFormatType tipo = ExportFormatType.PortableDocFormat;
        reporte.ExportToDisk(tipo, @"C:\Users\Jorge\Factura.pdf");
    }
}