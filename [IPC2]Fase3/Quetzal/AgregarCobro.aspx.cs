﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AgregarCobro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Servicio serv = new Servicio();
        serv.guardaCobro(TextBox1.Text,Double.Parse(TextBox2.Text));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("CobroAdmi.aspx");
    }
}