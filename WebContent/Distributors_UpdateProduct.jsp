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
<meta name="keywords" content="Viticulture Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link rel="stylesheet" href="css/colorbox.css" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
</head>
	
<body>
<!-- banner -->
	<div class="banner1">
		<div class="w3_agile_banner_top">
			<div class="agile_phone_mail">
				<ul>
					<li><i  aria-hidden="true"></i></li>
					<li><i  aria-hidden="true"></i><a href="mailto:viticulture@w3layouts.com"></a></li>
				</ul>
			</div>
		</div>
		<div class="agileits_w3layouts_banner_nav">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1><a class="navbar-brand" href="index.html"><i>B</i><span>lockchain-Based
								Agri-Food Supply Chain: A Complete Solution</span></a></h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					 <nav class="menu--iris">
						<ul class="nav navbar-nav menu__list">
						
							 <li class="menu-active"><a href="DistributorsHome.jsp">HOME</a></li>
				            <li><a href="DistributorsAddProduct.jsp">Add Product</a></li> 
				          <li ><a href="Distributors_SearchPage.jsp">Search</a></li>
				           <li><a href="Distributors_UpdateProduct.jsp">UPDATE PRODUCT</a></li>
				           <li><a href="Distributors_NShowProduct.jsp">Show Product</a></li>
				           <li><a href="Distributor_Show_Transaction.jsp">Show Transaction</a></li>
				          
				          <li><a href="Login">LOGOUT</a></li>
								</ul>
						
					</nav>	    		
				</div>
			</nav>
		</div>
		<div class="w3_agileits_service_banner_info">
			<h2>Update Product</h2>
		</div>
	</div>
<!-- //banner -->
<!-- mail -->
	
	
	<div class="services">
		<div class="container">
			<h3 class="w3l_header w3_agileits_header1">Update<span>Product</span></h3>
			<div align="center">
				
				<div >
					<div class="agileits_mail_grid_right1">
					<form role="form" method="post">
			<div align="center">
	    
			<table border="1" width="90%">
	       <tr>
			<th ><label for="txt_Pid" style="color:black;font-size:18px;">Sr. Id.:</label></th> 
		    <th ><label for="txt_Pid" style="color:black;font-size:18px;">Product Name:</label></th>
		    <th ><label for="txt_Pid" style="color:black;font-size:18px;">Quantity</label></th>
		      <th><label for="txt_Pid" style="color:black;font-size:18px;">Product Description</label></th>
		      <th ><label for="txt_Pid" style="color:black;font-size:18px;">Price</label></th>
		      <th ><label for="txt_Pid" style="color:black;font-size:18px;">Location_Food</label></th>
		      <th><label for="txt_Pid" style="color:black;font-size:18px;">Expiry Date</label></th>
		       <th><label for="txt_Pid" style="color:black;font-size:18px;">Action</label></th>
		    </tr>
		    
	<%
	int id=0,pid=0;
	String name="";
	String qty="",product_info="",extra="",manufacture_date="",exp_date="";
	Dbconn db=new Dbconn();
	Connection con=db.conn();
	Statement st=con.createStatement();
	String email=(String)session.getAttribute("Uemail");
	ResultSet rs=st.executeQuery("select * from user_product_info where usereremail='"+email+"'");
	while(rs.next())
	{
		id=Integer.parseInt(rs.getString(1));
		name=rs.getString(2);
		qty=rs.getString(3);
		product_info=rs.getString(4);
		extra=rs.getString(5);
		manufacture_date=rs.getString(6);
		exp_date=rs.getString(7);
		 
%>
			<tr>
			<td ><label for="txt_Pid" style="color:Black;font-size:18px;"><input type="radio" name="rd_group" value="<%=id %>" required> <%=id %></label></td>
			<td ><label for="txt_Pid" style="color:Black;font-size:18px;"><%=name %></label></td>
			<td><label for="txt_Pid" style="color:Black;font-size:18px;"><%=qty %></label></td>
			<td><label for="txt_Pid" style="color:Black;font-size:18px;"><%=product_info %></label></td>
			<td><label for="txt_Pid" style="color:Black;font-size:18px;"><%=extra %></label></td>
						<td ><label for="txt_Pid" style="color:Black;font-size:18px;"><%=manufacture_date %></label></td>
			<td ><label for="txt_Pid" style="color:Black;font-size:18px;"><%=exp_date%></label></td>
			<td >
			<a href="User_UpdateProduct?txt_id=<%=id %>">
			<input type="button" class="btn btn-danger" value="Delete"></a> |
			 <a href="Distributors_UpdateNewProduct.jsp?txt_id=<%=id %>">
			<input type="button" class="btn btn-success" value="Update"></a>
			 </tr>
<%
	}
	%>
			</table>
			</div>
			</form>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //mail -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 w3layouts_footer_grid">
				<h2>Follow <span>Us</span></h2>
				<ul class="social_agileinfo">
					<li><a href="#" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#" class="w3_twitter"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#" class="w3_instagram"><i class="fa fa-instagram"></i></a></li>
					<li><a href="#" class="w3_google"><i class="fa fa-google-plus"></i></a></li>
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
				<p>© 2017 Viticulture. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts</a></p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
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
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>