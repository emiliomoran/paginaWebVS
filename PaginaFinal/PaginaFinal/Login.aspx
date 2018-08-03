<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PaginaFinal.WebForm1" %>

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
		        </ul>
	        </div>
            </div>
            <div id="logo" class="container">
                <h1><a><span>Inicia Sesion</span></a></h1>
            </div>
            <div class="major">    
                    <span class="byline">Usuario</span>         
                    <asp:TextBox style="text-align:center" ID="TextBox3" runat="server" Width="200px" Height="50px" 
                        Font-Size="Large"></asp:TextBox>         
                    <span class="byline">Contraseña</span>        
                    <asp:TextBox style="text-align:center" ID="TextBox4" runat="server" TextMode="Password" Width="200px" 
                        Height="50px" Font-Size="Large"></asp:TextBox>     
                    <p></p>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>      
            </div>
            <div class="major">
                <asp:Button ID="Button1" runat="server" Text="Iniciar Sesion" 
                    onclick="Button1_Click" Font-Size="Large" Height="50px" Width="200px" />  
                <p></p>       
                <asp:Label ID="Label2" runat="server" Text="Si no eres socio acceda a "></asp:Label>        
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Registrarse</asp:LinkButton>        
            </div>
        </form>
    </body>
</html>
