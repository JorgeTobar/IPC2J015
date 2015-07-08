using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Servicio serv = new Servicio();
      
       serv.guardar(Int32.Parse(txt1.Text), txt2.Text,txt3.Text,txt4.Text,Int32.Parse(txt5.Text),txt6.Text,Int32.Parse(txt7.Text),txt8.Text,txt9.Text);
        Label10.Text = "datos Guardados";  
    }

}
