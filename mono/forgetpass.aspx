<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="forgetpass.aspx.cs" Inherits="mono.forgetpass" %>

<asp:Content runat="server" id="BodyContent" ContentPlaceHolderID="contentPlaceHolder">
<div class="other_body">
<div class="container">
<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		<div class="navbar">
			<a data-target="#sideManu" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</a>
		</div>
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li><a id="myCart" href="product_summary.aspx"><img src="assets/images/ico-cart.png" alt="cart" />3 Items in your cart  <span class="badge badge-warning pull-right">$155.00</span></a></li>
			<li class="subMenu open"><a> ELECTRONICS [230]</a>
				<ul>
				<li><a class="active" href="products.aspx">Cameras (100)</a></li>
				<li><a href="products.aspx">Computers, Tablets & laptop (30)</a></li>
				<li><a href="products.aspx">Mobile Phone (80)</a></li>
				<li><a href="products.aspx">Sound & Vision (15)</a></li>
				</ul>
			</li>
			<li class="subMenu"><a> CLOTHES [840] </a>
			<ul style="display:none">
				<li><a href="products.aspx">Women's Clothing (45)</a></li>
				<li><a href="products.aspx">Women's Shoes (8)</a></li>												
				<li><a href="products.aspx">Women's Hand Bags (5)</a></li>	
				<li><a href="products.aspx">Men's Clothings  (45)</a></li>
				<li><a href="products.aspx">Men's Shoes (6)</a></li>												
				<li><a href="products.aspx">Kids Clothing (5)</a></li>												
				<li><a href="products.aspx">Kids Shoes (3)</a></li>												
			</ul>
			</li>
			<li class="subMenu"><a>FOOD AND BEVERAGES [1000]</a>
				<ul style="display:none">
				<li><a href="products.aspx">Angoves  (35)</a></li>
				<li><a href="products.aspx">Bouchard Aine & Fils (8)</a></li>												
				<li><a href="products.aspx">French Rabbit (5)</a></li>	
				<li><a href="products.aspx">Louis Bernard  (45)</a></li>
				<li><a href="products.aspx">BIB Wine (Bag in Box) (8)</a></li>												
				<li><a href="products.aspx">Other Liquors & Wine (5)</a></li>												
				<li><a href="products.aspx">Garden (3)</a></li>												
				<li><a href="products.aspx">Khao Shong (11)</a></li>												
			</ul>
			</li>
			<li><a href="products.aspx">HEALTH & BEAUTY [18]</a></li>
			<li><a href="products.aspx">SPORTS & LEISURE [58]</a></li>
			<li><a href="products.aspx">BOOKS & ENTERTAINMENTS [14]</a></li>
			<li style="border:0"> &nbsp;</li>						
			
			<li style="border:0"> &nbsp;</li>	
			<li>
			  <div class="thumbnail">
				<img src="assets/images/products/panasonic.jpg" alt="Bootshop panasonoc New camera"/>
				<div class="caption">
				  <h5>Panasonic</h5>
				  <h4><a class="btn" href="product_details.aspx">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>		
			<li>
			<div class="thumbnail">
				<img src="assets/images/products/kindle.png" title="Bootshop New Kindel" alt="Bootshop Kindel">
				<div class="caption">
				  <h5>Kindle</h5>
				  <h4><a class="btn" href="product_details.aspx">VIEW</a> <span class="pull-right">$222.00</span></h4>
				</div>
			  </div>
			</li> 
			<li class="last">
			<div class="thumbnail">
				<img src="assets/images/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
				<div class="caption">
				  <h5>Payment Methods</h5>
				</div>
			  </div>
			</li> 
		  </ul>
	</div>
<!-- Sidebar end================================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Home</a> <span class="divider">/</span></li>
		<li class="active">Forget password?</li>
    </ul>
	<h3> FORGET YOUR PASSWORD?</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span9" style="min-height:900px">
			<div class="well">
			<h5>Reset your password</h5><br/>
			Please enter the email address for your account. A verification code will be sent to you. Once you have received the verification code, you will be able to choose a new password for your account.<br/><br/><br/>
			<form>
			  <div class="control-group">
				<label class="control-label" for="inputEmail1">E-mail address</label>
				<div class="controls">
				  <input class="span3"  type="text" id="inputEmail1" placeholder="Email">
				</div>
			  </div>
			  <div class="controls">
			  <button type="submit" class="btn block">Submit</button>
			  </div>
			</form>
		</div>
		</div>
	</div>	
	
</div>
</div>
</div>
</div>
</div>
<!-- MainBody End ============================= -->
<!-- Javascript -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
	<script src="assets/js/jquery.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/js/google-code-prettify/prettify.js"></script>
	
	<script src="assets/js/bootshop.js"></script>
    <script src="assets/js/jquery.lightbox-0.5.js"></script>
	<script type="text/javascript">
	$('#myCarousel').carousel({
	  interval: 8000
	})
	 $('#featured').carousel({
	  interval: 4000
	})
	$(function() {
		$('#gallery a').lightBox();
	});
	</script>
<!-- Javascript -->
	
</asp:Content>
