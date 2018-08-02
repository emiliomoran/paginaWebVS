<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="MantenedorWEB.frmLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="abrigo_general" align="center">
        
        <div id="content_Login">
        
            <table>
                
                    <tr>
                        <td>
                            <asp:Image ID="imgLogin" runat="server" ImageUrl="~/Imagenes/llaves-login.png" Width="56px" Height="56px" />
                        </td>
                        <td align="left">
                            Inicio de sesion
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="left">Nombre de usuario:</td>
                    </tr>
                    <tr>
                        <td colspan="2" align="left"><asp:TextBox ID="txtUsuario" runat="server" Width="170px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="left">Password:</td>
                    </tr>
                    <tr>
                        <td colspan="2" align="left"><asp:TextBox ID="txtpass" runat="server" Width="170px" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><asp:Button ID="btnAceptar" runat="server" 
                                Text="Aceptar" Width="150px" onclick="btnAceptar_Click" /></td>
                    </tr>
            </table>
        
        </div>
    </div>
    </form>
</body>
</html>
