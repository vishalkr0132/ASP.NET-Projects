<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewContact.aspx.cs" Inherits="Admin_ViewContact" %>

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
                                            <li><span class="bread-blod">Product Entry</span>
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
       <%--                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="review-tab-pro-inner">
                                <ul id="myTab3" class="tab-review-design">
                                   <li><a href="#INFORMATION"><i class="fa fa-eye" aria-hidden="true" style=" padding-bottom:200px;"></i>View Product Details</a></li>
                                  </ul>
                                   </div>
                                    <div class="product-tab-list tab-pane fade" id="INFORMATION">--%>
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

   <asp:TemplateField HeaderText="Name">
 <EditItemTemplate>
 <asp:TextBox ID="txtname" runat="server" class="form-control" Text='<%#Eval("Name") %>'  Width="200px"></asp:TextBox>
 </EditItemTemplate>
 <ItemTemplate>
 <asp:Label ID="lblname" runat="server"  Text='<%#Eval("Name") %>'  Width="200px"/>
 </ItemTemplate>
 </asp:TemplateField>

   <asp:TemplateField HeaderText="Email">
 <EditItemTemplate>
 <asp:TextBox ID="txtemail" runat="server" class="form-control" Text='<%#Eval("Email") %>'  Width="200px"></asp:TextBox>
 </EditItemTemplate>
 <ItemTemplate>
 <asp:Label ID="lblemail" runat="server"  Text='<%#Eval("Email") %>'  Width="200px"/>
 </ItemTemplate>
 </asp:TemplateField>

   <asp:TemplateField HeaderText="Mobile">
 <EditItemTemplate>
 <asp:TextBox ID="txtmobile" runat="server" class="form-control" Text='<%#Eval("phone") %>'  Width="200px"></asp:TextBox>
 </EditItemTemplate>
 <ItemTemplate>
 <asp:Label ID="lblmobile" runat="server"  Text='<%#Eval("phone") %>'  Width="200px"/>
 </ItemTemplate>
 </asp:TemplateField>

   <asp:TemplateField HeaderText="Message">
 <EditItemTemplate>
 <asp:TextBox ID="txtmessage" runat="server" class="form-control" Text='<%#Eval("description") %>'  Width="200px"></asp:TextBox>
 </EditItemTemplate>
 <ItemTemplate>
 <asp:Label ID="lblmessage" runat="server"  Text='<%#Eval("description") %>'  Width="200px"/>
 </ItemTemplate>
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

