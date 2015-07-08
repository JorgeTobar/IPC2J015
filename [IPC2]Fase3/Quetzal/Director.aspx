<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Director.aspx.cs" Inherits="Director" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="height: 26px">
                <h3 style="color: #009933">Bienvenido Director</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Contratar" Width="161px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 166px">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ver Equipo" Width="160px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 166px">&nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Ver Equipo Individual" Width="159px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 166px; height: 26px;"></td>
            <td style="height: 26px">
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Despedir" Width="160px" />
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 166px; height: 26px;">&nbsp;</td>
            <td style="height: 26px">
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Confirmar Precarga" />
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 166px">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cerrar Sesion" Width="160px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

