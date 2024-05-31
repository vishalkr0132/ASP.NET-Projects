<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FireExtinguisher.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="data-body">

    <form id="form1" runat="server">
    <div class="box">
        <div class="logo">
            <img src="img/JSW_Group_logo.svg" alt="">
        </div>
        <div class="input_area">
            <div class="input-data">
                <asp:TextBox ID="TextBox1" runat="server" name="username" class="username"></asp:TextBox>
             <span class="input-text">Username*</span>  
            </div>
            <div class="input-data">
                <asp:TextBox ID="TextBox2" runat="server" name="password" class="password"></asp:TextBox>
           <span class="Password-text">Password*</span> 
            </div>
            <div class="input-data">
                <label for="remaind" id="remaind">
                    <input type="checkbox">
                    <span>Remember Me</span>
                </label>
            </div>
            <div class="input-data" id="sign-in-button">
                <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
            </div>
            
        </div>
    </div>
    </form>
    </div>
    <script src="js/script.js"></script>
    
</body>
</html>
