<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="data.aspx.cs" Inherits="FireExtinguisher.data" %>

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
    <div class="data-body"  id="body">
        <div class="data-row-01">
            <div class="data-logo">
                <img src="img/logo.png" alt="">
            </div>
            <div class="data-edit">
           <a href="/edit.aspx"> 
            
                <img src="img/edit.png" alt="" id="edit">
                <!--- <img src="img/edit.png" alt="" id="Img1"onclick="openPop()"> --->
                 </a> 
            </div>
        </div>
        <div class="data-info">
            <div class="login-screen" id="login-screen">
                


    <div class="box" id="box">
        <div class="logo">
            <img src="img/logo.png" alt="">
        </div>
        <div class="input_area">
            <div class="input-data">
                <input type="text" name="username" id="username">
                <span class="input-text">Username*</span>
            </div>
            <div class="input-data">
                <input type="password" name="password" id="password" >
                <span class="Password-text">Password*</span>
            </div>
            <div class="input-data">
                <label for="remaind" id="remaind">
                    <input type="checkbox">
                    <span>Remember Me</span>
                </label>
            </div>
            <div class="input-data" id="sign-in-button">
                <button onclick="signup()">Sign In</button>
            </div>
            
        </div>
    </div>

            </div>

            
        </div>
        <div class="FE-info">
            <div class="info-head">
                Heading
            </div>
            <div class="info-body">
                <div class="row-01">
                    <div class="inner-data_01">
                        <div class="part_01">
                            Dept
                        </div>
                        <div style="display: flex;">
                            AV
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Location</div>
                        <div style="display: flex;">
                            AV
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            Ext-No
                        </div>
                        <div style="display: flex;">
                            AV
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Type</div>
                        <div style="display: flex;">
                            AV
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            Capacity
                        </div>
                        <div style="display: flex;">
                            AV
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Make</div>
                        <div style="display: flex;">
                            AV
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            MFG_YR
                        </div>
                        <div style="display: flex;">
                            AV
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Cylinder No</div>
                        <div style="display: flex;">
                            AV
                        </div>
                    </div>
                  
            </div>
        </div>
    </div>

    <script src="js/script.js"></script>
    </form>
</body>
</html>
