<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Sign In & Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
					<div class="tooltip">Click Me</div>
				  </div>
				  <div class="form">
					<h2>Login to your account</h2>
					<form action="#" method="post">
						<asp:TextBox ID="TextBox1" runat="server" name="Username" placeholder="Username" required=" "></asp:TextBox>
					  <%--<input type="text" name="Username" placeholder="Username" required=" ">--%>
						<asp:TextBox ID="TextBox2" runat="server" name="Password" placeholder="Password" required=" "></asp:TextBox>
					  <%--<input type="password" name="Password" placeholder="Password" required=" ">--%>
						<asp:Button ID="Button1" runat="server" Text="Login" style="border-radius:15px;" />
					  <%--<input type="submit" value="Login">--%>
					</form>
				  </div>
				  <div class="form">
					<h2>Create an account</h2>
					<form action="#" method="post">
						<asp:TextBox ID="TextBox3" runat="server" name="Username" placeholder="Username" required=" "></asp:TextBox>
					  <%--<input type="text" name="Username" placeholder="Username" required=" ">--%>
						<asp:TextBox ID="TextBox4" runat="server" name="Password" placeholder="Password" required=" "></asp:TextBox>
					  <%--<input type="password" name="Password" placeholder="Password" required=" ">--%>
						<asp:TextBox ID="TextBox5" runat="server" name="Email" placeholder="Email Address" required=" "></asp:TextBox>
					  <%--<input type="email" name="Email" placeholder="Email Address" required=" ">--%>
						<asp:TextBox ID="TextBox6" runat="server" name="Phone" placeholder="Phone Number" required=" "></asp:TextBox>
					  <%--<input type="text" name="Phone" placeholder="Phone Number" required=" ">--%>
						<asp:Button ID="Button2" runat="server" Text="Register" style="border-radius:15px;" />
					  <%--<input type="submit" value="Register">--%>
					</form>
				  </div>
				  <%--<div class="cta"><a href="#">Forgot your password?</a></div>--%>
				</div>
			</div>
			<script>
				$('.toggle').click(function(){
				  // Switches the Icon
				  $(this).children('i').toggleClass('fa-pencil');
				  // Switches the forms  
				  $('.form').animate({
					height: "toggle",
					'padding-top': 'toggle',
					'padding-bottom': 'toggle',
					opacity: "toggle"
				  }, "slow");
				});
            </script>
		</div>
<!-- //login -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
</asp:Content>

