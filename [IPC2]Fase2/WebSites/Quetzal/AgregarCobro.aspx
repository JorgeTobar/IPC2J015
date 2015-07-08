<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AgregarCobro.aspx.cs" Inherits="AgregarCobro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 41px">&nbsp;</td>
            <td colspan="4">
                <h3 style="color: #009933">Bienvenido Administrador - Agregar Cobros</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 41px">&nbsp;</td>
            <td style="width: 139px">&nbsp;</td>
            <td style="width: 282px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 41px">&nbsp;</td>
            <td style="width: 139px">
                <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            </td>
            <td style="width: 282px">
                <asp:TextBox ID="TextBox1" runat="server" Width="163px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 41px">&nbsp;</td>
            <td style="width: 139px">
                <asp:Label ID="Label2" runat="server" Text="Porcentaje"></asp:Label>
            </td>
            <td style="width: 282px">
                <asp:TextBox ID="TextBox2" runat="server" Width="161px"></asp:TextBox>
                Decimales</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" Width="129px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 41px">&nbsp;</td>
            <td style="width: 139px">&nbsp;</td>
            <td style="width: 282px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 41px">&nbsp;</td>
            <td style="width: 139px">&nbsp;</td>
            <td style="width: 282px">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar" Width="126px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

