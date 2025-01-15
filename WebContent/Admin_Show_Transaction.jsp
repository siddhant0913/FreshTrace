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
						<li class="menu-active"><a href="AdminHomePage.jsp">HOME</a></li>
				          <li><a href="Admin_Show_Transaction.jsp">Show Transaction</a></li>
				           <li class="menu__item"><a href="Login" class="menu__link">LogOut</a></li>
								</ul>
						
					</nav>
				</div>
			</nav>
		</div>
		<div class="w3_agileits_service_banner_info">
			<h2>Show Transaction Data</h2>
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
			<h4 class="w3l_header w3_agileits_header1">Show Transaction <span>Data</span></h4>
			<div align="center">
				
				<div >
					<div class="agileits_mail_grid_right1">
					<form class="form-light mt-20" action="File_Upload" method="post" enctype="multipart/form-data" >				
					
			<table border="1" >
	       <tr>
			 <th><label for="txt_Pid" style="color:Black;font-size:18px;">Transaction</label></th>
		    </tr>
	<%
	
	String name="";
	String qty="";
	Dbconn db=new Dbconn();
	Connection con=db.conn();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from blockchain_transaction");
	while(rs.next())
	{
		
		name=rs.getString(2);
		qty=rs.getString(3);
		
		
		
	
		
	
		 
%>
			<tr>
		
			<td ><a href="Admin_Product_Show.jsp?txt_id=<%=qty %>"><%=qty %></a></td>
			
		    </tr>
<%
	}
	%>
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