<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterVisit2.aspx.cs" Inherits="MyDoctor.RegisterVisit2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Nowa wizyta - szczegóły</h3>
<table class="table" border="0">
    <tr>
        <td>
            <asp:Label ID="lblDescr" runat="server" Text="Label"></asp:Label>
        </td>

    </tr>
    <tr>
        <td>
            Opis
        </td>
        <td>
            <asp:TextBox ID="tbDescr" runat="server" Height="84px" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Plik graficzny (PNG)</td>
        <td>
            <asp:FileUpload ID="fuImage" runat="server" width="400px"/>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnOK" runat="server" Text="Zapisz mnie" OnClick="btnOK_Click" />
        </td>
    </tr>

</table>
</asp:Content>

