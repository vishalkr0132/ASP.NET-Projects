﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
		<div class="w3l_banner_nav_right">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner">
								<%--<h3>Make your <span>food</span> with Spicy.</h3>--%>
								<div class="more">
									<%--<a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>--%>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner1">
								<%--<h3>Make your <span>food</span> with Spicy.</h3>--%>
								<div class="more">
									<%--<a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>--%>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner2">
								<%--<h3>upto <i>50%</i> off.</h3>--%>
								<div class="more">
									<%--<a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>--%>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
                </script>
			<!-- //flexSlider -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- banner -->
	<div class="banner_bottom">
			<div class="wthree_banner_bottom_left_grid_sub">
			</div>
			<div class="wthree_banner_bottom_left_grid_sub1">
				<div class="col-md-4 wthree_banner_bottom_left">
					<div class="wthree_banner_bottom_left_grid">
						<img src="imagess/p1.jpeg" alt=" " class="img-responsive" />
						<div class="wthree_banner_bottom_left_grid_pos">
						<!--	<h4>Discount Offer <span>25%</span></h4>-->
						</div>
					</div>
				</div>
				<div class="col-md-4 wthree_banner_bottom_left">
					<div class="wthree_banner_bottom_left_grid">
						<img src="imagess/p2.jpeg" alt=" " class="img-responsive" />
						<div class="wthree_banner_btm_pos">
							<!--<h3>introducing <span>best store</span> for <i>groceries</i></h3>-->
						</div>
					</div>
				</div>
				<div class="col-md-4 wthree_banner_bottom_left">
					<div class="wthree_banner_bottom_left_grid">
						<img src="imagess/p3.jpeg" alt=" " class="img-responsive" />
						<div class="wthree_banner_btm_pos1">
							<!--<h3>Save <span>Upto</span> $10</h3>-->
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
	</div>
<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Hot Offers</h3>
			<div class="agile_top_brands_grids">
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive" />
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="#"><img title=" " alt=" " src="imagess/p5.jpeg" style="width:100px; height:150px"/></a>		
											<p>Tata Tea Agni Strong Leaf Tea Black Tea Pouch (1 Kg)</p>
											<h4>₹ 242 <span>₹ 260</span></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<a class="btn btn-primary" href="paymentdetail.aspx">Shop Now</a>
											<%--<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="Pepsi soft drink" />
													<input type="hidden" name="amount" value="8.00" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<input type="submit" name="submit" value="Add to cart" class="button" />
												</fieldset>
											</form>--%>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<%--<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="tag"><img src="images/tag.png" alt=" " class="img-responsive" /></div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block" >
										<div class="snipcart-thumb">
											<a href="#"><img title=" " alt=" " src="imagess/p5.jpeg" style="width:100px; height:150px"/></a>		
											<p>Tata Tea Agni Strong Leaf Tea Black Tea Pouch (1 Kg)</p>
											<h4>₹ 242 <span>₹ 260</span></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">

											<a class="btn btn-primary" href="payment.html">Shop Now</a>
											<input type="submit" name="submit" value="Add to cart" class="button" />
											<form action="checkout.html" method="post">
										  <fieldset>
	 <input type="hidden" name="cmd" value="_cart" />
	 <input type="hidden" name="add" value="1" />
	 <input type="hidden" name="business" value=" " />
	 <input type="hidden" name="item_name" value="Fortune Sunflower Oil" />
	 <input type="hidden" name="amount" value="7.99" />
	 <input type="hidden" name="discount_amount" value="1.00" />
	 <input type="hidden" name="currency_code" value="USD" />
	 <input type="hidden" name="return" value=" " />
	 <input type="hidden" name="cancel_return" value=" " />
	 <input type="submit" name="submit" value="Add to cart" class="button" />
	</fieldset>

	 </form>

										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>--%>
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive" />
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="#"><img title=" " alt=" " src="imagess/p6.jpeg" style="width:100px; height:150px" /></a>		
											<p>CHEF'S BASKET Macaroni Pasta (850 G)</p>
											<h4>₹ 72 <span>₹ 90</span></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<a class="btn btn-primary" href="paymentdetail.aspx">Shop Now</a>
											<%--<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="Pepsi soft drink" />
													<input type="hidden" name="amount" value="8.00" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<input type="submit" name="submit" value="Add to cart" class="button" />
												</fieldset>
											</form>--%>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<%--<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block" >
										<div class="snipcart-thumb">
											<a href="single.html"><img title=" " alt=" " src="imagess/p6.jpeg" style="width:100px; height:150px" /></a>		
											<p>CHEF'S BASKET Macaroni Pasta (850 G)</p>
											<h4>₹ 72 <span>₹ 90</span></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="basmati rise" />
													<input type="hidden" name="amount" value="11.99" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<input type="submit" name="submit" value="Add to cart" class="button" />
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>--%>
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive" />
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="#"><img src="imagess/p7.jpeg" style="width:100px; height:150px" alt=" " class="img-responsive" /></a>
											<p>Saffola Peanut Butter<br /> 900 G</p>
											<h4>₹ 337  <span>₹ 380</span></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<a class="btn btn-primary" href="paymentdetail.aspx">Shop Now</a>
											<%--<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="Pepsi soft drink" />
													<input type="hidden" name="amount" value="8.00" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<input type="submit" name="submit" value="Add to cart" class="button" />
												</fieldset>
											</form>--%>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive" />
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="#"><img src="imagess/p8.jpeg" style="width:100px; height:150px" alt=" " class="img-responsive" /></a>
											<p>
												Kwality Choco Flakes <br />Choc Pouch (1 Kg)

											</p>
											<h4>₹ 262 <span>₹ 525</span></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<a class="btn btn-primary" href="paymentdetail.aspx">Shop Now</a>
											<%--<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="dogs food" />
													<input type="hidden" name="amount" value="9.00" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<input type="submit" name="submit" value="Add to cart" class="button" />
												</fieldset>
											</form>--%>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //top-brands -->
<!-- fresh-vegetables -->
	<div class="fresh-vegetables">
		<div class="container">
			<h3>Top Products</h3>
			<div class="w3l_fresh_vegetables_grids">
				<div class="col-md-3 w3l_fresh_vegetables_grid w3l_fresh_vegetables_grid_left">
					<div class="w3l_fresh_vegetables_grid2">
						<ul>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="products.aspx">All Brands</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="vegetables.aspx">Vegetables</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="vegetables.aspx">Fruits</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="drinks.aspx">Juices</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="pet.aspx">Pet Food</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="bread.aspx">Bread & Bakery</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="household.aspx">Cleaning</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="products.aspx">Spices</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="products.aspx">Dry Fruits</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="products.aspx">Dairy Products</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-9 w3l_fresh_vegetables_grid_right">
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="imagess/p10.jpeg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<div class="w3l_fresh_vegetables_grid1_rel">
								<img src="imagess/p9.jpeg" alt=" " class="img-responsive" />
								<div class="w3l_fresh_vegetables_grid1_rel_pos">
									<div class="more m1">
										<!--<a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>-->
									</div>
								</div>
							</div>
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="imagess/p11.jpeg" alt=" " class="img-responsive" />
							<div class="w3l_fresh_vegetables_grid1_bottom_pos">
								<!--<h5>Special Offers</h5>-->
							</div>
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="imagess/p12.jpeg" alt=" " class="img-responsive" />
						</div>
						<!--<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="images/11.jpg" alt=" " class="img-responsive" />
						</div>-->
					</div>
					<div class="clearfix"> </div>
					<div class="agileinfo_move_text">
						<div class="agileinfo_marquee">
							<h4>get <span class="blink_me">10% off</span> on first order </h4>
						</div>
						<div class="agileinfo_breaking_news">
							<span> </span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //fresh-vegetables -->
</asp:Content>

