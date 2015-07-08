<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CambioEstado.aspx.cs" Inherits="CambioEstado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">Bienvenido Empleado -Paquetes</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 656px"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 656px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codPaquete" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="codPaquete" HeaderText="codPaquete" InsertVisible="False" ReadOnly="True" SortExpression="codPaquete" />
                        <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="Casilla" HeaderText="Casilla" SortExpression="Casilla" />
                        <asp:BoundField DataField="Lote" HeaderText="Lote" SortExpression="Lote" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpreConnectionString %>" DeleteCommand="DELETE FROM [Paquete] WHERE [codPaquete] = @codPaquete" InsertCommand="INSERT INTO [Paquete] ([Peso], [Precio], [Categoria], [Estado], [Casilla], [Lote]) VALUES (@Peso, @Precio, @Categoria, @Estado, @Casilla, @Lote)" SelectCommand="SELECT [codPaquete], [Peso], [Precio], [Categoria], [Estado], [Casilla], [Lote] FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Peso] = @Peso, [Precio] = @Precio, [Categoria] = @Categoria, [Estado] = @Estado, [Casilla] = @Casilla, [Lote] = @Lote WHERE [codPaquete] = @codPaquete">
                    <DeleteParameters>
                        <asp:Parameter Name="codPaquete" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Peso" Type="Int32" />
                        <asp:Parameter Name="Precio" Type="Double" />
                        <asp:Parameter Name="Categoria" Type="String" />
                        <asp:Parameter Name="Estado" Type="String" />
                        <asp:Parameter Name="Casilla" Type="String" />
                        <asp:Parameter Name="Lote" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Peso" Type="Int32" />
                        <asp:Parameter Name="Precio" Type="Double" />
                        <asp:Parameter Name="Categoria" Type="String" />
                        <asp:Parameter Name="Estado" Type="String" />
                        <asp:Parameter Name="Casilla" Type="String" />
                        <asp:Parameter Name="Lote" Type="Int32" />
                        <asp:Parameter Name="codPaquete" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 656px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 656px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

