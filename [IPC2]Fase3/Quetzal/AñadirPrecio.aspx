<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AñadirPrecio.aspx.cs" Inherits="AñadirPrecio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="4">
                <h3>Biienvenido Director - Confirmar</h3>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 269px">Buscar
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            </td>
            <td style="height: 26px; width: 367px">Añadir Precio
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Añadir Precio" />
            </td>
            <td style="height: 26px">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Atras" />
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 269px">&nbsp;</td>
            <td style="width: 367px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codPaquete" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="codPaquete" HeaderText="codPaquete" InsertVisible="False" ReadOnly="True" SortExpression="codPaquete" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                        <asp:BoundField DataField="Casilla" HeaderText="Casilla" SortExpression="Casilla" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="Lote" HeaderText="Lote" SortExpression="Lote" />
                        <asp:BoundField DataField="estado1" HeaderText="estado1" SortExpression="estado1" />
                        <asp:ImageField DataImageUrlField="Foto" DataImageUrlFormatString="~/images/{0}" HeaderText="Foto">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 269px">&nbsp;</td>
            <td style="width: 367px">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Confirmar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 269px; height: 26px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpreConnectionString %>" SelectCommand="SELECT * FROM [Paquete] WHERE ([codPaquete] = @codPaquete)">
                    <SelectParameters>
                        <asp:SessionParameter Name="codPaquete" SessionField="Paquete" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 367px; height: 26px"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 269px">&nbsp;</td>
            <td style="width: 367px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

