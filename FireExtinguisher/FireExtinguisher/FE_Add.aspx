<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FE_Add.aspx.cs" Inherits="FireExtinguisher.FE_Add" %>

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
                <span>Admin-Name</span>
            </div>
        </div>
        <div class="data-info">
            <div class="login-screen" id="login-screen">
            </div>
        </div>
        <div class="FE-info-div">
            <div class="info-head">
                Add FE
            </div>
            <div class="info-body">
                <div class="row-01">
                    <div class="inner-data_01">
                        <div class="part_01">
                            Dept
                        </div>
                        <div style="display: flex;">
                            <asp:TextBox ID="TextBox1" runat="server" name="dept"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Location</div>
                        <div style="display: flex;">
                                <asp:TextBox ID="TextBox2" runat="server" name="location" required=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            Ext-No
                        </div>
                        <div style="display: flex;">
                             <asp:TextBox ID="TextBox3" runat="server"  placeholder="Input here" name="ext_no" required=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Type</div>
                        <div style="display: flex;">
                            <asp:TextBox ID="TextBox4" runat="server"  name="type" required=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            Capacity
                        </div>
                        <div style="display: flex;">
                             <asp:TextBox ID="TextBox5" runat="server" placeholder="Input here" name="capacity" required=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Make</div>
                        <div style="display: flex;">
                             <asp:TextBox ID="TextBox6" runat="server" name="make" required=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            MFG_YR
                        </div>
                        <div style="display: flex;">
                             <asp:TextBox ID="TextBox7" runat="server" placeholder="Input here" name="mfg_yr" required=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Cylinder No</div>
                        <div style="display: flex;">
                            <asp:TextBox ID="TextBox8" runat="server" name="cylinder_no"></asp:TextBox>
                        </div>
                    </div>
                <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />


            </div>
        </div>
    </div>

    <script src="js/script.js"></script>
    </form>
</body>
</html>
