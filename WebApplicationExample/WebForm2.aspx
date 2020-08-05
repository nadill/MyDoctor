<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplicationExample.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:BulletedList ID="BulletedList1" runat="server">
				<asp:ListItem>Opcja A</asp:ListItem>
				<asp:ListItem>Opcja B</asp:ListItem>
				<asp:ListItem>Opcja C</asp:ListItem>
			</asp:BulletedList>
        </div>
		<div>
			<asp:DropDownList ID="DropDownList1" runat="server">
				<asp:ListItem Value="red">Czerwony</asp:ListItem>
				<asp:ListItem Value="green">Zielony</asp:ListItem>
				<asp:ListItem Value="blue">Niebieski</asp:ListItem>
			</asp:DropDownList>
		</div>
		<div>
			<asp:RadioButtonList ID="RadioButtonList1" runat="server">
				<asp:ListItem Value="rb">Robert B.</asp:ListItem>
				<asp:ListItem Value="ad">Andrzej D.</asp:ListItem>
				<asp:ListItem Value="rt">Rafał T.</asp:ListItem>
			</asp:RadioButtonList>
		</div>
		<div>
			<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
		</div>
		<div>
			<asp:Button ID="btn" runat="server" Text="Button" />
		</div>
    </form>
</body>
</html>
