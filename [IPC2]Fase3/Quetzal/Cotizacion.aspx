<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cotizacion.aspx.cs" Inherits="Cotizacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 150px">&nbsp;</td>
        <td style="width: 348px; color: #009933">
            <h6>Ingrese el paquete que quiere cotizar</h6>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 27px; width: 150px"></td>
        <td style="height: 27px; width: 348px">
            <h6>Precio</h6>
        </td>
        <td style="height: 27px">
            <asp:TextBox ID="TextBox1" runat="server" Width="188px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 150px">&nbsp;</td>
        <td style="width: 348px">
            <h6>Peso</h6>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="187px" Height="20px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 150px; height: 82px;"></td>
        <td style="width: 348px; height: 82px;">
            <h6>Tipo</h6>
        </td>
        <td style="height: 82px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpreConnectionString %>" SelectCommand="SELECT * FROM [Categori]"></asp:SqlDataSource>
            <asp:DropDownList ID="drp" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Porcentaje">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 150px">&nbsp;</td>
        <td style="width: 348px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Calcular" Width="153px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 150px">&nbsp;</td>
        <td style="width: 348px">
            <h6>Total</h6>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="188px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 150px; height: 26px;"></td>
        <td style="width: 348px; height: 26px;">
        </td>
        <td style="height: 26px">
        </td>
    </tr>
    <tr>
        <td style="width: 150px; height: 26px;">&nbsp;</td>
        <td style="width: 348px; height: 26px;">
            &nbsp;</td>
        <td style="height: 26px">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar" Width="158px" />
        </td>
    </tr>
</table>
</asp:Content>

