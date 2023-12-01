<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="pagina" value="${requestScope['javax.servlet.forward.request_uri']}" />
<!-- Sidebar menu-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
  <aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" width="50px"
        alt="User Image">
      <div>
        <p class="app-sidebar__user-name"><b>Võ Trường</b></p>
        <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
      </div>
    </div>
    <hr>
    <ul class="app-menu">
      <li><a class="app-menu__item ${activeIndex}" href="<c:url value="/home"/>"><i class='app-menu__icon bx bx-tachometer'></i><span
            class="app-menu__label">Thống kê</span></a></li>
      <li><a class="app-menu__item ${activeQluv}" href="<c:url value="/qluv"/>"><i class='app-menu__icon bx bx-id-card'></i> <span
            class="app-menu__label">Quản lý ứng viên</span></a></li>
      <li><a class="app-menu__item" href="table-data-product.html"><i
            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Quản lý sản phẩm</span></a>
      </li>
      <li><a class="app-menu__item" href="table-data-oder.html"><i class='app-menu__icon bx bx-task'></i><span
            class="app-menu__label">Quản lý đơn hàng</span></a></li>
    </ul>
  </aside>