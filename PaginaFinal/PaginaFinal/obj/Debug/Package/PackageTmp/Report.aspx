<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="PaginaFinal.WebForm3" %>

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
			    <li><asp:Label ID="Label1" runat="server" Text="Label" BackColor="#3F3F3F" 
                        ForeColor="White"></asp:Label></li>           		    
                <li><asp:Button ID="Button1" runat="server" Text="Cerrar Sesion" 
            onclick="Button1_Click" Font-Size="Large" Height="50px" Width="200px" /></li>
		    </ul>
	    </div>
    </div>
    <div id="logo" class="container">
                <h1><a><span>Reporte de Socios de la Cooperativa</span></a></h1>
    </div>
    <div class="major">
        
        <asp:GridView HorizontalAlign="Center" ID ="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id_auto" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Height="181px" Width="669px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_auto" HeaderText="id_auto" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id_auto" />
                <asp:BoundField DataField="modelo" HeaderText="modelo" 
                    SortExpression="modelo" />
                <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                <asp:BoundField DataField="placa" HeaderText="placa" SortExpression="placa" />
                <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                <asp:BoundField DataField="id_user" HeaderText="id_user" 
                    SortExpression="id_user" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbcooperativaConnectionString %>" 
            DeleteCommand="DELETE FROM [t_auto] WHERE [id_auto] = @id_auto" 
            InsertCommand="INSERT INTO [t_auto] ([modelo], [marca], [placa], [color], [id_user]) VALUES (@modelo, @marca, @placa, @color, @id_user)" 
            SelectCommand="SELECT * FROM [t_auto]" 
            UpdateCommand="UPDATE [t_auto] SET [modelo] = @modelo, [marca] = @marca, [placa] = @placa, [color] = @color, [id_user] = @id_user WHERE [id_auto] = @id_auto">
            <DeleteParameters>
                <asp:Parameter Name="id_auto" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="modelo" Type="String" />
                <asp:Parameter Name="marca" Type="String" />
                <asp:Parameter Name="placa" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="id_user" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="modelo" Type="String" />
                <asp:Parameter Name="marca" Type="String" />
                <asp:Parameter Name="placa" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="id_user" Type="Int32" />
                <asp:Parameter Name="id_auto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </div>
    </form>
</body>
</html>
