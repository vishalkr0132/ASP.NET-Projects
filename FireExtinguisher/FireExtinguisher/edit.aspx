<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="FireExtinguisher.edit" %>

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
                Heading
            </div>
            <div class="info-body">
                <div class="row-01">
                    <div class="inner-data_01">
                        <div class="part_01">
                            Safety clip
                        </div>
                        <div style="display: flex;">
                           <!-- <input type="text" placeholder="Input here" name="safety_clip">-->
                            <asp:TextBox ID="TextBox1" runat="server"  placeholder="Input here" name="safety_clip"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Safety Pin</div>
                        <div style="display: flex;">
                            
                          <!-- <input type="text" name="safety_pin"> -->
                            <asp:TextBox ID="TextBox2" runat="server" name="safety_pin"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            House/Hon
                        </div>
                        <div style="display: flex;">
                           <!-- <input type="text" placeholder="Input here" name="house"> -->
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Input here" name="house"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Neck Handle</div>
                        <div style="display: flex;">
                           <!-- <input type="text" name="nech_handle"> -->
                            <asp:TextBox ID="TextBox4" runat="server" name="nech_handle"></asp:TextBox>
                       </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            Rubber Push
                        </div>
                        <div style="display: flex;">
                          <!--  <input type="text" placeholder="Input here" name="ruber_push"> -->
                            <asp:TextBox ID="TextBox5" runat="server"  placeholder="Input here" name="ruber_push"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Botton Belt</div>
                        <div style="display: flex;">
                            <!-- <input type="text" name="botton_belt"> -->
                            <asp:TextBox ID="TextBox6" runat="server" name="botton_belt"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            Top Wheel
                        </div>
                        <div style="display: flex;">
                           <!-- <input type="text" placeholder="Input here" name="top_wheel"> -->
                            <asp:TextBox ID="TextBox7" runat="server" placeholder="Input here" name="top_wheel"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Neck Ring</div>
                        <div style="display: flex;">
                           <!-- <input type="text" name="neck_ring"> -->
                            <asp:TextBox ID="TextBox8" runat="server" name="neck_ring"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            Wall Clamp
                        </div>
                        <div style="display: flex;">
                            <!-- <input type="text" placeholder="Input here" name="wall_clamp"> -->
                            <asp:TextBox ID="TextBox9" runat="server" placeholder="Input here" name="wall_clamp"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Wheel Set</div>
                        <div style="display: flex;">
                           <!-- <input type="text" name="whell_set"> -->
                            <asp:TextBox ID="TextBox10" runat="server" name="whell_set"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            Opration Sticker
                        </div>
                        <div style="display: flex;">
                           <!-- <input type="text" placeholder="Input here" name="opratio_sticker"> -->
                            <asp:TextBox ID="TextBox11" runat="server" placeholder="Input here" name="opratio_sticker"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Treasure Gaurd</div>
                        <div style="display: flex;">
                          <!--  <input type="text" name="preasure_gaurd"> -->
                            <asp:TextBox ID="TextBox12" runat="server" name="preasure_gaurd"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_01">
                        <div class="part_01">
                            Remark
                        </div>
                        <div style="display: flex;">
                           <!-- <input type="text" placeholder="Input here" name="remark"> -->
                            <asp:TextBox ID="TextBox13" runat="server"  placeholder="Input here" name="remark"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inner-data_02 ">
                        <div class="part_01"> Inspected By</div>
                        <div style="display: flex;">
                           <!-- <input type="text" name="inspected_by"> -->
                            <asp:TextBox ID="TextBox14" runat="server" name="inspected_by"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Submit Now" 
                    onclick="Button1_Click" />

            </div>
        </div>
    </div>

    <script src="js/script.js"></script>
    </form>
</body>
</html>
