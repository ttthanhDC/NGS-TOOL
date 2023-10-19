<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<%@ page session="true"%>
<head>
<title>Giỏ hàng</title>
</head>
<body>
<div class="row">
	<div class="span12">
    <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active">Giỏ hàng</li>
    </ul>
	<div class="well well-small">
		<h1>Giỏ hàng <small class="pull-right"> ${Cart.size()} Sản phẩm trong giỏ hàng </small></h1>
	<hr class="soften"/>	

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>Hình ảnh</th>
                  <th>Mô tả</th>
                  <th>Màu sắc</th>
                  <th>Giá bán</th>
                  <th>Số lượng </th>
                  <th>Chỉnh sửa </th>
                  <th>Xóa </th>
                  <th>Tổng tiền</th>
				</tr>
              </thead>
              <tbody>
              
				<c:forEach var="item" items="${ Cart }">
					<tr>
	                  <td><img width="100" src="<c:url value="/resources/assets/img/${ item.value.product.image }"/>" alt=""></td>
	                  <td>${ item.value.product.title }</td>
	                  <td><span class="shopBtn" style="background-color: yellow;"><span class="icon-ok"></span></span> </td>
	                  <td><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPrice }"/> ₫</td>
	                  <td>
						<input type="number" min="0" max="1000" class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text" value="${ item.value.quantity }">
					  </td>
	                  <td>
	                  	<a href="<c:url value="/EditCart/1"/>" class="btn btn-mini btn-danger" type="button">
	                  		<span class="icon-edit"></span>
	                  	</a>
	                  </td>
	                  <td>
	                  	<a href="<c:url value="/DeleteCart/${ item.key }"/>" class="btn btn-mini btn-danger" type="button">
	                  		<span class="icon-remove"></span>
	                  	</a>
	                  </td>
	                  <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.totalPrice }"/> ₫</td>
	                </tr>
				</c:forEach>
                
				</tbody>
            </table><br/>
			
	<a href="products.html" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Tiếp tục mua sắm </a>
	<a href="login.html" class="shopBtn btn-large pull-right">Thanh toán <span class="icon-arrow-right"></span></a>

</div>
</div>
</div>
</body>