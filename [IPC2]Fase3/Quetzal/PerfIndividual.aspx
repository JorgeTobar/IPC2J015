<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PerfIndividual.aspx.cs" Inherits="PerfIndividual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="4">
                <h3>Bienvenido Director - Consultar Empleado</h3>
            </td>
        </tr>
        <tr>
            <td style="color: #000000; width: 219px">Ingrese el Codigo de&nbsp; Empleado</td>
            <td style="width: 197px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 219px">&nbsp;</td>
            <td style="width: 197px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #000000; width: 219px">Nombre: </td>
            <td style="width: 197px">
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; color: #000000; width: 219px">Apellidos:</td>
            <td style="height: 26px; width: 197px">
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="color: #000000; width: 219px">Sueldo:</td>
            <td style="width: 197px">
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; color: #000000; width: 219px">Sucursal:</td>
            <td style="height: 26px; width: 197px">
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 219px; color: #000000; height: 39px">Departamento</td>
            <td style="width: 197px; height: 39px">
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 39px"></td>
            <td style="height: 39px"></td>
        </tr>
        <tr>
            <td style="width: 219px">&nbsp;</td>
            <td style="width: 197px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Regresar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

