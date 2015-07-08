<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contratar.aspx.cs" Inherits="Contratar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Director - Contratar</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 215px; height: 26px"></td>
            <td style="height: 26px; width: 249px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 215px">Carga de Empleados</td>
            <td style="width: 249px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Cargar" />
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 215px"></td>
            <td style="height: 17px; width: 249px"></td>
            <td style="height: 17px"></td>
        </tr>
        <tr>
            <td style="width: 215px">&nbsp;</td>
            <td style="width: 249px">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Regresar" Width="159px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

