<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.connection.Dbconn"%>
<%@page import="com.connection.Dbconn.*"%>
<%@page import="java.sql.*"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Blockchain Project</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Viticulture Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link rel="stylesheet" href="css/colorbox.css" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome-icons -->
<link
	href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
</head>

<body>
	<!-- banner -->
	<div class="banner1">
		<div class="w3_agile_banner_top">
			<div class="agile_phone_mail">
				<ul>
					<li><i aria-hidden="true"></i></li>
					<li><i aria-hidden="true"></i><a
						href="mailto:viticulture@w3layouts.com"></a></li>
				</ul>
			</div>
		</div>
		<div class="agileits_w3layouts_banner_nav">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<h1>
						<a class="navbar-brand" href="index.html"><i>B</i><span>lockchain-Based
								Agri-Food Supply Chain: A Complete Solution</span></a>
					</h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right"
					id="bs-example-navbar-collapse-1">
					<nav class="menu--iris">
						<ul class="nav navbar-nav menu__list">

							<li class="menu-active"><a href="NGOHome.jsp">HOME</a></li>
							<li><a href="NGO_SearchPage.jsp">Search</a></li>
							<li><a href="NGO_NShowProduct.jsp">Show Product</a></li>
							<li><a href="Login">LOGOUT</a></li>
						</ul>

					</nav>
				</div>
			</nav>
		</div>
		<div class="w3_agileits_service_banner_info">
			<h2>Add Product</h2>
		</div>
	</div>
	<!-- //banner -->
	<!-- mail -->


	<div class="services">
		<div class="container">
			<h3 class="w3l_header w3_agileits_header1">
				Add<span>Product</span>
			</h3>
			<div align="center">

				<div>
					<div class="agileits_mail_grid_right1">
						<form role="form" action="ngopayment_process" method="post">
							<div class="form-group">
								<table class="table table-responsive table-bordered">

									<%
									String data=(String)session.getAttribute("ngodata");
									String id =(String)session.getAttribute("ngotxt_id");
String [] rs=data.split("#");
									 {
										System.out.println(id);
										String txt_Pname =rs[1];
										String txt_Pquantity=rs[2];
										String txt_Pprice=rs[3];
										String userquantity=rs[4];
										String amount=rs[5];
										String Uemail=rs[6];
										String Farmer_Email=rs[7];
									%>
									<tr>
										<td><label for="txt_Pname"
											style="color: black; font-size: 18px;">Product ID:</label></td>
										<td><input type="text" class="form-control"
											readonly="readonly" name="txt_id" required id="txt_id"
											value="<%=id%>" readonly="readonly"></td>
									</tr>
									<tr>
										<td><label for="txt_Pname"
											style="color: black; font-size: 18px;">Product Name:</label></td>
										<td><input type="text" class="form-control"
											readonly="readonly" name="txt_Pname" required id="txt_Pname"
											value="<%=txt_Pname%>" placeholder="Enter Product Name"></td>
									</tr>

									<tr>
										<td><label for="txt_Pquantity"
											style="color: black; font-size: 18px;">Quantity</label></td>
										<td><input type="text" class="form-control"
											readonly="readonly" name="txt_Pquantity" value="<%=txt_Pquantity%>"
											required id="txt_Pquantity" placeholder="Enter Quantity"></td>
									</tr>

									<tr>
										<td><label for="txt_Pprice"
											style="color: black; font-size: 18px;">Price</label></td>
										<td><input type="text" class="form-control"
											readonly="readonly" name="txt_Pprice" value="<%=txt_Pprice%>"
											required id="txt_Pprice" placeholder="Enter Product Name"></td>
									</tr>

<tr>
										<td><label for="txt_Pprice"
											style="color: black; font-size: 18px;">Distributors Email ID</label></td>
										<td><input type="text" class="form-control"
											readonly="readonly" name="useremail" value="<%=Farmer_Email%>"
											required id="useremail" placeholder="Enter Email ID"></td>
									</tr>

									<tr>
										<td><label for="txt_Pdescription"
											style="color: black; font-size: 18px;">User Quantity
												:</label></td>
										<td class="col-md-6"><input type="text" value="<%=userquantity %>" readonly="readonly"
											class="form-control" name="userquantity" required
											id="txt_Pquantity" placeholder="Enter Quantity"></td>
									</tr>
									<tr>
										<td><label for="txt_Pdescription"
											style="color: black; font-size: 18px;">Amount
												:</label></td>
										<td class="col-md-6"><input type="text" value="<%=amount %>"
											class="form-control" name="useamount" required readonly="readonly"
											id="txt_Pquantity" placeholder="Enter Quantity"></td>
									</tr>
<tr>
											<td><b>Card Numeber</b></td>
											<td><input type="text" name="cardno" class="form-control" maxlength="16"
												 placeholder="Card Number" required="required"
												pattern="^[1-9]\d*(\.\d+)?$" /></td>
</tr>
<tr>
											<td><b>Expiry Date</b></td>
											<td><input type="date" name="Expirydate"  required ></td>


										</tr>
										<tr>
											<td><b>CVV Number</b></td>
											<td><input type="text" name="cvvno" class="form-control" maxlength="3"
												 placeholder="CVV Number" required="required"
												pattern="^[1-9]\d*(\.\d+)?$" /></td>

											

										</tr>
									<tr>
									<tr>
										<td class="col-md-6" colspan="2" align="center"><input
											type="submit" class="btn btn-primary" name="btn_Submit"
											id="btn_Submit" Value="Payment Process"></td>
									</tr>
									<%
										}
									%>
								</table>
							</div>
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //mail -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 w3layouts_footer_grid">
				<h2>
					Follow <span>Us</span>
				</h2>
				<ul class="social_agileinfo">
					<li><a href="#" class="w3_facebook"><i
							class="fa fa-facebook"></i></a></li>
					<li><a href="#" class="w3_twitter"><i
							class="fa fa-twitter"></i></a></li>
					<li><a href="#" class="w3_instagram"><i
							class="fa fa-instagram"></i></a></li>
					<li><a href="#" class="w3_google"><i
							class="fa fa-google-plus"></i></a></li>
				</ul>
			</div>
			<div class="col-md-8 w3layouts_footer_grid">
				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email..." required="">
					<input type="submit" value="">
				</form>
				<ul class="w3l_footer_nav">
					<li><a href="index.html">Home</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="portfolio.html">Portfolio</a></li>
					<li><a href="icons.html">Web Icons</a></li>
					<li><a href="mail.html" class="active">Mail Us</a></li>
				</ul>
				<p>
					© 2017 Viticulture. All Rights Reserved | Design by <a
						href="https://w3layouts.com/" target="_blank">w3layouts</a>
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //footer -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
</body>
</html>