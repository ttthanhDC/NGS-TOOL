<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<head>
<title>Sản - phẩm</title>
<style>
.pagination {
  display: flex;
  justify-content: center;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}
</style>
</head>
<%@ page session="false"%>

<body>
	<div class="well well-small">
	<h3>Our Products </h3>
	 <c:if test="${ lstProductbyCategoryId.size() > 0}">
	    <c:forEach var="item" items="${lstProductbyCategoryId}" varStatus="loop">
	    	<c:if test="${loop.index == 0 || (loop.index + 1) % 3 == 1}">
	    		<div class="row-fluid">
	    			<ul class="thumbnails">
	    	</c:if>
	    	 <li class="span4">
			  <div class="thumbnail">
				<a href="product_details.html" class="overlay"></a>
				<a class="zoomTool" href="#" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a href='<c:url value="/product-details/${item.id}"></c:url>'><img src="<c:url value="/resources/assets/img/${item.image }"/>" alt=""></a>
				<div class="caption cntr">
					<p>${item.name}</p>
					<p><strong><p><fmt:formatNumber type="number"  groupingUsed="true" value="${item.price}" />₫</p></strong></p>
					<h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
					<div class="actionList">
						<a class="pull-left" href="#">Add to Wish List </a> 
						<a class="pull-left" href="#"> Add to Compare </a>
					</div> 
					<br class="clr">
				</div>
			  </div>
			</li>
			<c:if test="${(loop.index + 1) % 3 == 0 || (loop.index + 1) == lstProductbyCategoryId.size()}">
				</u>
				</div>
			</c:if>
	    </c:forEach>
	    <div class="pagination">
		 <a href="<c:url value="/san-pham/${idCategory}/1"></c:url>">&laquo;</a>
		  <c:forEach var="item" begin="1" end="${paginateInfo.totalPage}" varStatus="loop">
		  	 <c:if test="${loop.index == paginateInfo.currentPage}">
		  	 	<a href='<c:url value="/san-pham/${idCategory}/${loop.index}"></c:url>' class="active">${loop.index}</a>
		  	 </c:if>
		  	 <c:if test="${loop.index != paginateInfo.currentPage}">
		  	 	<a href='<c:url value="/san-pham/${idCategory}/${loop.index}"></c:url>'>${loop.index}</a>
		  	 </c:if>
		  </c:forEach>
		  <a href='<c:url value="/san-pham/${idCategory}/${paginateInfo.totalPage}"></c:url>'>&raquo;</a> 
		</div>
	</c:if>
	</div>
</body>