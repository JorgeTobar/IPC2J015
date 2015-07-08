<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerPaqueteIndi.aspx.cs" Inherits="VerPaqueteIndi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="4">Bienvenido</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="codPaquete" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="codPaquete" HeaderText="codPaquete" InsertVisible="False" ReadOnly="True" SortExpression="codPaquete" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Casilla" HeaderText="Casilla" SortExpression="Casilla" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpreConnectionString %>" SelectCommand="SELECT [codPaquete], [Nombre], [Peso], [Precio], [Casilla], [Estado] FROM [Paquete]"></asp:SqlDataSource>
            </td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">Numero de Paquete
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 256px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
            </td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpreConnectionString %>" SelectCommand="SELECT * FROM [Paquete] WHERE ([codPaquete] = @codPaquete)">
                    <SelectParameters>
                        <asp:SessionParameter Name="codPaquete" SessionField="Paquete" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
                        <asp:ImageField DataImageUrlField="Foto" DataImageUrlFormatString="~/images/{0}" HeaderText="Foto">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
            </td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px; height: 33px;"></td>
            <td style="width: 256px; height: 33px;">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Regresar" />
            </td>
            <td style="height: 33px"></td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 256px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

