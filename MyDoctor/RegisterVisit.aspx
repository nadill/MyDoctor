<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterVisit.aspx.cs" Inherits="MyDoctor.RegisterVisit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.js"></script>
	<script type="text/javascript">
		$(function () {
			// maska dla pesel
			$('#<%= tbPesel.ClientID %>').mask("9999999999");
		});

		function checkPesel(sender, args) {
			args.IsValid = (args.Value.length == 11)
        }
    </script>

	<h3>Nowa wizyta</h3>
	<table border="0" class="table">
		<tr>
			<td>
				Imię
			</td>
			<td>
				<asp:TextBox ID="tbFName" runat="server" Width="200"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Podaj imię" ControlToValidate="tbFName" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>

			</td>
		</tr>
		<tr>
			<td>
				Nazwisko
			</td>
			<td>
				<asp:TextBox ID="tbLName" runat="server" Width="200"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Podaj nazwisko" ControlToValidate="tbLName" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td>
				Pesel
			</td>
			<td>
				<asp:TextBox ID="tbPesel" runat="server" Width="200"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ControlToValidate="tbPesel" Display="Dynamic" ClientValidationFunction="checkPesel" ValidateEmptyText="True" ForeColor="Red">*</asp:CustomValidator>
			</td>
		</tr>
		<tr>
			<td>
				Email
			</td>
			<td>
				<asp:TextBox ID="tbEmail" runat="server" Width="200" AutoCompleteType="Email"></asp:TextBox>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Podany email jest nieprawidłowy" ControlToValidate="tbEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic">*</asp:RegularExpressionValidator>
				<br /><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Podaj pesel" ControlToValidate="tbEmail" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td>
				Klient VIP
			</td>
			<td>
				<asp:CheckBox ID="cbVip" runat="server" OnCheckedChanged="cbVip_CheckedChanged" AutoPostBack="True" /><br />
				<asp:TextBox ID="tbVipNumber" runat="server" Visible="False">*</asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>
				Lekarz
			</td>
			<td>
				<asp:DropDownList ID="ddDoctor" runat="server" Width="200px" ControlToValidate="ddDoctor" ClientIDMode="Inherit">
					<asp:ListItem Value="-1">------------</asp:ListItem>
					<asp:ListItem Value="1">Jan Kowalski - Pediatra</asp:ListItem>
					<asp:ListItem Value="2">Janina Ziętek - Dermatolog</asp:ListItem>
					<asp:ListItem Value="3">Mirosław Baka - Kardiolog</asp:ListItem>
				</asp:DropDownList><br />
				<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Wybierz lekarza" MinimumValue="1" Type="Integer" MaximumValue="999999" ControlToValidate="ddDoctor" ForeColor="Red" Display="Dynamic">*</asp:RangeValidator>
			</td>
		</tr>
		<tr>
			<td>
				Data
			</td>
			<td>
				<asp:Calendar ID="calVisitDate" runat="server" ShowGridLines="True" Width="251px"></asp:Calendar>
			</td>
		</tr>
		
		<tr>
			<td>

			</td>
			<td>
				<asp:Button ID="btnOK" runat="server" Text="Zapisz na wizytę" OnClick="btnOK_Click" /><br />
				<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
			</td>
			
		</tr>

	</table>
</asp:Content>
