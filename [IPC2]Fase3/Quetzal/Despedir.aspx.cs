using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Despedir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Despedir"] = TextBox1.Text;
        List<string> b = new List<string>();
        Servicio ser = new Servicio();
        b = ser.Despedir(Convert.ToInt32(TextBox1.Text));
        TextBox2.Text = b[1];
        TextBox3.Text = b[0];
        TextBox4.Text = b[2];
        TextBox5.Text = b[3];
        TextBox6.Text = b[4];
        TextBox7.Text = b[5];
        TextBox8.Text = b[6];
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Servicio ser = new Servicio();
        ser.DespedirEmpleado(Convert.ToInt32(TextBox1.Text), TextBox2.Text, TextBox3.Text, Convert.ToDouble(TextBox4.Text), TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text);
         
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("Director.aspx");
    }
}