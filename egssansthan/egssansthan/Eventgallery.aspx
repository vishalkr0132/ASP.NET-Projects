<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Eventgallery.aspx.cs" Inherits="Eventgallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="services" class="section-bg">
      <div class="container">

        <header class="section-header">
          <h3>Events</h3>
          <p></p>
        </header>

        <div class="row">

        <asp:Repeater ID="rep1" runat="server">
            <ItemTemplate>
                <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
                    <div class="box">
                      <div class="icon" style="background: #fceef3;"><i class="ion-ios-analytics-outline" style="color: #ff689b;"></i></div>
                      <h4 class="title"><a href=""><%#Eval("Title") %></a></h4>
                      <div><img src="<%# Eval("imgurl", "eventImg/{0}") %>" alt="img" class="img-fluid" style="height:200px; width:250px;" ></div>
                      <p class="description"><b><%#Eval("Date") %></b></p>
                      <p class="description"><%#Eval("Description") %></p>
                    </div>
                  </div>
            </ItemTemplate>
        </asp:Repeater>
          

        </div>

      </div>
    </section><!-- #services -->
</asp:Content>

