<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<%@ page session="true"%>
<title>Trang chủ</title>
<body>
<!-- 
Body Section 
-->
	<div class="row">
<div id="sidebar" class="span3">
<div class="well well-small">
	<ul class="nav nav-list">
		<c:forEach var="item" items="${lstCategory}">
			<li><a href='<c:url value="/san-pham/${item.id }"></c:url>'><span class="icon-circle-blank"></span>${item.name}</a></li>
		</c:forEach>
		<li style="border:0"> &nbsp;</li>
		<li> <a class="totalInCart" href="cart.html"><strong>Total Amount  <span class="badge badge-warning pull-right" style="line-height:18px;"><p><fmt:formatNumber type="number"  groupingUsed="true" value="${TotalPrice}" />₫</p></span></strong></a></li>
	</ul>
</div>

			  <div class="well well-small alert alert-warning cntr">
				  <h2>50% Discount</h2>
				  <p> 
					 only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
				  </p>
			  </div>
			  <div class="well well-small" ><a href="#"><img src="<c:url value="/resources/assets/img/paypal.jpg"></c:url>" alt="payment method paypal"></a></div>
			
			<a class="shopBtn btn-block" href="#">Upcoming products <br><small>Click to view</small></a>
			<br>
			<br>
			<ul class="nav nav-list promowrapper">
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="<c:url value="/resources/assets/img/bootstrap-ecommerce-templates.PNG"></c:url>" alt="bootstrap ecommerce templates">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="<c:url value="/resources/assets/img/shopping-cart-template.PNG"></c:url>" alt="shopping cart template">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="<c:url value="/resources/assets/img/bootstrap-template.png"></c:url>" alt="bootstrap template">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
		  </ul>

	</div>
	<div class="span9">
	<div class="well np">
		<div id="myCarousel" class="carousel slide homCar">
            <div class="carousel-inner">
              <c:forEach var="item" items="${lstSlides}" varStatus="index">
              	<c:if test="${index.first}">
              		<div class="item active">
              	</c:if>
              	<c:if test="${ not index.first}">
              		<div class="item">
              	</c:if>
	                <img style="width:100%" src="<c:url value="/resources/assets/img/${item.img}"></c:url>" alt="bootstrap ecommerce templates">
	                <div class="carousel-caption">
	                      <h4>${item.caption }</h4>
	                      <p><span>${item.content }</span></p>
	                </div>
              	</div>
              </c:forEach>
              <div class="item">
                <img style="width:100%" src="<c:url value="/resources/assets/img/bootstrap_free-ecommerce.png"></c:url>" alt="bootstrap ecommerce templates">
                <div class="carousel-caption">
                      <h4>Bootstrap shopping cart</h4>
                      <p><span>Very clean simple to use</span></p>
                </div>
              </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
          </div>
        </div>
<!--
New Products
-->
	<div class="well well-small">
	<h3>Sản phẩm mới </h3>
	<hr class="soften"/>
		<div class="row-fluid">
		<div id="newProductCar" class="carousel slide">
            <div class="carousel-inner">
			<div class="item active">
			  <ul class="thumbnails">
				<li class="span3">
				<div class="thumbnail">
					<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
					<a href="#" class="tag"></a>
					<a href="product_details.html"><img src="<c:url value="/resources/assets/img/bootstrap-ring.png"></c:url>" alt="bootstrap-ring"></a>
				</div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
					<a href="#" class="tag"></a>
					<a  href="product_details.html"><img src="<c:url value="/resources/assets/img/i.jpg"></c:url>" alt=""></a>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
					<a href="#" class="tag"></a>
					<a  href="product_details.html"><img src="<c:url value="/resources/assets/img/g.jpg"></c:url>" alt=""></a>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
					<a  href="product_details.html"><img src="<c:url value="/resources/assets/img/s.png"></c:url>" alt=""></a>
				  </div>
				</li>
			  </ul>
			  </div>
		   <div class="item">
		  <ul class="thumbnails">
			<li class="span3">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="<c:url value="/resources/assets/img/i.jpg"></c:url>" alt=""></a>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="<c:url value="/resources/assets/img/j.jpg"></c:url>" alt=""></a>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="<c:url value="/resources/assets/img/h.jpg"></c:url>" alt=""></a>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="<c:url value="/resources/assets/img/j.jpg"></c:url>" alt=""></a>
			  </div>
			</li>
		  </ul>
		  </div>
		   </div>
		  <a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
		  </div>
		  </div>
	</div>
	<!--
	Featured Products
	-->
		<div class="well well-small">
		  <h3><a class="btn btn-mini pull-right" href="products.html" title="View more">VIew More<span class="icon-plus"></span></a> Sản phẩm nổi bật  </h3>
		  <hr class="soften"/>
		  <div class="row-fluid">
		  <c:if test="${lstProducts.size() > 0 }">
		  	<c:forEach var="item" items="${lstProducts }" varStatus="loop">
		  		<c:if test="${loop.index == 0 || loop.index % 3 == 1}">
		  			<ul class="thumbnails">
		  		</c:if>
		  		<li class="span4">
					  <div class="thumbnail">
						<a class="zoomTool" href="#" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
						<a  href="chi-tiet-san-pham/${item.id}"><img src="<c:url value="/resources/assets/img/${item.image }"></c:url>" alt=""></a>
						<div class="caption">
						  <h5>${item.name}</h5>
						  <h4>
							  <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
							  <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
							  <span class="pull-right"><p><fmt:formatNumber type="number"  groupingUsed="true" value="${item.price}" />₫</p></span>
						  </h4>
						</div>
					  </div>
				</li>
				<c:if test="${(loop.index + 1) % 3  == 0 || (loop.index + 1 )== lstProducts.size()}">
					</u>
				</c:if>
		  	</c:forEach>	
		  </c:if>

	</div>
	</div>
	
	<div class="well well-small">
	<a class="btn btn-mini pull-right" href="#">View more <span class="icon-plus"></span></a>
	Tất cả sản phẩm
	</div>	
	</div>
	</div>
</body>