<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CargaDirector.aspx.cs" Inherits="CargaDirector" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="4" style="height: 61px">
                <h3 style="color: #009933">Carga Masiva Administrador</h3>
            </td>
        </tr>
        <tr>
            <td style="height: 50px; width: 19%"></td>
            <td style="height: 50px; width: 234px">Carga de Impuestos</td>
            <td style="height: 50px; width: 36%">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td style="width: 7%; height: 50px">
                <asp:Button ID="Button1" runat="server" Height="25px" OnClick="Button1_Click" Text="Cargar" Width="104px" />
            </td>
        </tr>
        <tr>
            <td style="height: 43px; width: 19%"></td>
            <td style="height: 43px; width: 234px">Carga de Empleados</td>
            <td style="height: 43px; width: 36%">
                <asp:FileUpload ID="FileUpload2" runat="server" Height="20px" />
            </td>
            <td style="width: 7%; height: 43px">
                <asp:Button ID="Button2" runat="server" Height="26px" OnClick="Button2_Click" Text="Cargar" Width="103px" />
            </td>
        </tr>
        <tr>
            <td style="width: 19%">&nbsp;</td>
            <td style="width: 234px">&nbsp;</td>
            <td style="width: 36%">&nbsp;</td>
            <td style="width: 7%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 19%">&nbsp;</td>
            <td style="width: 234px">&nbsp;</td>
            <td style="width: 36%">&nbsp;</td>
            <td style="width: 7%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

