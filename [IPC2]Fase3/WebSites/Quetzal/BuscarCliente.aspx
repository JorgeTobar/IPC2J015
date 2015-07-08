<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BuscarCliente.aspx.cs" Inherits="BuscarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Empleado - Servicio al Cliente</h3>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DPI" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="DPI" HeaderText="DPI" ReadOnly="True" SortExpression="DPI" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                        <asp:BoundField DataField="Nit" HeaderText="Nit" SortExpression="Nit" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                        <asp:BoundField DataField="NumTarjeta" HeaderText="NumTarjeta" SortExpression="NumTarjeta" />
                        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                        <asp:BoundField DataField="Contra" HeaderText="Contra" SortExpression="Contra" />
                        <asp:BoundField DataField="Casilla" HeaderText="Casilla" SortExpression="Casilla" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpreConnectionString %>" DeleteCommand="DELETE FROM [Cliente] WHERE [DPI] = @DPI" InsertCommand="INSERT INTO [Cliente] ([DPI], [Nombre], [Apellidos], [Nit], [Telefono], [Direccion], [NumTarjeta], [Usuario], [Contra], [Casilla]) VALUES (@DPI, @Nombre, @Apellidos, @Nit, @Telefono, @Direccion, @NumTarjeta, @Usuario, @Contra, @Casilla)" SelectCommand="SELECT [DPI], [Nombre], [Apellidos], [Nit], [Telefono], [Direccion], [NumTarjeta], [Usuario], [Contra], [Casilla] FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [Nombre] = @Nombre, [Apellidos] = @Apellidos, [Nit] = @Nit, [Telefono] = @Telefono, [Direccion] = @Direccion, [NumTarjeta] = @NumTarjeta, [Usuario] = @Usuario, [Contra] = @Contra, [Casilla] = @Casilla WHERE [DPI] = @DPI">
                    <DeleteParameters>
                        <asp:Parameter Name="DPI" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="DPI" Type="Int32" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellidos" Type="String" />
                        <asp:Parameter Name="Nit" Type="String" />
                        <asp:Parameter Name="Telefono" Type="Int32" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="NumTarjeta" Type="Int32" />
                        <asp:Parameter Name="Usuario" Type="String" />
                        <asp:Parameter Name="Contra" Type="String" />
                        <asp:Parameter Name="Casilla" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellidos" Type="String" />
                        <asp:Parameter Name="Nit" Type="String" />
                        <asp:Parameter Name="Telefono" Type="Int32" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="NumTarjeta" Type="Int32" />
                        <asp:Parameter Name="Usuario" Type="String" />
                        <asp:Parameter Name="Contra" Type="String" />
                        <asp:Parameter Name="Casilla" Type="String" />
                        <asp:Parameter Name="DPI" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

