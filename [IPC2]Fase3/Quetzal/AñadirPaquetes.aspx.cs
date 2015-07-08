using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AñadirPaquetes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Servicio serv = new Servicio();

        serv.guardarPaquete(Convert.ToInt32(TextBox1.Text),Convert.ToDouble(TextBox2.Text),TextBox3.Text,TextBox4.Text,TextBox5.Text,Convert.ToInt32(TextBox6.Text));
        
    }
}