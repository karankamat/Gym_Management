<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Equipment.aspx.cs" Inherits="Demo_Project.WebForm5" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	<link href="Style%20Sheets/Equipment.css" rel="stylesheet" />
	<div class="bg-img">
		  <form class="container" runat="server">
			<h1 style="font-size:38px">Equipments</h1>
			<asp:literal ID="l1" runat="server" ></asp:literal>

			<div class="input">
				<asp:Label ID="Label1" runat="server" Text="Equipment Name:" Font-Bold="True"></asp:Label>
				<asp:TextBox ID="tb1" runat="server"  type="text" placeholder="Equipment" required class="validate" autocomplete="off" CssClass="input"></asp:TextBox>

				<asp:Label ID="Label2" runat="server" Text="Quantity:" Font-Bold="True"></asp:Label>
				<asp:TextBox ID="tb2" runat="server" type="number" placeholder="Number" required  class="validate" autocomplete="off" CssClass="input"></asp:TextBox>

				<asp:Label ID="Label3" runat="server" Text="Type:" Font-Bold="True"></asp:Label><br />
				<asp:RadioButton ID="rbtnCardio" runat="server" GroupName="EquipType" Text="Cardio"/>
				<asp:RadioButton ID="rbtnWeight" runat="server" GroupName="EquipType" Text="Weight"/>
				<br />
				<br />

				<asp:Label ID="Label4" runat="server" Text="Weight:" Font-Bold="True"></asp:Label>
				<asp:TextBox ID="tb3" runat="server" type="number" placeholder="Weight(kg)" required  class="validate" autocomplete="off" CssClass="input"></asp:TextBox>


			</div>
			  <div class="btn">
				  <asp:Button runat="server" CssClass="btn" Text="Insert" Onclick="BtnSave_Click" Width="224px" Height="45px"  Font-Bold="True"/> 
			  </div>
			  <div class="btn">
				  <asp:Button runat="server" CssClass="btn" Text="Reset" Onclick="Button1_Click" Width="224px" Height="45px"  Font-Bold="True"/>
			  </div>
		  </form>
	</div>
</asp:Content>
