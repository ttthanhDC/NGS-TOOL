<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="true"%>
<title></title>
<body>
	<main class="app-content">
		<div class="app-title">
			<ul class="app-breadcrumb breadcrumb side">
				<li class="breadcrumb-item active"><a href="#"><b>Danh
							sách ứng viên</b></a></li>
			</ul>
			<div id="clock"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div class="tile-body">
						<div class="row element-button">
							<div class="col-sm-2">
								<a class="btn btn-add btn-sm" href="form-add-nhan-vien.html"
									title="Thêm"><i class="fas fa-plus"></i> Tạo mới ứng viên</a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm nhap-tu-file"
									href="form-input-file.html" title="Nhập"><i
									class="fas fa-plus"></i> Tải từ file</a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm print-file"
									href="form-timkiem.html" title="Tìm kiếm"><i
									class="fas fa-plus"></i> Tìm kiếm nâng cao</a>
							</div>
						</div>
						<c:if test="${qluvData.size() > 0}">

							<table class="table table-hover table-bordered js-copytextarea"
								cellpadding="0" cellspacing="0" border="0" id="sampleTable">
								<thead>
									<tr>
										<th width="10"><input type="checkbox" id="all"></th>
										<th>ID ứng viên</th>
										<th width="150">Họ và tên</th>
										<th width="20">Ảnh thẻ</th>
										<th width="300">Địa chỉ</th>
										<th>Ngày sinh</th>
										<th>Giới tính</th>
										<th>SĐT</th>
										<th>Email</th>
										<th width="100">Tính năng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${qluvData}" varStatus="loop">
										<tr>
											<td width="10"><input type="checkbox" id="checkbox_$(item.id)" value="$(item.id)"></td>
											<td>${item.id}</td>
											<td>${item.name}</td>
											<td>${item.image}</td>
											<td>${item.adress}</td>
											<td>${item.dob}</td>
											<td>${item.sex}</td>
											<td>${item.phone}</td>
											<td>${item.email}</td>
											<td><button class="btn btn-primary btn-sm trash"
													type="button" title="Xóa" onclick="myFunction(this)">
													<i class="fas fa-trash-alt"></i>
												</button>
												<button class="btn btn-primary btn-sm edit" type="button"
													title="Sửa" id="show-emp" data-toggle="modal"
													data-target="#ModalUP">
													<i class="fas fa-edit"></i>
												</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script>
	
	</script>
</body>