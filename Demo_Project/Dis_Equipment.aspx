<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dis_Equipment.aspx.cs" Inherits="Demo_Project.WebForm10" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	<form id="form1" runat="server">
		<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black">
			<Columns>
				<asp:BoundField DataField="Srno" HeaderText="Srno" ReadOnly="True" SortExpression="Srno" />
				<asp:BoundField DataField="EquipmentName" HeaderText="EquipmentName" SortExpression="EquipmentName" />
				<asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
				<asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
				<asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
			</Columns>
			<FooterStyle BackColor="#CCCCCC" />
			<HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
			<RowStyle BackColor="White" />
			<SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#F1F1F1" />
			<SortedAscendingHeaderStyle BackColor="#808080" />
			<SortedDescendingCellStyle BackColor="#CAC9C9" />
			<SortedDescendingHeaderStyle BackColor="#383838" />
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sem_ProjectConnectionString1 %>" ProviderName="<%$ ConnectionStrings:Sem_ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [Srno], [EquipmentName], [Quantity], [Type], [Weight] FROM [Equipment]"></asp:SqlDataSource>
	</form>
</asp:Content>
