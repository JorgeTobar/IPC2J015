<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Cliente</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 147px; height: 26px"></td>
            <td style="height: 26px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Paquetes" Width="158px" />
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 147px">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cotizacion" Width="159px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 147px">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Perfil" Width="161px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 147px">&nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Cerrar Sesion" Width="160px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

