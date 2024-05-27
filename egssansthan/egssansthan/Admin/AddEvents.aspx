﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddEvents.aspx.cs" Inherits="Admin_AddEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-lg-12 col-md-10">
 <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list single-page-breadcome">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <ul class="breadcome-menu">
                                            <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">Event Entery</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single pro tab start-->
        <div class="single-product-tab-area mg-tb-15">
            <!-- Single pro tab review Start-->
            <div class="single-pro-review-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="review-tab-pro-inner">
                                <ul id="myTab3" class="tab-review-design">
                                    <li class="active"><a href="#description"><i class="fa fa-pencil" aria-hidden="true"></i>Add Latest Events</a></li>
                                    <li><a href="#INFORMATION"><i class="fa fa-eye" aria-hidden="true"></i>View Events</a></li>
                                </ul>
                                <div id="myTabContent" class="tab-content custom-product-edit">
                                    <div class="product-tab-list tab-pane fade active in" id="description">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="review-content-section">
                                                    <div class="input-group mg-b-pro-edt">
                                                      <span class="input-group-addon"><i class="fa fa-tag" aria-hidden="true"></i></span>
                                                       <asp:TextBox ID="txtDate" runat="server" type="Date" class="form-control" placeholder="Date"></asp:TextBox>
                                                    </div>
                                                       <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="fa fa-product-hunt" aria-hidden="true"></i></span>
                                                        <asp:TextBox ID="txtTitle" runat="server" type="text" class="form-control" placeholder="Title"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="review-content-section">
                                                       <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="fa fa-product-hunt" aria-hidden="true"></i></span>
                                                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" class="form-control" placeholder="Description"></asp:TextBox>
                                                       </div>                       
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="fa fa-image" aria-hidden="true"></i></span>
                                                       <asp:FileUpload ID="FileUpload1" runat="server" />  
                                                    </div>
                                                </div>
                                            </div>
                                          </div>
                                        <div class="row">
                                         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="text-center mg-b-pro-edt custom-pro-edt-ds">
                                                    <asp:Button ID="Button1" runat="server" style=" width:150px;" 
                                                        class="btn btn-primary waves-effect waves-light m-r-10" Text="Save" 
                                                        onclick="btnSave_Click" />
                                                </div>
                                            </div>
                                         </div>
                                      </div>
                                    <div class="product-tab-list tab-pane fade" id="INFORMATION">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="review-content-section">
                                                    <div class="card-block">
                                                        <div class="stars stars-example-css detail-stars">
                                                    <div class="col-md-12 button_set_one two agile_info_shadow graph-form">
					                         <div class="grid-1">
					                   <div class="form-body">
                                  </div>
                                <br/>       
                                                                                      
 <div class="ser-info" style=" overflow:scroll">           
 <asp:GridView ID="gridvoperator" DataKeyNames="id" runat="server"   AutoGenerateColumns="False"   CssClass="table table-hover" HeaderStyle-BackColor="#006699" HeaderStyle-ForeColor="White" 
     GridLines="Both"  HorizontalAlign="Center" Width="100%"  
        onrowcancelingedit="gridvoperator_RowCancelingEdit" 
        onrowdeleting="gridvoperator_RowDeleting" 
        onrowediting="gridvoperator_RowEditing" 
        onrowupdating="gridvoperator_RowUpdating" 
        OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
        <HeaderStyle   />
        <RowStyle />

<Columns>
   <asp:TemplateField HeaderText="S.No." >
        <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>
 
<asp:TemplateField  HeaderText="Command" >
<EditItemTemplate>
<asp:ImageButton ID="imgbtnUpdate"  CommandName="Update" runat="server" ImageUrl="images/update.jpg" ToolTip="Update" Height="20px" Width="20px" OnClientClick="return confirm('Are You Sure To Update')"/>
<asp:ImageButton ID="imgbtnCancel"  runat="server" CommandName="Cancel" ImageUrl="images/Cancel.jpg" ToolTip="Cancel" Height="20px" Width="20px" />

</EditItemTemplate>
<ItemTemplate>
<asp:ImageButton ID="imgbtnEdit"  CommandName="Edit" runat="server" ImageUrl="images/Edit.jpg" ToolTip="Edit" Height="20px" Width="20px" />
<asp:ImageButton ID="imgbtnDelete"  CommandName="Delete" Text="Edit" runat="server" ImageUrl="images/delete.jpg" ToolTip="Delete" Height="20px" Width="20px" OnClientClick="return confirm('Are You Sure To Delete')" />
</ItemTemplate>
</asp:TemplateField>

 <asp:TemplateField HeaderText="Date">
 <EditItemTemplate>
<asp:TextBox ID="txtDate" runat="server" class="form-control" Text='<%#Eval("Date") %>'  Width="200px"></asp:TextBox>
 </EditItemTemplate>
 <ItemTemplate>
 <asp:Label ID="lblDate" runat="server"  Text='<%#Eval("Date") %>'/>
 </ItemTemplate>
 </asp:TemplateField>

  <asp:TemplateField HeaderText="Title">
 <EditItemTemplate>
<asp:TextBox ID="txttitle" runat="server" class="form-control" Text='<%#Eval("Title") %>'  Width="200px"></asp:TextBox>
 </EditItemTemplate>
 <ItemTemplate>
 <asp:Label ID="lbltitle" runat="server"  Text='<%#Eval("Title") %>'/>
 </ItemTemplate>
 </asp:TemplateField>

  <asp:TemplateField HeaderText="Description">
 <EditItemTemplate>
<asp:TextBox ID="txtdescription" runat="server" class="form-control" Text='<%#Eval("Description") %>'  Width="200px"></asp:TextBox>
 </EditItemTemplate>
 <ItemTemplate>
 <asp:Label ID="lbldescription" runat="server"  Text='<%#Eval("Description") %>'/>
 </ItemTemplate>
 </asp:TemplateField>

   <asp:TemplateField HeaderText = "Image1">
  <ItemTemplate>
  <asp:Image ID="Image1" runat="server" Height="50" ImageUrl='<%# Eval("imgurl", "eventImg/{0}") %>'  class="img-thumbnail" />
  </ItemTemplate>
  <EditItemTemplate>
  <asp:Label ID="Label1" runat="server" Text='<%# Eval("imgurl") %>' Visible="false" ></asp:Label>
  <asp:FileUpload ID="fileupload1" runat="server" />
  </EditItemTemplate> 
  </asp:TemplateField>

</Columns>
</asp:GridView>
	</div>
	</div>
	</div>
                                                                <div class="clear"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>

