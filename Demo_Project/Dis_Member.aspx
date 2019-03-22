<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dis_Member.aspx.cs" Inherits="Demo_Project.WebForm6" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	<form id="form1" runat="server">
	<asp:Panel ID="Panel1" runat="server">
		<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Srno" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
			<Columns>
				<asp:BoundField DataField="Srno" HeaderText="Srno" ReadOnly="True" SortExpression="Srno" />
				<asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
				<asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
				<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
				<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
				<asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
			</Columns>
			<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
			<HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
			<SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#F7F7F7" />
			<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
			<SortedDescendingCellStyle BackColor="#E5E5E5" />
			<SortedDescendingHeaderStyle BackColor="#242121" />
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sem_ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [Member] WHERE [Srno] = @Srno" InsertCommand="INSERT INTO [Member] ([FirstName], [LastName], [Email], [Gender], [Contact]) VALUES (@FirstName, @LastName, @Email, @Gender, @Contact)" ProviderName="<%$ ConnectionStrings:Sem_ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [Srno], [FirstName], [LastName], [Email], [Gender], [Contact] FROM [Member]" UpdateCommand="UPDATE [Member] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Gender] = @Gender, [Contact] = @Contact WHERE [Srno] = @Srno">
			<DeleteParameters>
				<asp:Parameter Name="Srno" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="FirstName" Type="String" />
				<asp:Parameter Name="LastName" Type="String" />
				<asp:Parameter Name="Email" Type="String" />
				<asp:Parameter Name="Gender" Type="String" />
				<asp:Parameter Name="Contact" Type="String" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="FirstName" Type="String" />
				<asp:Parameter Name="LastName" Type="String" />
				<asp:Parameter Name="Email" Type="String" />
				<asp:Parameter Name="Gender" Type="String" />
				<asp:Parameter Name="Contact" Type="String" />
				<asp:Parameter Name="Srno" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>

	</asp:Panel>
	</form>
</asp:Content>
