<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reportes.aspx.cs" Inherits="Reportes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Administrador - Reportes</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 307px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 307px">Resumen Informativo Paquetes por Categoria</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Generar Reporte" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 307px; height: 28px">Resumen Informativo Paquetes pos Sucursal</td>
            <td style="height: 28px">
                <asp:Button ID="Button2" runat="server" Text="Generar Reporte" OnClick="Button2_Click" />
            </td>
            <td style="height: 28px"></td>
        </tr>
        <tr>
            <td style="width: 307px">Resumen Administrativo Departamento</td>
            <td>
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Generar Reporte" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 307px">Resumen Administrativo Sucursal</td>
            <td>
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click1" Text="Generar Reporte" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 307px">Top 5 de Categorias</td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Generar Reporte" OnClick="Button4_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 307px">&nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Atras" Width="158px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

