<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="paymentdetail.aspx.cs" Inherits="paymentdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3l_banner_nav_right">
            <!-- mail -->
            <div class="mail">
                <h3>Mail Us</h3>
                <div class="agileinfo_mail_grids">
                    <div class="col-md-4 agileinfo_mail_grid_left">
                        <ul>
                            <li><i class="fa fa-home" aria-hidden="true"></i></li>
                            <li>address<span>868 1st Avenue NYC.</span></li>
                        </ul>
                        <ul>
                            <li><i class="fa fa-envelope" aria-hidden="true"></i></li>
                            <li>email<span><a href="mailto:info@example.com">info@example.com</a></span></li>
                        </ul>
                       
                        <ul>
                            <li><i class="fa fa-phone" aria-hidden="true"></i></li>
                            <li>call us<span>+91 233 2362 826</span></li>
                        </ul>
                    </div>
                    <div class="col-md-8 agileinfo_mail_grid_right">
                        <form action="#" method="post">
                            <div class="col-md-6 wthree_contact_left_grid">
                                <asp:TextBox ID="TextBox1" runat="server"  type="text" name="Name" value="Name*" style="border:1px solid;" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name*';}" required=""></asp:TextBox>
                               <%-- <input type="text" name="Name" value="Name*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name*';}" required="">--%>
                                <asp:TextBox ID="TextBox2" runat="server" type="email" name="Email" value="Email*"  style="border:1px solid;" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email*';}" required=""></asp:TextBox>
                                <%--<input type="email" name="Email" value="Email*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email*';}" required="">--%>
                            </div>
                            <div class="col-md-6 wthree_contact_left_grid">
                                <asp:TextBox ID="TextBox3" runat="server" type="text" name="Telephone" value="Telephone*"  style="border:1px solid;" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone*';}" required=""></asp:TextBox>
                                <%--<input type="text" name="Telephone" value="Telephone*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone*';}" required="">--%>
                                <asp:TextBox ID="TextBox4" runat="server" type="text" name="Product" value="Product*"  style="border:1px solid;" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject*';}" required=""></asp:TextBox>
                                <%--<input type="text" name="Product" value="Product*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject*';}" required="">--%>
                            </div>
                            <div class="col-md-6 wthree_contact_left_grid">
                                <asp:DropDownList ID="DropDownList1" runat="server" type="text" name="State" value="Bihar*" Style="margin-top:10px; width:100%; height:45px; background-color:#f1f1f1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'State*';}" required="">
                                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                                    <asp:ListItem>Jharkhand</asp:ListItem>
                                    <asp:ListItem>Assam</asp:ListItem>
                                    <asp:ListItem Selected="true">Bihar</asp:ListItem>
                                    <asp:ListItem>Chhattisgarh</asp:ListItem>
                                    <asp:ListItem>Goa</asp:ListItem>
                                    <asp:ListItem>Gujarat</asp:ListItem>
                                    <asp:ListItem>Haryana</asp:ListItem>
                                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                                    <asp:ListItem>Jharkhand</asp:ListItem>
                                    <asp:ListItem>Karnataka</asp:ListItem>
                                    <asp:ListItem>Kerala</asp:ListItem>
                                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                    <asp:ListItem>Maharashtra</asp:ListItem>
                                    <asp:ListItem>Manipur</asp:ListItem>
                                    <asp:ListItem>Meghalaya</asp:ListItem>
                                    <asp:ListItem>Mizoram</asp:ListItem>
                                    <asp:ListItem>Nagaland</asp:ListItem>
                                    <asp:ListItem>Odisha</asp:ListItem>
                                    <asp:ListItem>Punjab</asp:ListItem>
                                    <asp:ListItem>Rajasthan</asp:ListItem>
                                    <asp:ListItem>Sikkim</asp:ListItem>
                                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                                    <asp:ListItem>Telangana</asp:ListItem>
                                    <asp:ListItem>Tripura</asp:ListItem>
                                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                    <asp:ListItem>Uttarakhand</asp:ListItem>
                                    <asp:ListItem>West Bengal</asp:ListItem>
                                </asp:DropDownList>
                               <%-- <asp:TextBox ID="TextBox5" runat="server" type="text" name="State" value="State*" Style="margin-top:10px; width:200px;" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'State*';}" required=""></asp:TextBox>--%>
                                <%--<input type="text" name="State" value="State*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'State*';}" required="">--%>
                            </div>
                            <div class="col-md-6 wthree_contact_left_grid">
                                <asp:TextBox ID="TextBox6" runat="server" type="text" name="Country" value="India*" Style="margin-top:10px; border:1px solid;" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Country*';}" required=""></asp:TextBox>
                              <%-- <input type="text" name="Country" value="Country*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Country*';}" required="">--%>
                            </div>
                            <div class="clearfix"> </div><br />
                            <asp:TextBox ID="TextBox7" runat="server" name="Message" Style="border:1px solid;" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="" height="100px">Message..</asp:TextBox>
                            <%--<textarea name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>--%>
                       
                            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" Style="margin-top:10px; Width:100px;" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="Clear" class="btn btn-primary" Style="margin-top:10px; Width:100px;" />
                           <%-- <input type="submit" value="Submit">--%>
                            <%--<input type="reset" value="Clear">--%>
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <!-- //mail -->
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- //banner -->
    <!-- map -->
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d96748.15352429623!2d-74.25419879353115!3d40.731667701988506!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sshopping+mall+in+New+York%2C+NY%2C+United+States!5e0!3m2!1sen!2sin!4v1467205237951" style="border:0"></iframe>
    </div>
    <!-- //map -->
</asp:Content>

