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

public partial class Reportes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Server.Transfer("Administrador.aspx");
    }
    
    protected void Button4_Click(object sender, EventArgs e)
    {
        ReportDocument reporte = new ReportDocument();
        reporte.Load(@"C:\Users\Jorge\Documents\Visual Studio 2013\WebSites\Quetzal\Reporte5.rpt");

        ExportFormatType tipo = ExportFormatType.PortableDocFormat;
        reporte.ExportToDisk(tipo, @"C:\Users\Jorge\Top5.pdf");

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        ReportDocument reporte = new ReportDocument();
        reporte.Load(@"C:\Users\Jorge\Documents\Visual Studio 2013\WebSites\Quetzal\Reporte4.rpt");

        ExportFormatType tipo = ExportFormatType.PortableDocFormat;
        reporte.ExportToDisk(tipo, @"C:\Users\Jorge\EmpleadosDep.pdf");

    }
    protected void Button7_Click1(object sender, EventArgs e)
    {
        ReportDocument reporte = new ReportDocument();
        reporte.Load(@"C:\Users\Jorge\Documents\Visual Studio 2013\WebSites\Quetzal\Reporte3.rpt");

        ExportFormatType tipo = ExportFormatType.PortableDocFormat;
        reporte.ExportToDisk(tipo, @"C:\Users\Jorge\EmpleadosSuc.pdf");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ReportDocument reporte = new ReportDocument();
        reporte.Load(@"C:\Users\Jorge\Documents\Visual Studio 2013\WebSites\Quetzal\Reporte1.rpt");
       
        ExportFormatType tipo = ExportFormatType.PortableDocFormat;
        reporte.ExportToDisk(tipo, @"C:\Users\Jorge\Paquete.pdf");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ReportDocument reporte = new ReportDocument();
        reporte.Load(@"C:\Users\Jorge\Documents\Visual Studio 2013\WebSites\Quetzal\Reporte2.rpt");

        ExportFormatType tipo = ExportFormatType.PortableDocFormat;
        reporte.ExportToDisk(tipo, @"C:\Users\Jorge\PaqueteSuc.pdf");


    }
}