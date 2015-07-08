using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("ClientePaquetes.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("Cotizacion.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("PerfilCliente.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
}