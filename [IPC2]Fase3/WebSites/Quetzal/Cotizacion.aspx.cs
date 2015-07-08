using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cotizacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        double h,j,g,m,k,w;
        string c = drp.SelectedValue;
        string d = TextBox1.Text;
        string i = TextBox4.Text;
        k = Double.Parse(c);
        h = (Double.Parse(i) * 5);
        j = (Double.Parse(d) * k) ;
        g = (h+j) ;
        m = g * 0.05;
        w = g + m;
      TextBox3.Text = Convert.ToString(w);
     }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("Cliente.aspx");
    }
}