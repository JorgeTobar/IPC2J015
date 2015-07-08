﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerEquipo.aspx.cs" Inherits="VerEquipo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">
                <h3 style="color: #009933">Bienvenido Director - Ver Equipo de Trabajo</h3>
            </td>
        </tr>
        <tr>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="height: 30px">
                Ingrese Sucursal<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingrese Departamento
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 30px"></td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="height: 32px">
                &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
            </td>
            <td style="height: 32px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Regresar" Width="235px" />
            </td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codEmpleado" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="codEmpleado" HeaderText="codEmpleado" InsertVisible="False" ReadOnly="True" SortExpression="codEmpleado" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                        <asp:BoundField DataField="Sucursal" HeaderText="Sucursal" SortExpression="Sucursal" />
                        <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                        <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                        <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpreConnectionString %>" DeleteCommand="DELETE FROM [Empleado] WHERE [codEmpleado] = @codEmpleado" InsertCommand="INSERT INTO [Empleado] ([Apellido], [Nombre], [Sueldo], [Sucursal], [Departamento], [Telefono], [Direccion], [Usuario], [Contraseña], [Puesto]) VALUES (@Apellido, @Nombre, @Sueldo, @Sucursal, @Departamento, @Telefono, @Direccion, @Usuario, @Contraseña, @Puesto)" SelectCommand="SELECT * FROM [Empleado] WHERE (([Sucursal] = @Sucursal) AND ([Departamento] = @Departamento))" UpdateCommand="UPDATE [Empleado] SET [Apellido] = @Apellido, [Nombre] = @Nombre, [Sueldo] = @Sueldo, [Sucursal] = @Sucursal, [Departamento] = @Departamento, [Telefono] = @Telefono, [Direccion] = @Direccion, [Usuario] = @Usuario, [Contraseña] = @Contraseña, [Puesto] = @Puesto WHERE [codEmpleado] = @codEmpleado">
                    <DeleteParameters>
                        <asp:Parameter Name="codEmpleado" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Sueldo" Type="Decimal" />
                        <asp:Parameter Name="Sucursal" Type="String" />
                        <asp:Parameter Name="Departamento" Type="String" />
                        <asp:Parameter Name="Telefono" Type="Int32" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Usuario" Type="String" />
                        <asp:Parameter Name="Contraseña" Type="String" />
                        <asp:Parameter Name="Puesto" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="Sucursal" SessionField="Empleado" Type="String" />
                        <asp:SessionParameter Name="Departamento" SessionField="Emple" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Sueldo" Type="Decimal" />
                        <asp:Parameter Name="Sucursal" Type="String" />
                        <asp:Parameter Name="Departamento" Type="String" />
                        <asp:Parameter Name="Telefono" Type="Int32" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Usuario" Type="String" />
                        <asp:Parameter Name="Contraseña" Type="String" />
                        <asp:Parameter Name="Puesto" Type="String" />
                        <asp:Parameter Name="codEmpleado" Type="Int32" />
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
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

