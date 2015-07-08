<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrarPaquetes.aspx.cs" Inherits="RegistrarPaquetes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Empleado - Paquetes</h3>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 112px"></td>
            <td style="height: 26px; width: 242px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 112px">Cargar Paquetes</td>
            <td style="width: 242px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cargar" Width="120px" />
            </td>
        </tr>
        <tr>
            <td style="width: 112px">&nbsp;</td>
            <td style="width: 242px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 112px">&nbsp;</td>
            <td style="width: 242px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

