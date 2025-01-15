<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.Format"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.*"%>
<%@page import="java.sql.Connection"%>
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
					<h1><a class="navbar-brand" href="#"><i>B</i><span>lockchain-Based
								Agri-Food Supply Chain: A Complete Solution</span></a></h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="menu--iris">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item "><a href="HomePage.jsp" class="menu__link">Home</a></li>
							<li class="menu__item menu__item--current"><a href="ShowData.jsp" class="menu__link">Monitor</a></li>
							<li class="menu__item"><a href="AddSoilParameter.jsp" class="menu__link">Add Data</a></li>
							<li class="menu__item"><a href="CropShowData.jsp" class="menu__link">Crop Predication</a></li>
							
							<li class="menu__item"><a href="loginpage" class="menu__link">LogOut</a></li>
						</ul>
						
					</nav>
				</div>
			</nav>
		</div>
		<div class="w3_agileits_service_banner_info">
			<h2>Soil Monitor Data</h2>
		</div>
	</div>
<!-- //banner -->
<!-- services -->

<!-- //services -->
<!-- bootstrap-pop-up -->
	
<!-- //bootstrap-pop-up -->
<!-- service-bottom -->
	
<!-- //service-bottom -->
<!-- stats-bottom -->
	<div class="services">
		<div class="container">
			<h4 class="w3l_header w3_agileits_header1">Soil Monitor <span>Info</span></h4>
			<div align="center">
				
				<div >
					<div class="agileits_mail_grid_right1">
					<form class="form-light mt-20" action="File_Upload" method="post" enctype="multipart/form-data" >				
					
			<table class="table">
					
					<tbody>
						
						<tr>
							
							<td>Event</td>
							<td>Ph Values</td>
							<td>Soil Electrical Conductivity(EC)</td>
							<td>Soil Nitrogen(N)</td>
							<td>Soil Phosphorus(P)</td>
							<td>Soil Potassium(K)</td>
						</tr>
						<%
						Connection connection = Dbconn.conn();
						Statement statement = connection.createStatement();
			            String emailid=(String)session.getAttribute("email");
			            ResultSet resultset =statement.executeQuery("select * from testingsoildata where emailid='"+emailid+"'") ; 
						while(resultset.next())
			             {
			       		 %>	
			       		 <tr>
			           
			               <td> <%= resultset.getString(2) %> </td>
			               <td> <%= resultset.getString(3) %> </td>
			               <td> <%= resultset.getString(4) %> </td>
			                <td> <%= resultset.getString(5) %> </td>
			                <td> <%= resultset.getString(6) %> </td>
			                <td> <%= resultset.getString(7) %> </td>
			               </tr>
			       		  <% 
			             } 
			              %>
						
						
					</tbody>
				</table>
				</form>
		</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //stats-bottom -->
<!-- Stats-Number-Scroller-Animation-JavaScript -->
	<script src="js/waypoints.min.js"></script> 
	<script src="js/counterup.min.js"></script> 
	<script>
		jQuery(document).ready(function( $ ) {
			$('.counter').counterUp({
				delay: 10,
				time: 2000
			});
		});
	</script>
<!-- //Stats-Number-Scroller-Animation-JavaScript -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			
			<div class="col-md-8 w3layouts_footer_grid">
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