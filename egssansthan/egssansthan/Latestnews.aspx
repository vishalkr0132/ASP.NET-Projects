<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Latestnews.aspx.cs" Inherits="Latestnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="team" class="section-bg">
      <div class="container">
        <div class="section-header">
          <h3>latest news</h3>
          <p></p>
        </div>

        <div class="row">

        <asp:Repeater ID="rep4" runat="server">
            <ItemTemplate>
            <div class="col-lg-3 col-md-6 wow fadeInUp">
            <div class="member">
            <img src="<%# Eval("imgurl", "teacherImg/{0}") %>" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4><%#Eval("date") %></h4>
                  <span><%#Eval("title") %>, <%#Eval("description") %></span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </ItemTemplate>
        </asp:Repeater>
          

          

      </div>
    </section><!-- #team -->
</asp:Content>

