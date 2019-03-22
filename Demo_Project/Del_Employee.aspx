<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Del_Employee.aspx.cs" Inherits="Demo_Project.WebForm9" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	<form id="form1" runat="server">
		<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Srno" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical">
			<AlternatingRowStyle BackColor="White" />
			<Columns>
				<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
				<asp:BoundField DataField="Srno" HeaderText="Srno" ReadOnly="True" SortExpression="Srno" />
				<asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
				<asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
				<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
				<asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
				<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
				<asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
			</Columns>
			<FooterStyle BackColor="#CCCC99" />
			<HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
			<RowStyle BackColor="#F7F7DE" />
			<SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#FBFBF2" />
			<SortedAscendingHeaderStyle BackColor="#848384" />
			<SortedDescendingCellStyle BackColor="#EAEAD3" />
			<SortedDescendingHeaderStyle BackColor="#575357" />
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sem_ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [Employee] WHERE [Srno] = @Srno" InsertCommand="INSERT INTO [Employee] ([FirstName], [LastName], [Email], [Contact], [Gender], [Designation]) VALUES (@FirstName, @LastName, @Email, @Contact, @Gender, @Designation)" ProviderName="<%$ ConnectionStrings:Sem_ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [Srno], [FirstName], [LastName], [Email], [Contact], [Gender], [Designation] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Contact] = @Contact, [Gender] = @Gender, [Designation] = @Designation WHERE [Srno] = @Srno">
			<DeleteParameters>
				<asp:Parameter Name="Srno" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="FirstName" Type="String" />
				<asp:Parameter Name="LastName" Type="String" />
				<asp:Parameter Name="Email" Type="String" />
				<asp:Parameter Name="Contact" Type="Decimal" />
				<asp:Parameter Name="Gender" Type="String" />
				<asp:Parameter Name="Designation" Type="String" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="FirstName" Type="String" />
				<asp:Parameter Name="LastName" Type="String" />
				<asp:Parameter Name="Email" Type="String" />
				<asp:Parameter Name="Contact" Type="Decimal" />
				<asp:Parameter Name="Gender" Type="String" />
				<asp:Parameter Name="Designation" Type="String" />
				<asp:Parameter Name="Srno" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>
	</form>
</asp:Content>
