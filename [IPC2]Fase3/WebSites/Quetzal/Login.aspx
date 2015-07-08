<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 157px">&nbsp;</td>
        <td style="color: #009933; width: 368px">
            <h3>Ingrese su Usuario</h3>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 157px">&nbsp;</td>
        <td style="width: 368px">
            <h6>Nombre Usuario</h6>
        </td>
        <td>
            <asp:TextBox ID="txt1" runat="server" Width="212px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 157px">&nbsp;</td>
        <td style="width: 368px">
            <h6>Contraseña</h6>
        </td>
        <td>
            <asp:TextBox ID="txt2" runat="server" Width="211px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 157px">&nbsp;</td>
        <td style="width: 368px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Ingrese" Width="171px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

