using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.IO;


[WebService(Namespace = "http://localhost/webService", Name = "WebService", Description = "Web Service")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]

public class Servicio : System.Web.Services.WebService
{
    private int codigos = 0;


    public Servicio()
    {

    }
    SqlConnection con = new SqlConnection(@"Server = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI");
   
    [WebMethod]

    public string guardar(int dpi, string nombre,string apellido,string nit,int tel,string dir,int numT,string usu,string contras)
    {
        SqlCommand comando = new SqlCommand("Insert into Cliente(DPI,Nombre,Apellidos,Nit,Telefono,Direccion,NumTarjeta,Usuario,Contra) values(@DPI, @Nombre,@Apellido,@Nit,@Tel,@dir,@numt,@usu,@contras)", con);
        comando.Parameters.AddWithValue("DPI", dpi);
        comando.Parameters.AddWithValue("Nombre", nombre);
        comando.Parameters.AddWithValue("Apellido", apellido);
        comando.Parameters.AddWithValue("Nit",nit);
        comando.Parameters.AddWithValue("Tel",tel);
        comando.Parameters.AddWithValue("dir", dir);
        comando.Parameters.AddWithValue("numt", numT);
        comando.Parameters.AddWithValue("usu", usu);
        comando.Parameters.AddWithValue("contras", contras);
        try
        {
            con.Open();
            comando.ExecuteNonQuery();
            con.Close();
            return "Exito";
        }
        catch (SqlException ex)
        {
            return "Error";
        }

    }

    [WebMethod]
    public void cargarImpuestos(string directorio)
    {
        Boolean b = true;
        string linea = "";
        char[] delimitador = {','};
        string[] registro;
        string[] columna;
        StreamReader leer = new StreamReader(directorio);
        List<string> lista = new List<string>();
        while (!leer.EndOfStream) {
           
            linea = leer.ReadLine();
            if (b)
            {
                columna = linea.Split(delimitador);
                b = false;
            }
            else {
                
                registro = linea.Split(delimitador);
                string porcentaje = registro[1];
                double porcentajes = Convert.ToDouble(porcentaje);
                
                string insert = "insert into Categori (Nombre,Porcentaje) values('" + registro[0] + "'," + porcentajes + ") ";
                string enlace = @"Server = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI";
                SqlConnection conectar = new SqlConnection(enlace);
                conectar.Open();
                SqlCommand cmd = new SqlCommand(insert, conectar);
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch(Exception e) {
                    throw new Exception("Error al Insertar Registro", e);
                }
                conectar.Close();
            }
        }


    }

    [WebMethod]

    public Boolean login(string usuario, string contraseña)
    {
        int cod = 0;
        string enlace = @"Data source = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI; Trusted_Connection = Yes";
        SqlConnection conectar = new SqlConnection(enlace);
        conectar.Open();
        SqlCommand cmd = new SqlCommand(String.Format("Select * from Cliente where Usuario ='" + usuario + "'and Contra ='" + contraseña + "'"), conectar);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {

            cod = Convert.ToInt32(reader["DPI"]);
        }
        codigos = cod;
        conectar.Close();
        if (cod != 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    [WebMethod]
    public int gettipo(string usuario, string contraseña)
    {
        int codigo = 0;
        string tipo = "";
        int tipo1 = 0;
        //string select = "select limite from cliente where carnet="+carnet+"";
        string enlace = @"Data source = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI; Trusted_Connection = Yes";
        SqlConnection conectar = new SqlConnection(enlace);
        conectar.Open();
        SqlCommand cmd = new SqlCommand(String.Format("Select * from Empleado where usuario like '%{0}%' and contraseña like '%{1}%'", usuario, contraseña), conectar);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            codigo = Convert.ToInt32(reader["cod_empleado"]);
            tipo = Convert.ToString(reader[""]);
        }
        codigos = codigo;

        if (tipo.Equals("director"))
        {
            tipo1 = 2;
        }
        else if (tipo.Equals("bodega"))
        {
            tipo1 = 5;
        }
        else if (tipo.Equals("servicioCliente"))
        {
            tipo1 = 3;
        }
        else if (tipo.Equals("administrador"))
        {
            tipo1 = 4;
        }
        else if (tipo.Equals("registro"))
        {
            tipo1 = 6;
        }
        conectar.Close();
        return tipo1;
    }

    [WebMethod]
    public int getCodigoCliente(string usuario,string contraseña) {
        int codigo = 0;
        string enlace = @"Data source = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI; Trusted_Connection = Yes";
        SqlConnection conectar = new SqlConnection(enlace);
        conectar.Open();
        SqlCommand cmd = new SqlCommand(String.Format("Select *  from Cliente where Usuario like '%{0}%' and Contra like '%{0}%'", usuario,contraseña),conectar);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read()) { 
        codigo = Convert.ToInt32(reader["DPI"]);
        }
            conectar.Close();
            return codigo;
     }

    [WebMethod]
    public int getCodigoEmpleado(string usuario, string contraseña)
    {
        int codigo = 0;
        string enlace = @"Data source = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI; Trusted_Connection = Yes";
        SqlConnection conectar = new SqlConnection(enlace);
        conectar.Open();
        SqlCommand cmd = new SqlCommand(String.Format("Select *  from Empleado where Usuario like '%{0}%' and Contraseña like '%{0}%'", usuario, contraseña), conectar);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            codigo = Convert.ToInt32(reader["codEmpleado"]);
        }
        conectar.Close();
        return codigo;
    }

    [WebMethod]
    public void cargarEmpleado(string directorio)
    {
        Boolean b = true;
        string linea = "";
        char[] delimitador = { ',' };
        string[] registro;
        string[] columna;
        StreamReader leer = new StreamReader(directorio);
        List<string> lista = new List<string>();
        while (!leer.EndOfStream)
        {

            linea = leer.ReadLine();
            if (b)
            {
                columna = linea.Split(delimitador);
                b = false;
            }
            else
            {

                registro = linea.Split(delimitador);

                string sueldo = registro[2];
                double  sueldos = Convert.ToDouble(sueldo);
                string E = "Empleado";
                string insert = "insert into Empleado (Apellido,Nombre,Sueldo,Sucursal,Departamento,Contraseña,Usuario,Puesto) values('" + registro[0] + "','" + registro[1] + "',"+ sueldos +",'" +registro[3]+ "','" +registro[4]+ "','" +registro[0]+ "','" +registro[1]+ "','"+E+"') ";
                string enlace = @"Server = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI";
                SqlConnection conectar = new SqlConnection(enlace);
                conectar.Open();
                SqlCommand cmd = new SqlCommand(insert, conectar);
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception e)
                {
                    throw new Exception("Error al Insertar Registro", e);
                }
                conectar.Close();
            }
        }
    }

    [WebMethod]
    public Boolean loginEmpleados(string usuario, string contraseña)
    {
        int cod = 0;
        string enlace = @"Data source = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI; Trusted_Connection = Yes";
        SqlConnection conectar = new SqlConnection(enlace);
        conectar.Open();
        SqlCommand cmd = new SqlCommand(String.Format("Select * from Empleado where Usuario ='" + usuario + "'and Contraseña ='" + contraseña + "'"), conectar);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {

            cod = Convert.ToInt32(reader["codEmpleado"]);
        }
        codigos = cod;
        conectar.Close();
        if (cod != 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
   
    [WebMethod]
    public Boolean loginDirecto(string usuario, string contraseña)
    {
        int cod = 0;
        string enlace = @"Data source = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI; Trusted_Connection = Yes";
        SqlConnection conectar = new SqlConnection(enlace);
        conectar.Open();
        SqlCommand cmd = new SqlCommand(String.Format("Select * from Director where Usuario ='" + usuario + "'and Contraseña ='" + contraseña + "'"), conectar);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {

            cod = Convert.ToInt32(reader["CodDirector"]);
        }
        codigos = cod;
        conectar.Close();
        if (cod != 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    [WebMethod]
    public Boolean loginAdmi(string usuario, string contraseña)
    {
        int cod = 0;
        string enlace = @"Data source = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI; Trusted_Connection = Yes";
        SqlConnection conectar = new SqlConnection(enlace);
        conectar.Open();
        SqlCommand cmd = new SqlCommand(String.Format("Select * from Administrador where Usuario ='" + usuario + "'and Contraseña ='" + contraseña + "'"), conectar);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {

            cod = Convert.ToInt32(reader["CodAdministrador"]);
        }
        codigos = cod;
        conectar.Close();
        if (cod != 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    [WebMethod]

    public string guardaCobro(string nombre,double porcentaje)
    {
        SqlCommand comando = new SqlCommand("Insert into Categori(Nombre,Porcentaje) values(@nombre,@porcentaje)", con);
        comando.Parameters.AddWithValue("nombre", nombre);
        comando.Parameters.AddWithValue("porcentaje", porcentaje);
        try
        {
            con.Open();
            comando.ExecuteNonQuery();
            con.Close();
            return "Exito";
        }
        catch (SqlException ex)
        {
            return "Error";
        }

    }

    [WebMethod]
    public string modificarCl(int DPI, string nombre, string apellido, string nit, int telefono, string direccion, int tarjeta, string usuario,string contraseña)
    {
        SqlCommand comando = new SqlCommand("Update Cliente set DPI = " + DPI + ", Nombre = '" + nombre + "', Apellidos = '" + apellido + "', Nit = '" + nit + "',Telefono = " + telefono + ", Direccion = '" + direccion + "', NumTarjeta = " + tarjeta + ", Usuario = '" + usuario + "',Contra = '" + contraseña + "' where DPI = " + DPI + "", con);
        //comando.Parameters.AddWithValue("DPI", DPI);
        //comando.Parameters.AddWithValue("nombre", nombre);
        //comando.Parameters.AddWithValue("apellido", apellido);
        //comando.Parameters.AddWithValue("nit",nit);
        //comando.Parameters.AddWithValue("telefono", telefono);
        //comando.Parameters.AddWithValue("direccion", direccion);
        //comando.Parameters.AddWithValue("tarjeta", tarjeta);
        //comando.Parameters.AddWithValue("usuario", usuario);
        //comando.Parameters.AddWithValue("contraseña", contraseña);

        try
        {
            con.Open();
            comando.ExecuteNonQuery();
            con.Close();
            return "Hecho";
        }
        catch (SqlException ex)
        {
            con.Close();
            return "error";
            throw;
        }

    }

    [WebMethod]
    public void cargarPaquetes(string directorio)
    {
        Boolean b = true;
        string linea = "";
        char[] delimitador = { ',' };
        string[] registro;
        string[] columna;
        StreamReader leer = new StreamReader(directorio);
        List<string> lista = new List<string>();
        while (!leer.EndOfStream)
        {

            linea = leer.ReadLine();
            if (b)
            {
                columna = linea.Split(delimitador);
                b = false;
            }
            else
            {

                registro = linea.Split(delimitador);
                
                string peso = registro[2];
                int pesos = Convert.ToInt32(peso);
                string precio = registro[3];
                double precios = Convert.ToDouble(precio);
                string bod = "Bodega";
                string insert = "insert into Paquete(Peso,Precio,Categoria,Casilla,Estado) values('" + pesos + "','" + precios + "','"+registro[0]+"','"+registro[1]+"','"+ bod +"') ";
                string enlace = @"Server = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI";
                SqlConnection conectar = new SqlConnection(enlace);
                conectar.Open();
                SqlCommand cmd = new SqlCommand(insert, conectar);
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception e)
                {
                    throw new Exception("Error al Insertar Registro", e);
                }
                conectar.Close();
            }
        }


    }

    [WebMethod]

    public string guardarPaquete(int peso, double precio,string categoria,string casilla,string estado,int lote)
    {
        SqlCommand comando = new SqlCommand("Insert into Paquete(Peso,Precio,Categoria,Casilla,Estado,Lote) values(@peso,@precio,@categoria,@casilla,@estado,@lote)", con);
        comando.Parameters.AddWithValue("peso", peso);
        comando.Parameters.AddWithValue("precio", precio);
        comando.Parameters.AddWithValue("categoria", categoria);
        comando.Parameters.AddWithValue("casilla", casilla);
        comando.Parameters.AddWithValue("estado", estado);
        comando.Parameters.AddWithValue("lote", lote);
        try
        {
            con.Open();
            comando.ExecuteNonQuery();
            con.Close();
            return "Exito";
        }
        catch (SqlException ex)
        {
            return "Error";
        }

    }
    [WebMethod]

    public List<string> ModificarCliente(string usuario, string contraseña)
    {
        int cod = 0;
        List<string> a = new List<string>();
        string enlace = @"Data source = JORGE8A\SQLExpress; Initial Catalog = QuetzalExpre ; Integrated Security= SSPI; Trusted_Connection = Yes";
        SqlConnection conectar = new SqlConnection(enlace);
        conectar.Open();
        SqlCommand cmd = new SqlCommand(String.Format("Select * from Cliente where Usuario ='" + usuario + "'and Contra ='" + contraseña + "'"), conectar);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            a.Add(Convert.ToString(reader["DPI"]));
            a.Add(Convert.ToString(reader["Nombre"]));
            a.Add(Convert.ToString(reader["Apellidos"]));
            a.Add(Convert.ToString(reader["Nit"]));
            a.Add(Convert.ToString(reader["Telefono"]));
            a.Add(Convert.ToString(reader["Direccion"]));
            a.Add(Convert.ToString(reader["NumTarjeta"]));
            a.Add(Convert.ToString(reader["Usuario"]));
            a.Add(Convert.ToString(reader["Contra"]));
                   }
        codigos = cod;
        conectar.Close();

        return a;
    }

}