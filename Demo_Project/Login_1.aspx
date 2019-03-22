<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_1.aspx.cs" Inherits="Demo_Project.Login_1" %>

<! DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="description" content="Login">
    <meta name="author" content="Karan_Kamat">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="Style Sheets/login.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        body {
            background-color: #303641;
        }
    </style>
</head>

<body>
    <div id="container-login">
        <div id="title">
            <i class="material-icons lock">lock</i> Login
        </div>

        <form runat="server">
			<div class="input">
				<asp:Label runat="server" ID="l1" BackColor="#373B3D" type="text" CssClass="input" ForeColor="Red"/>
			</div>
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <asp:TextBox ID="tb1" runat="server" CssClass="input" type="text" placeholder="Username" required class="validate" autocomplete="off"></asp:TextBox>

            </div>

            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">vpn_key</i>
                </div>
				<asp:TextBox ID="tb2" runat="server" CssClass="input" type="password" placeholder="Password" required class="validate" autocomplete="off"></asp:TextBox>
            </div>        

			<asp:Button runat="server" OnClick="Unnamed1_Click" Text="Login" CssClass="input" Width="183px" /> 
        </form>

        <div class="forgot-password">
            <a href="#">Forgot your password?</a>
        </div>
        
    </div>
	
</body>

</html>
