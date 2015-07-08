using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrarPaquetes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(MapPath(FileUpload1.FileName));
        string temp = MapPath(FileUpload1.FileName);
        ServiceReference1.WebServiceSoapClient ws = new ServiceReference1.WebServiceSoapClient();
        ws.cargarPaquetes(temp);
    }
}