<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="LOGINFORM_web_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  
<title>Sriganpatitravels</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gaming Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<div class="padding-all">
		<div class="header">
			<h1><%--<img src="./images/5.png" alt=" ">--%>Login</h1>
		</div>

		<div class="design-w3l">
			<div class="mail-form-agile">  <div style="text-align:right; color:Yellow;"><a href="">Go to Home</a></div>
				<form action="#" method="post" runat="server">
                
					<asp:TextBox runat="server" ID="u1" type="text" name="name" placeholder="Enter User Name " required=""></asp:TextBox>
					<asp:TextBox  runat="server" ID="P1" type="password"  name="password" class="padding" placeholder="Enter Password" required=""></asp:TextBox>
					<asp:Button runat="server" ID="B1" type="submit" Text="Submit" value="submit"/>
				</form>
			</div>
		  <div class="clear"> </div>
		</div>
		
		<div class="footer">
		<p>© 2022 Sriganpatitravels. All Rights Reserved | Design by  <a href="#" >  Anupitsolution Call-6205754776 </a></p>
		</div>
	</div>
    <%--<form id="form2" runat="server">
    <div>
    
    </div>
    </form>--%>
    <%--<form id="form1" runat="server">
    <div>
    
    </div>
    </form>--%>
</body>
</html>
