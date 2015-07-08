<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CobroAdmi.aspx.cs" Inherits="CobroAdmi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Administrador</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Modificar Cobro" Width="189px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Agregar Cobro" Width="189px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Regresar" Width="191px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

