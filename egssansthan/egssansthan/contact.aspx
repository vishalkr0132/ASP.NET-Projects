<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- <main id="main">--%>

    <!--==========================
      About Us Section
    ============================-->
    <section id="intro" class="clearfix">
    <div class="container d-flex h-100">
  <%--    <div class="row justify-content-center align-self-center">--%>
  <div class="row">
  <div class="col-md-12">
       <%-- <div class="col-md-6 intro-info order-md-first order-last">
          <h2> </h2>
          <div>
            <a href="#about" class="btn-get-started scrollto"></a>
          </div>
        </div>--%>
  
        <%--<div class="col-md-12 intro-img order-md-last order-first">--%>
          <img src="img/" alt="" class="img-fluid" />
        <%--</div>--%>
      </div> 
      </div>

    </div>
  </section><!-- #intro -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="message"   style="text-align:center;background-color:Gray;">
          <h4>Send us a message</h4>
             <%-- <form action="#">
								<div class="row">
									<div class="col-md-6 row-grid">
									<asp:TextBox ID="txtname" runat="server" type="text" name="Name" placeholder="Your Name" ></asp:TextBox>
									</div>
										<div class="col-md-6 row-grid">
											<asp:TextBox ID="TextBox2" runat="server" type="text" name="Email" placeholder="Your Email"></asp:TextBox>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="row">
									<div class="col-md-6 row-grid">
									<asp:TextBox ID="TextBox3" runat="server" type="text" name="Subject" placeholder="Subject"></asp:TextBox>
									</div>
										<div class="col-md-6 row-grid">
									<asp:TextBox ID="TextBox4" runat="server" type="text" name="phone" placeholder="Your Phone"></asp:TextBox>
									</div>
									<div class="clearfix"></div>
								</div>
								<asp:TextBox ID="TextBox1" runat="server" type="text" TextMode="MultiLine" name="" placeholder="Message"></asp:TextBox>
								<asp:Button ID="btn1" runat="server" type="button" text="Send" 
                                    onclick="btn1_Click" />
							</form>--%>

                            <form action="#" method="post">
								    <div class="form-group">
									<asp:TextBox ID="txtname" runat="server" type="text" name="Name" placeholder="Your Name" ></asp:TextBox>
									</div>
									<div class="form-group">
								    <asp:TextBox ID="TextBox2" runat="server" type="text" name="Email" placeholder="Your Email"></asp:TextBox>
									</div>
									<%--<div class="form-group">
									<asp:TextBox ID="TextBox3" runat="server" type="text" name="Subject" placeholder="Subject"></asp:TextBox>
									</div>--%>
									<div class="form-group">
									<asp:TextBox ID="TextBox4" runat="server" type="text" name="phone" placeholder="Your Phone"></asp:TextBox>
									</div>
                                    <div class="form-group">
								    <asp:TextBox ID="TextBox1" runat="server"  type="text" TextMode="MultiLine" name="" placeholder="Message" class="form-group"></asp:TextBox>
								    </div>
                                    <asp:Button ID="btn1" runat="server" type="button" text="Send" 
                                    onclick="btn1_Click" class="btn btn-primary" />
							</form>
            
            </div>
</asp:Content>

