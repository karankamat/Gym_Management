<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Demo_Project.WebForm3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	<link href="Style%20Sheets/Employee.css" rel="stylesheet" />
	<div class="bg-img">
		  <form class="container" runat="server">
				<h1 style="font-size:38px">Employee Registeration</h1>
				<asp:literal ID="l1" runat="server" ></asp:literal>

			<div class="input">
				<asp:Label ID="Label1" runat="server" Text="First Name:" Font-Bold="True"></asp:Label>
				<asp:TextBox ID="tb1" runat="server"  type="text" placeholder="First Name" required class="validate" autocomplete="off" CssClass="input" AutoPostBack="False"></asp:TextBox>

				<asp:Label ID="Label2" runat="server" Text="Last Name:" Font-Bold="True"></asp:Label>
				<asp:TextBox ID="tb2" runat="server" type="text" placeholder="Last Name"  class="validate" autocomplete="off" CssClass="input" AutoPostBack="False"></asp:TextBox>

				<asp:Label ID="Label3" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
				<asp:TextBox ID="tb3" runat="server" type="email" placeholder="Email" required class="validate" autocomplete="off" CssClass="input" AutoPostBack="False"></asp:TextBox>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="tb3" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
				<br />

				<asp:Label ID="Label4" runat="server" Text="Contact:" Font-Bold="True"></asp:Label><br />
				<asp:TextBox ID="tb4" runat="server" type="text" placeholder="Number" required  class="validate" autocomplete="off" CssClass="input"></asp:TextBox>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Number" ControlToValidate="tb4" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
				<br />

				<asp:Label ID="Label5" runat="server" Text="Gender:" Font-Bold="True" required></asp:Label><br />
				<asp:RadioButton ID="rbtnMale" runat="server" GroupName="gender" Text="Male"/>
				<asp:RadioButton ID="rbtnFemale" runat="server" GroupName="gender" Text="Female"/>
				<br />
				<br />

				<asp:Label ID="Label6" runat="server" Text="Designation:" Font-Bold="True"></asp:Label><br />
				<asp:RadioButton ID="rbtnTrainer" runat="server" GroupName="employee" Text="Trainer"/>
				<br />
				<asp:RadioButton ID="rbtnFloorManager" runat="server" GroupName="employee" Text="Floor Manager"/>
				<br />
				<asp:RadioButton ID="rbtnCleaningStaff" runat="server" GroupName="employee" Text="Cleaning Staff"/>
				<br />
				<br />
			</div>
			  <div class="btn">
				  <asp:Button runat="server" CssClass="btn" Text="Insert" Onclick="BtnSave_Click" Width="224px" Height="45px"  Font-Bold="True"/> 
			  </div><br />
			  <div class="btn">
				  <asp:Button runat="server" CssClass="btn" Text="Reset" Onclick="Button1_Click"  Width="224px" Height="45px"  Font-Bold="True"/>
			  </div>
		  </form>
	</div>
</asp:Content>
