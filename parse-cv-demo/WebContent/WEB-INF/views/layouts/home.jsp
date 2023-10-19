<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><decorator:title default="Master-layout"></decorator:title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="<c:url value="/resources/assets/css/bootstrap.css"></c:url>" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="<c:url value="/resources/assets/css/style.css"></c:url>" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href= "<c:url value="/resources/assets/font-awesome/css/font-awesome.css"></c:url>" rel="stylesheet">
	<!-- Favicons -->
    <link rel="shortcut icon" href="<c:url value="/resources/assets/ico/favicon.ico"></c:url>">
  	<decorator:head></decorator:head>
  </head>
<body>
<!-- 
	Upper Header Section 
-->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				<div class="pull-left socialNw">
					<a href="#"><span class="icon-twitter"></span></a>
					<a href="#"><span class="icon-facebook"></span></a>
					<a href="#"><span class="icon-youtube"></span></a>
					<a href="#"><span class="icon-tumblr"></span></a>
				</div>
				<a class="active" href="index.html"> <span class="icon-home"></span> Home</a> 
				<a href="#"><span class="icon-user"></span> My Account</a> 
				<a href="register.html"><span class="icon-edit"></span> Free Register </a> 
				<a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
				<a href="cart.html"><span class="icon-shopping-cart"></span> 2 Item(s) - <span class="badge badge-warning"> $448.42</span></a>
			</div>
		</div>
	</div>
</div>

<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>
	<!--  Header -->
	<%@include file="/WEB-INF/views/layouts/home/header.jsp" %>
	<decorator:body></decorator:body>
<!-- 
Clients 
-->
<section class="our_client">
	<hr class="soften"/>
	<h4 class="title cntr"><span class="text">Manufactures</span></h4>
	<hr class="soften"/>
	<div class="row">
		<div class="span2">
			<a href="#"><img alt="" src="<c:url value="/resources/assets/img/1.png"></c:url>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="<c:url value="/resources/assets/img/2.png"></c:url>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="<c:url value="/resources/assets/img/3.png"></c:url>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="<c:url value="/resources/assets/img/4.png"></c:url>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="<c:url value="/resources/assets/img/5.png"></c:url>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="<c:url value="/resources/assets/img/6.png"></c:url>"></a>
		</div>
	</div>
</section>

<!--
Footer
-->
<%@include file="/WEB-INF/views/layouts/home/footer.jsp" %>
</div><!-- /container -->

<div class="copyright">
<div class="container">
	<p class="pull-right">
		<a href="#"><img src="<c:url value="/resources/assets/img/maestro.png"></c:url>" alt="payment"></a>
		<a href="#"><img src="<c:url value="/resources/assets/img/mc.png"></c:url>" alt="payment"></a>
		<a href="#"><img src="<c:url value="/resources/assets/img/pp.png"></c:url>" alt="payment"></a>
		<a href="#"><img src="<c:url value="/resources/assets/img/visa.png"></c:url>" alt="payment"></a>
		<a href="#"><img src="<c:url value="/resources/assets/img/disc.png"></c:url>" alt="payment"></a>
	</p>
	<span>Copyright &copy; 2013<br> bootstrap ecommerce shopping template</span>
</div>
</div>
<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value="/resources/assets/js/jquery.js"></c:url>"></script>
	<script src="<c:url value="/resources/assets/js/bootstrap.min.js"></c:url>"></script>
	<script src="<c:url value="/resources/assets/js/jquery.easing-1.3.min.js"></c:url>"></script>
    <script src="<c:url value="/resources/assets/js/jquery.scrollTo-1.4.3.1-min.js"></c:url>"></script>
    <script src="<c:url value="/resources/assets/js/shop.js"></c:url>"></script>
  </body>
</html>