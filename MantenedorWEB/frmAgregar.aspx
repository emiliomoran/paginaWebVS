<%@ Page Title="" Language="C#" MasterPageFile="~/Anonimo.Master" AutoEventWireup="true" CodeBehind="frmAgregar.aspx.cs" Inherits="MantenedorWEB.frmAgregar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="abrigo_formulario">
    <h2>Nuevo Producto</h2>
    <br />
        <table>
            <tr>
                <td>Nombre: </td>
                <td><asp:TextBox ID="txtNombre" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Detalle: </td>
                <td><asp:TextBox ID="txtdetalle" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Precio: </td>
                <td><asp:TextBox ID="txtPrecio" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Stock: </td>
                <td><asp:TextBox ID="txtStock" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Categoria: </td>
                <td><asp:DropDownList ID="cmbCategorias" runat="server" Width="200px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><asp:Label ID="lblerror" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><asp:Button ID="btnGuardar" runat="server" 
                        Text="Guardar" Width="170px" onclick="btnGuardar_Click" /></td>
            </tr>
        </table>
    </div>
    


</asp:Content>
