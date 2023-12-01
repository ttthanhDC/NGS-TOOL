<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Danh sách nhân viên | Quản trị Admin</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" href="<c:url value="/resources/assets/css/main.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/css/all.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/css/boxicons.min.css"/>">
  <!-- or -->
   <link rel="stylesheet" href="<c:url value="/resources/assets/css/boxicons1.min.css"/>">
  <!-- Font-icon css-->
  <link rel="stylesheet" href="<c:url value="/resources/assets/css/font-awesome.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/css/all.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/css/jquery-confirm.min.css"/>">
  
  <script src="<c:url value="/resources/assets/js/jquery-3.2.1.min.js"/>"></script>
  <!--===============================================================================================-->
  <script src="<c:url value="/resources/assets/js/boxicons.js"/>"></script>
  <!--===============================================================================================-->
  <script src="<c:url value="/resources/assets/js/bootstrap.min.js"/>"></script>
  <!--===============================================================================================-->
  <script src="<c:url value="/resources/assets/js/main.js"/>"></script>
  <!--===============================================================================================-->
  <script src="<c:url value="/resources/assets/js/popper.min.js"/>"></script>
  <!--===============================================================================================-->
  <script src="<c:url value="/resources/assets/js/plugins/chart.js"/>"></script>
  <!--===============================================================================================-->
  <script src="<c:url value="/resources/assets/js/sweetalert.min.js"/>"></script>
  <!--===============================================================================================-->
  <script src="<c:url value="/resources/assets/js/iconify-icon.min.js"/>"></script>
</head>

<body onload="time()" class="app sidebar-mini rtl">
  <!-- Navbar-->
	<!--  Header -->
	<%@include file="/WEB-INF/views/layouts/home/header.jsp" %>
  	<%@include file="/WEB-INF/views/layouts/home/footer.jsp" %>
  	<decorator:body></decorator:body>

  <script type="text/javascript">
    var data = {
      labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6"],
      datasets: [{
        label: "Dữ liệu đầu tiên",
        fillColor: "rgba(255, 213, 59, 0.767), 212, 59)",
        strokeColor: "rgb(255, 212, 59)",
        pointColor: "rgb(255, 212, 59)",
        pointStrokeColor: "rgb(255, 212, 59)",
        pointHighlightFill: "rgb(255, 212, 59)",
        pointHighlightStroke: "rgb(255, 212, 59)",
        data: [20, 59, 90, 51, 56, 100]
      },
      {
        label: "Dữ liệu kế tiếp",
        fillColor: "rgba(9, 109, 239, 0.651)  ",
        pointColor: "rgb(9, 109, 239)",
        strokeColor: "rgb(9, 109, 239)",
        pointStrokeColor: "rgb(9, 109, 239)",
        pointHighlightFill: "rgb(9, 109, 239)",
        pointHighlightStroke: "rgb(9, 109, 239)",
        data: [48, 48, 49, 39, 86, 10]
      }
      ]
    };
    var ctxl = $("#lineChartDemo").get(0).getContext("2d");
    var lineChart = new Chart(ctxl).Line(data);

    var ctxb = $("#barChartDemo").get(0).getContext("2d");
    var barChart = new Chart(ctxb).Bar(data);
  </script>
  <script type="text/javascript">
    //Thời Gian
    function time() {
      var today = new Date();
      var weekday = new Array(7);
      weekday[0] = "Chủ Nhật";
      weekday[1] = "Thứ Hai";
      weekday[2] = "Thứ Ba";
      weekday[3] = "Thứ Tư";
      weekday[4] = "Thứ Năm";
      weekday[5] = "Thứ Sáu";
      weekday[6] = "Thứ Bảy";
      var day = weekday[today.getDay()];
      var dd = today.getDate();
      var mm = today.getMonth() + 1;
      var yyyy = today.getFullYear();
      var h = today.getHours();
      var m = today.getMinutes();
      var s = today.getSeconds();
      m = checkTime(m);
      s = checkTime(s);
      nowTime = h + " giờ " + m + " phút " + s + " giây";
      if (dd < 10) {
        dd = '0' + dd
      }
      if (mm < 10) {
        mm = '0' + mm
      }
      today = day + ', ' + dd + '/' + mm + '/' + yyyy;
      tmp = '<span class="date"> ' + today + ' - ' + nowTime +
        '</span>';
      document.getElementById("clock").innerHTML = tmp;
      clocktime = setTimeout("time()", "1000", "Javascript");

      function checkTime(i) {
        if (i < 10) {
          i = "0" + i;
        }
        return i;
      }
    }
  </script>
</body>

</html>