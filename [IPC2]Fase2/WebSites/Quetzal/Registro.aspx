<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registro.aspx.cs" Inherits="Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table style="width: 100%">
    <tr>
        <td style="width: 112px">
            &nbsp;</td>
        <td style="width: 358px">
            <h3 class="center"><span style="color: #009900">Ingrese sus datos</span> </h3>
            <p>
                &nbsp;</p>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 112px">
            &nbsp;</td>
        <td style="width: 358px">
            <h6>
                <asp:Label ID="Label1" runat="server" Text="DPI"></asp:Label>
            </h6>
        </td>
        <td>
            <asp:TextBox ID="txt1" runat="server" Width="185px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 112px">
            &nbsp;</td>
        <td style="width: 358px">
            <h6>
                <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
            </h6>
        </td>
        <td>
            <asp:TextBox ID="txt2" runat="server" Width="186px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 112px">
            &nbsp;</td>
        <td style="width: 358px">
            <h6>
                <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
            </h6>
        </td>
        <td>
            <asp:TextBox ID="txt3" runat="server" Width="184px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 112px">
            &nbsp;</td>
        <td style="width: 358px">
            <h6>
                <asp:Label ID="Label4" runat="server" Text="Nit"></asp:Label>
            </h6>
        </td>
        <td>
            <asp:TextBox ID="txt4" runat="server" Width="183px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 112px">
            &nbsp;</td>
        <td style="width: 358px">
            <h6>
                <asp:Label ID="Label5" runat="server" Text="Telefono"></asp:Label>
            </h6>
        </td>
        <td>
            <asp:TextBox ID="txt5" runat="server" Height="16px" Width="184px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 112px">
            &nbsp;</td>
        <td style="width: 358px">
            <h6>
                <asp:Label ID="Label6" runat="server" Text="Direccion"></asp:Label>
            </h6>
        </td>
        <td>
            <asp:TextBox ID="txt6" runat="server" Width="185px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 112px">
            &nbsp;</td>
        <td style="width: 358px">
            <h6>
                <asp:Label ID="Label7" runat="server" Text="Numero de Tarjeta"></asp:Label>
            </h6>
        </td>
        <td>
            <asp:TextBox ID="txt7" runat="server" Width="185px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 112px">
            &nbsp;</td>
        <td style="width: 358px">
            <h6>
                <asp:Label ID="Label8" runat="server" Text="Nombre de Usuario"></asp:Label>
            </h6>
        </td>
        <td>
            <asp:TextBox ID="txt8" runat="server" Width="183px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 112px; height: 34px">
            &nbsp;</td>
        <td style="width: 358px; height: 34px">
            <h6>
                <asp:Label ID="Label9" runat="server" Text="Contraseña"></asp:Label>
            </h6>
        </td>
        <td style="height: 34px">
            <asp:TextBox ID="txt9" runat="server" Width="183px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 112px; height: 39px;">
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        </td>
        <td style="width: 358px; height: 39px;"></td>
        <td style="height: 39px">
            <asp:Button ID="Button1" runat="server" Height="29px" Text="INGRESAR DATOS" Width="180px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>

</asp:Content>

