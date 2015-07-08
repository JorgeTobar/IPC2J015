using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Director : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Contratar.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("VerEquipo.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("PerfIndividual.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Server.Transfer("Despedir.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Server.Transfer("AñadirPrecio.aspx");
    }
}