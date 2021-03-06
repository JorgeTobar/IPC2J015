﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Precarga.aspx.cs" Inherits="Precarga" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="height: 34px">
                <h3>Bienvenido Cliente</h3>
            </td>
        </tr>
        <tr>
            <td>Buscar
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Atras" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
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
                        <asp:BoundField DataField="Sucursal" HeaderText="Sucursal" SortExpression="Sucursal" />
                        <asp:ImageField DataImageUrlField="Foto" DataImageUrlFormatString="~/images/{0}" HeaderText="Foto">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpreConnectionString %>" SelectCommand="SELECT * FROM [Paquete] WHERE ([codPaquete] = @codPaquete)">
                    <SelectParameters>
                        <asp:SessionParameter Name="codPaquete" SessionField="Paquete" Type="Int32" />
                    </SelectParameters>
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
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

