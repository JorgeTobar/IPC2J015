using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerEquipo : System.Web.UI.Page
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
        Session["Empleado"] = TextBox1.Text;
        Session["Emple"] = TextBox2.Text;
    }
}