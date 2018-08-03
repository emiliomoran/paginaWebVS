<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PaginaFinal.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Cooperativa San Jacinto</title>
        <link href="estilos.css" rel="stylesheet" type="text/css" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" /> 
    </head>
    <body>
            <form id="form1" runat="server">
                <div id="header">
	                <div id="menu" class="container">
		                <ul>			
			                <li><a href="Principal.aspx" accesskey="1" title="">Pagina Principal</a></li>	
                            <li><a href="Login.aspx" accesskey="1" title="">Iniciar Sesion</a></li>
		                </ul>
	                </div>
                </div>
                <div id="logo" class="container">
                    <h1><a><span>Registrate para ser Socio</span></a></h1>
                </div>                               
                <div class="major">    
                    <span class="byline">Nombre</span>   
                    <asp:TextBox style="text-align:center" ID="TextBox1" runat="server" Height="50px" Width="200px" 
                        Font-Size="Large"></asp:TextBox>                          
                    <span class="byline">Apellido</span>        
                    <asp:TextBox style="text-align:center" ID="TextBox2" runat="server" Height="50px" Width="200px" 
                        Font-Size="Large"></asp:TextBox>
                    <span class="byline">Edad</span>        
                    <asp:TextBox style="text-align:center" ID="TextBox3" runat="server" Height="50px" Width="200px" 
                        Font-Size="Large"></asp:TextBox>
                    <span class="byline">Telefono</span>        
                    <asp:TextBox style="text-align:center" ID="TextBox4" runat="server" Height="50px" Width="200px" 
                        Font-Size="Large"></asp:TextBox>
                    <span class="byline">Correo</span>        
                    <asp:TextBox style="text-align:center" ID="TextBox5" runat="server" Height="50px" Width="200px" 
                        Font-Size="Large"></asp:TextBox>
                    <span class="byline">Usuario</span>        
                    <asp:TextBox style="text-align:center" ID="TextBox6" runat="server" Height="50px" Width="200px" 
                        Font-Size="Large"></asp:TextBox>
                    <span class="byline">Contraseña</span>                                               
                    <asp:TextBox style="text-align:center" ID="TextBox7" runat="server" Height="50px" Width="200px" 
                        Font-Size="Large" TextMode="Password"></asp:TextBox>
                </div>
                <div class="major">
                <asp:Button ID="Button1" runat="server" Text="Registrar" 
                    onclick="Button1_Click" Font-Size="Large" Height="50px" Width="200px" />                                
                </div>            
            </form>
    </body>
</html>
