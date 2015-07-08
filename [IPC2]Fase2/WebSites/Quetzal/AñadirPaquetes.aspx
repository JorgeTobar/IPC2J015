<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AñadirPaquetes.aspx.cs" Inherits="AñadirPaquetes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Empleado - Paquetes</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 26px">
                <asp:Label ID="Label1" runat="server" Text="Peso"></asp:Label>
            </td>
            <td style="width: 141px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 26px">
                <asp:Label ID="Label2" runat="server" Text="Precio"></asp:Label>
            </td>
            <td style="width: 141px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 26px">
                <asp:Label ID="Label3" runat="server" Text="Categoria"></asp:Label>
            </td>
            <td style="width: 141px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 26px">
                <asp:Label ID="Label4" runat="server" Text="Casilla"></asp:Label>
            </td>
            <td style="width: 141px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 26px">
                <asp:Label ID="Label5" runat="server" Text="Estado"></asp:Label>
            </td>
            <td style="width: 141px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 26px">
                <asp:Label ID="Label6" runat="server" Text="Lote"></asp:Label>
            </td>
            <td style="width: 141px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" />
            </td>
        </tr>
        <tr>
            <td style="width: 26px">&nbsp;</td>
            <td style="width: 141px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

