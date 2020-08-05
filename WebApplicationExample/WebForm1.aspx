<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplicationExample.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <b>Moja strona ASP.NET</b>
        </div>
        <div>
			<asp:Label ID="lblText" runat="server" Text="Tekst informacyjny aplikacji ASP.Net" BackColor="Yellow" Font-Size="XX-Large" ForeColor="#FF5050" Font-Bold="True"></asp:Label>
        </div>
        <div>
			<asp:Label ID="lblInfo" runat="server" Font-Size="X-Large" Text="Napis"></asp:Label>
        </div>
        <div>
			<asp:TextBox ID="tbName" runat="server" Width="200px"></asp:TextBox>
        </div>
        <div>
			<asp:Button ID="btnOK" runat="server" Text="OK" Height="50px" Width="100px" OnClick="btnOK_Click" />
        </div>
    </form>
</body>
</html>
