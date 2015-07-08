<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Administrador</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Carga Masiva Impuestos" Width="190px" Height="32px" OnClick="Button3_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Gestion de Cobros" Height="36px" Width="190px" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" Height="33px" OnClick="Button4_Click" Text="Generar Reportes" Width="186px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" Height="34px" OnClick="Button5_Click" Text="Cerrar Sesion" Width="190px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

