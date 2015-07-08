<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PerfilCliente.aspx.cs" Inherits="PerfilCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Cliente :D</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 107px">DPI</td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; height: 1px">Nombre</td>
            <td style="height: 1px; width: 174px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 1px"></td>
        </tr>
        <tr>
            <td style="width: 107px">Apellido</td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px">Nit</td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px">Telefono</td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; height: 30px;">Direccion</td>
            <td style="width: 174px; height: 30px;">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="width: 107px">NumTarjeta</td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px">Usuario</td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px">Contraseña</td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar" Width="99px" />
            </td>
        </tr>
        <tr>
            <td style="width: 107px">Sucursal</td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" Width="105px" />
            </td>
        </tr>
        <tr>
            <td style="width: 107px">&nbsp;</td>
            <td style="width: 174px">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Regresar" Width="102px" />
            </td>
        </tr>
    </table>
</asp:Content>

