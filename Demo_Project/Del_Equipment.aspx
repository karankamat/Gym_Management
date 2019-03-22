<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Del_Equipment.aspx.cs" Inherits="Demo_Project.WebForm11" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	<form id="form1" runat="server">
		<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
			<Columns>
				<asp:BoundField DataField="Srno" HeaderText="Srno" ReadOnly="True" SortExpression="Srno" />
				<asp:BoundField DataField="EquipmentName" HeaderText="EquipmentName" SortExpression="EquipmentName" />
				<asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
				<asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
				<asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sem_ProjectConnectionString1 %>" ProviderName="<%$ ConnectionStrings:Sem_ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [Srno], [EquipmentName], [Quantity], [Type], [Weight] FROM [Equipment]"></asp:SqlDataSource>
</form>
</asp:Content>
