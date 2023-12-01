<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<%@ page session="true"%>
<title>Trang chủ</title>
<body>
<main class="app-content">
    <div class="row">
      <div class="col-md-12">
        <div class="app-title">
          <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><a href="#"><b></b></a></li>
          </ul>
          <div id="clock"></div>
        </div>
      </div>
    </div>
    <div class="row">
      <!--Left-->
      <div class="col-md-12 col-lg-6">
        <div class="row">
       <!-- col-6 -->
       <div class="col-md-6">
        <div class="widget-small primary coloured-icon"><i class='icon bx bxs-user-account fa-3x'></i>
          <div class="info">
            <h4>Tổng số ứng viên</h4>
            <p><b>249 ứng viên</b></p>
            <p class="info-tong">Tổng số ứng viên được upload</p>
          </div>
        </div>
      </div>
           <div class="col-md-12">
            <div class="tile">
                <h3 class="tile-title">Ứng viên tiềm năng</h3>
              <div>
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>ID ứng viên</th>
                      <th>Tên ứng viên</th>
                      <th>Tiền năng</th>
                      <th>Trạng thái</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>#123</td>
                      <td>Phạm Thị Ngọc</td>
                      <td>
                        89%
                      </td>
                      <td><span class="badge bg-info">Chờ phỏng vấn</span></td>
                    </tr>
                    <tr>
                      <td>#111</td>
                      <td>Nguyễn Thị Mỹ Yến</td>
                      <td>
                        80%	
                      </td>
                      <td><span class="badge bg-info">Chờ phỏng vấn</span></td>
                    </tr>
                    <tr>
                      <td>#230</td>
                      <td>Triệu Thanh Phú</td>
                      <td>
                        95%	
                      </td>
                      <td><span class="badge bg-success">Đã phỏng vấn</span></td>
                    </tr>
                    <tr>
                      <td>#222</td>
                      <td>Đặng Hoàng Phúc	</td>
                      <td>
                        85%	
                      </td>
                      <td><span class="badge bg-success">Đã phỏng vấn</span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- / div trống-->
            </div>
           </div>
            <!-- / col-12 -->
             <!-- col-12 -->
            <div class="col-md-12">
                <div class="tile">
                  <h3 class="tile-title">Ứng viên mới</h3>
                <div>
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>Tên ứng viên</th>
                        <th>Ngày sinh</th>
                        <th>Số điện thoại</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>#246</td>
                        <td>Nguyễn Văn Nam</td>
                        <td>21/7/1992</td>
                        <td><span class="tag tag-success">0921387221</span></td>
                      </tr>
                      <tr>
                        <td>#247</td>
                        <td>Trần Đình Trung</td>
                        <td>30/4/1975</td>
                        <td><span class="tag tag-warning">0912376352</span></td>
                      </tr>
                      <tr>
                        <td>#248</td>
                        <td>Nguyễn Hải Anh</td>
                        <td>12/3/1999</td>
                        <td><span class="tag tag-primary">01287326654</span></td>
                      </tr>
                      <tr>
                        <td>#249</td>
                        <td>Đoàn Hồng</td>
                        <td>4/12/20000</td>
                        <td><span class="tag tag-danger">0912376763</span></td>
                      </tr>
                    </tbody>
                  </table>
                </div>

              </div>
            </div>
             <!-- / col-12 -->
        </div>
      </div>
      <!--END left-->
      <!--Right-->
      <div class="col-md-12 col-lg-6">
        <div class="row">
          <div class="col-md-12">
            <div class="tile">
              <h3 class="tile-title">Dữ liệu file upload</h3>
              <div class="embed-responsive embed-responsive-16by9">
                <canvas class="embed-responsive-item" id="lineChartDemo"></canvas>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="tile">
              <h3 class="tile-title">Tỷ lệ bóc tách ứng viên thành công</h3>
              <div class="embed-responsive embed-responsive-16by9">
                <canvas class="embed-responsive-item" id="barChartDemo"></canvas>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!--END right-->
    </div>


    <div class="text-center" style="font-size: 13px">
      <p><b>Copyright
          <script type="text/javascript">
            document.write(new Date().getFullYear());
          </script> Phần mềm quản lý bán hàng | Dev By Trường
        </b></p>
    </div>
  </main>
</body>