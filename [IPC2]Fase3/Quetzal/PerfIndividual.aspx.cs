using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PerfIndividual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Director.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        List<string> b = new List<string>();
        Servicio ser = new Servicio();
        b = ser.Despedir(Convert.ToInt32( TextBox1.Text));
        TextBox2.Text = b[1];
        TextBox3.Text = b[0];
        TextBox4.Text = b[2];
        TextBox5.Text = b[3];
        TextBox6.Text = b[4];
    }
}