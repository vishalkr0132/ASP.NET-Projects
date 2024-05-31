<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FE_list.aspx.cs" Inherits="FireExtinguisher.FE_list" %>

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
    <form id="form1" runat="server">
    <div class="data-body" id="body">
        <div class="data-row-01">
            <div class="data-logo">
                <img src="img/logo.png" alt="">
            </div>
            <div class="data-edit" style="text-align: end;">
            <a href="/FE_Add.aspx">
                <span>Add-New</span>
            </a>
            </div>
        </div>
        <div class="data-info">
            <div class="login-screen" id="login-screen">
            </div>
        </div>
        
        <div class="fe-list">
            <ul class="list-head">
                <li>Dept</li>
                <li>Location</li>
                <li>Ext-No</li>
                <li>Type</li>
                <li>Capacity</li>
                <li>Make</li>
                <li>MFG_YR</li>
                <li>Cylinder No</li>
                <li>Status</li>
            </ul>
            <ul >
                <li>Dept</li>
                <li>Location</li>
                <li>Ext-No</li>
                <li>Type</li>
                <li>Capacity</li>
                <li>Make</li>
                <li>MFG_YR</li>
                <li>Cylinder No</li>
                <li>Status</li>
            </ul>
            <ul >
                <li>Dept</li>
                <li>Location</li>
                <li>Ext-No</li>
                <li>Type</li>
                <li>Capacity</li>
                <li>Make</li>
                <li>MFG_YR</li>
                <li>Cylinder No</li>
                <li>Status</li>
            </ul>
        </div>

    </div>

    <script src="js/script.js"></script>
    </form>
</body>
</html>
