using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AñadirPre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("Empleado.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Paquete"] = TextBox1.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Servicio serv = new Servicio();
        serv.AgregarPrecio(Convert.ToDecimal(TextBox2.Text), Convert.ToInt32(TextBox1.Text));
        Server.Transfer("AñadirPre.aspx");
 
    }
}