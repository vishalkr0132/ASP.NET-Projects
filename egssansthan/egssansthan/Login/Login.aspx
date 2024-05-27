<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
	<!-- css files -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	 rel="stylesheet">
	<!-- //web-fonts -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="main-bg">
		<!-- title -->
		<h1>Latest Login Form</h1>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3">
			<div class="bg-content-w3pvt">
				<div class="top-content-style">
				</div>
				<form action="#" method="post">
					<p class="legend">Login Here<span class="fa fa-hand-o-down"></span></p>
					<div class="input">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
						<span class="fa fa-envelope"></span>
					</div>
					<div class="input">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="password" placeholder="Password"></asp:TextBox>
						<span class="fa fa-unlock"></span>
					</div>
                    <asp:LinkButton ID="btnLogin" runat="server" class="btnLogin" Text="Login" 
                        onclick="btnLogin_Click"></asp:LinkButton>
					
				<asp:LinkButton ID="btnSignup" runat="server" class="btnLogin" Text="Signup" 
                        onclick="btnSignup_Click"></asp:LinkButton>
				</form>
		</div>
    </div>
    </form>
</body>
</html>
