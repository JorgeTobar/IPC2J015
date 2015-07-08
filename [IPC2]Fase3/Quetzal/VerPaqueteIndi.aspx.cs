using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerPaqueteIndi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Paquete"] = TextBox1.Text;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(MapPath(FileUpload1.FileName));
        //String linea = MapPath(FileUpload1.FileName);
        string linea = FileUpload1.FileName;
        Servicio serv = new Servicio();
        serv.AgregarFoto(linea, Convert.ToInt32(TextBox1.Text));
        Server.Transfer("VerPaqueteIndi.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("ClientePaquetes.aspx");
    }
}