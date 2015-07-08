using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Usuario"] = txt1.Text;
        Session["Contraseña"] = txt2.Text;
        int t = 0;
        int cod = 0;
        int cod_sucursal = 0;
        ServiceReference1.WebServiceSoapClient ws = new ServiceReference1.WebServiceSoapClient();
       if(ws.login(txt1.Text,txt2.Text)){
           t = ws.getCodigoCliente(txt1.Text,txt2.Text);
           Session["codigo"] = t;
         Server.Transfer("Cliente.aspx");
       }
       else if (ws.loginEmpleados(txt1.Text, txt2.Text))
       {
           t = ws.getCodigoCliente(txt1.Text, txt2.Text);
           Session["codigo"] = t;
           Server.Transfer("Empleado.aspx");

       }
       else if (ws.loginDirecto(txt1.Text, txt2.Text))
       {
           t = ws.getCodigoCliente(txt1.Text, txt2.Text);
           Session["codigo"] = t;
           Server.Transfer("Director.aspx");

       }
       else if (ws.loginAdmi(txt1.Text, txt2.Text))
       {
           t = ws.getCodigoCliente(txt1.Text, txt2.Text);
           Session["codigo"] = t;
           Server.Transfer("Administrador.aspx");

       }
       else
       {
           Response.Write("<script> window.alert('Datos Erroneos')</script>");
       }
    
    }


}