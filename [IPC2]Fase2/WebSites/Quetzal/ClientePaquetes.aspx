<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClientePaquetes.aspx.cs" Inherits="ClientePaquetes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Cliente</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 103px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ver Paquetes" Width="245px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 103px">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ingresar Nuevo Paquete" Width="246px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 103px; height: 32px"></td>
            <td style="height: 32px">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Regresar" Width="246px" />
            </td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td style="width: 103px; height: 26px"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
    </table>
</asp:Content>

