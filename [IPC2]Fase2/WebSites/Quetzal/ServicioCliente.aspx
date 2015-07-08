<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ServicioCliente.aspx.cs" Inherits="ServicioCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Empleado - Servicio al Cliente</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 5px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Entrega y Facturacion" Width="200px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 5px"></td>
            <td style="height: 26px">
                <asp:Button ID="Button2" runat="server" Text="Devolucion" Width="198px" />
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 5px">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Buscar Cliente" Width="198px" OnClick="Button3_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 5px">&nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Regresar" Width="201px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

