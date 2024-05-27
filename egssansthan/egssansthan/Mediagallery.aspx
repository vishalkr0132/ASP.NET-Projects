<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mediagallery.aspx.cs" Inherits="Mediagallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section id="intro1" class="clearfix">
    <div class="container d-flex h-100">
      <div class="row justify-content-center align-self-center">
        <div class="col-md-6 intro-info order-md-first order-last">
          <h2> </h2>
         <%-- <div>
            <a href="#about" class="btn-get-started scrollto"></a>
          </div>--%>
        </div>
  
        <div class="col-md-6 intro-img order-md-last order-first">
          <img src="img/ngo1.jpg" alt="" class="img-fluid"/>
        </div>
      </div>

    </div>
  </section><!-- #intro -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="portfolio" class="section-bg">
      <div class="container">

        <header class="section-header">
          <h3 class="section-title">Media Gallery</h3>
        </header>

 

        
         <div class="row portfolio-container">
            <asp:Repeater ID="rep2" runat="server">
                <ItemTemplate>
                  <div class="col-lg-4 col-md-6 portfolio-item">
                    <div class="portfolio-wrap">
                      <img src="<%# Eval("imgurl", "galleryImg/{0}") %>" class="img-fluid center" alt="" style="height:200px; width:250px;">
                      <div class="portfolio-info">
                        <h4><a href="#"><%#Eval("OfferType") %></a></h4>
                        <div>
                          <a href="<%# Eval("imgurl", "galleryImg/{0}") %>" data-lightbox="portfolio" data-title="<%# Eval("OfferType") %>" class="link-preview" title="Preview"><i class="ion ion-eye"></i></a>
                          <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>

              </ItemTemplate>
            </asp:Repeater>
         </div>

   </section><!-- #portfolio -->
  <%--  </div>--%>
</asp:Content>

