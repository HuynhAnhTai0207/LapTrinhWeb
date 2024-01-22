<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="icon" href="../fav-icon.png" type="image/x-icon" />
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>Cake - Bakery</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  <!-- or -->
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css"
        href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

</head>


<body onload="time()" class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header">
  <!-- Sidebar toggle button-->
  <!-- Navbar Right Menu-->
  <ul class="app-nav">


    <!-- User Menu-->
    <li><a class="app-nav__item" href="phan-mem-ban-hang.jsp"><i class='bx bx-log-out bx-rotate-180'></i> </a>

    </li>
  </ul>
</header>
<!-- Sidebar menu-->
<aside class="app-sidebar">
  <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="../img/u1.jpg" width="50px"
                                      alt="User Image">
    <div>
      <p class="app-sidebar__user-name"><b>Quản Lý</b></p>
      <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
    </div>
  </div>
  <hr>
  <ul class="app-menu">
    <li><a class="app-menu__item haha" href="phan-mem-ban-hang.jsp"><i class='app-menu__icon bx bx-cart-alt'></i>
      <span class="app-menu__label">POS Bán Hàng</span></a></li>
    <li><a class="app-menu__item active" href="index.jsp"><i class='app-menu__icon bx bx-tachometer'></i><span
            class="app-menu__label">Bảng điều khiển</span></a></li>
    <li><a class="app-menu__item " href="table-data-table.jsp"><i class='app-menu__icon bx bx-id-card'></i> <span
            class="app-menu__label">Quản lý nhân viên</span></a></li>
    <li><a class="app-menu__item" href="quanlykhachang.jsp"><i class='app-menu__icon bx bx-user-voice'></i><span
            class="app-menu__label">Quản lý khách hàng</span></a></li>
    <li><a class="app-menu__item" href="table-data-product.jsp"><i
            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Quản lý sản phẩm</span></a>
    </li>
    <li><a class="app-menu__item" href="table-data-oder.jsp"><i class='app-menu__icon bx bx-task'></i><span
            class="app-menu__label">Quản lý đơn hàng</span></a></li>
    <li><a class="app-menu__item" href="table-data-banned.jsp"><i class='app-menu__icon bx bx-run'></i><span
            class="app-menu__label">Quản lý nội bộ
          </span></a></li>
    <li><a class="app-menu__item" href="table-data-money.jsp"><i class='app-menu__icon bx bx-dollar'></i><span
            class="app-menu__label">Bảng kê lương</span></a></li>
    <li><a class="app-menu__item" href="quan-ly-bao-cao.jsp"><i
            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">Báo cáo doanh thu</span></a>
    </li>
    <li><a class="app-menu__item" href="page-calendar.jsp"><i class='app-menu__icon bx bx-calendar-check'></i><span
            class="app-menu__label">Lịch công tác </span></a></li>
    <li><a class="app-menu__item" href="#"><i class='app-menu__icon bx bx-cog'></i><span class="app-menu__label">Cài
            đặt hệ thống</span></a></li>
  </ul>
</aside>


<main class="app-content">
  <div class="row">
    <div class="col-md-12">
      <div class="app-title">
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><a href="#"><b>POS bán hàng</b></a></li>
        </ul>
        <div id="clock"></div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-8">
      <div class="tile">
        <h3 class="tile-title">Phần mềm bán hàng</h3>
        <input type="text" id="myInput" onkeyup="myFunction()"
               placeholder="Nhập mã sản phẩm hoặc tên sản phẩm để tìm kiếm...">
        <div class="du--lieu-san-pham">
          <table class="table table-hover table-bordered">
            <thead>
            <tr>

              <th class="so--luong">Mã hàng</th>
              <th class="so--luong">Tên sản phẩm</th>
              <th class="so--luong">Ảnh</th>
              <th class="so--luong" width="10">Số lượng</th>
              <th class="so--luong">Giá bán</th>
              <th class="so--luong text-center" style="text-align: center; vertical-align: middle;"></th>
            </tr>
            </thead>
            <tbody>
            <tr>

              <td>71309005</td>
              <td>Bánh kem hương dâu</td>
              <td><img src="/img-sanpham/reno.jpg" alt="" width="50px;"></td>
              <td><input class="so--luong1" type="number" value="2"></td>
              <td >150.000 </td>

              <td style="text-align: center; vertical-align: middle;">
                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i></button>
              </td>
            </tr>
            <tr>

              <td>62304003</td>
              <td>Bánh su kem</td>
              <td><img src="/img-sanpham/matda.jpg" alt="" width="50px;"></td>
              <td><input class="so--luong1" type="number" value="3"></td>
              <td>150.000 </td>

              <td style="text-align: center; vertical-align: middle;">
                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i></button>
              </td>
            </tr>
            <tr>

              <td>71304032</td>
              <td>Bánh bông lan </td>
              <td><img src="/img-sanpham/ghethera.jpg" alt="" width="50px;"></td>
              <td><input class="so--luong1" type="number" width="30" value="1"></td>
              <td>150.000 </td>

              <td style="text-align: center; vertical-align: middle;">
                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i></button>
              </td>
            </tr>
            <tr>

              <td>71338008</td>
              <td>Bánh kem hương matcha</td>
              <td><img src="/img-sanpham/zuno.jpg" alt="" width="50px;"></td>
              <td><input class="so--luong1" type="number" width="30" value="5"></td>
              <td>150.000 </td>
              <td style="text-align: center; vertical-align: middle;">
                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i></button>
              </td>
            </tr>
            <tr>

            </tbody>
          </table>
        </div>
        <div class="alert">

          <i class="fas fa-exclamation-triangle"></i> Gõ mã hoặc tên sản phẩm vào thanh tìm kiếm để thêm hàng vào đơn hàng
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="tile">
        <h3 class="tile-title">Thông tin thanh toán</h3>
        <div class="row">
          <div class="form-group  col-md-10">
            <label class="control-label">Họ tên khách hàng</label>
            <input class="form-control" type="text" placeholder="Tìm kiếm khách hàng">
          </div>
          <div class="form-group  col-md-2">
            <label style="text-align: center;" class="control-label">Tạo mới</label>
            <button class="btn btn-primary btn-them" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-user-plus"></i>
            </button>
          </div>
          <div class="form-group  col-md-12">
            <label class="control-label">Nhân viên bán hàng</label>
            <select class="form-control" id="exampleSelect1">
              <option>--- Chọn nhân viên bán hàng ---</option>
              <option>Võ Trường</option>
              <option>Nhật Kim Anh</option>
              <option>Đào Thanh Tuấn</option>
              <option>Phạm Phong Phú</option>
            </select>
          </div>
          <div class="form-group  col-md-12">
            <label class="control-label">Ghi chú đơn hàng</label>
            <textarea class="form-control" rows="4" placeholder="Ghi chú thêm đơn hàng"></textarea>
          </div>

        </div>
        <div class="row">

          <div class="form-group  col-md-12">
            <label class="control-label">Hình thức thanh toán</label>
            <select class="form-control" id="exampleSelect2" required>
              <option>Thanh toán chuyển khoản</option>
              <option>Trả tiền mặt tại quầy</option>
            </select>
          </div>
          <div class="form-group  col-md-6">
            <label class="control-label">Tạm tính tiền hàng: </label>
            <p class="control-all-money-tamtinh">= 1.650.000 VNĐ</p>
          </div>
          <div class="form-group  col-md-6">
            <label class="control-label">Giảm giá (F7): </label>
            <input class="form-control" type="number" value="0">
          </div>
          <div class="form-group  col-md-6">
            <label class="control-label">Tổng cộng thanh toán: </label>
            <p class="control-all-money-total">= 1.650.000 VNĐ</p>
          </div>
          <div class="form-group  col-md-6">
            <label class="control-label">Khách hàng đưa tiền (F8): </label>
            <input class="form-control" type="number" value="290000">
          </div>
          <div class="form-group  col-md-12">
            <label class="control-label">Khách hàng còn nợ: </label>
            <p class="control-all-money"> - 1.650.000 VNĐ</p>
          </div>
          <div class="tile-footer col-md-12">
            <button class="btn btn-primary luu-san-pham" type="button"> Lưu đơn hàng (F9)</button>
            <button class="btn btn-primary luu-va-in" type="button">Lưu và in hóa đơn (F10)</button>

            <a class="btn btn-secondary luu-va-in" href="index.jsp">Quay về</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</main>

<!--
MODAL
-->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">

      <div class="modal-body">
        <div class="row">
          <div class="form-group  col-md-12">
          <span class="thong-tin-thanh-toan">
            <h5>Tạo mới khách hàng</h5>
          </span>
          </div>
          <div class="form-group col-md-12">
            <label class="control-label">Họ và tên</label>
            <input class="form-control" type="text" required>
          </div>
          <div class="form-group col-md-6">
            <label class="control-label">Địa chỉ</label>
            <input class="form-control" type="text" required>
          </div>
          <div class="form-group col-md-6">
            <label class="control-label">Email</label>
            <input class="form-control" type="text" required>
          </div>
          <div class="form-group col-md-6">
            <label class="control-label">Ngày sinh</label>
            <input class="form-control" type="date" required>
          </div>
          <div class="form-group col-md-6">
            <label class="control-label">Số điện thoại</label>
            <input class="form-control" type="number" required>
          </div>
        </div>
        <BR>
        <button class="btn btn-save" type="button">Lưu lại</button>
        <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
        <BR>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
<!--
MODAL
-->


<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">X</span>
    </div>


  </div>

</div>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">$('#sampleTable').DataTable();</script>
<script>
  function deleteRow(r) {
    var i = r.parentNode.parentNode.rowIndex;
    document.getElementById("myTable").deleteRow(i);
  }
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
    tmp = '<span class="date"> <i class="bx bxs-calendar" ></i> ' + today + ' | <i class="fa fa-clock-o" aria-hidden="true"></i>  : ' + nowTime +
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
<script>
  function deleteRow(r) {
    var i = r.parentNode.parentNode.rowIndex;
    document.getElementById("myTable").deleteRow(i);
  }
  jQuery(function () {
    jQuery(".trash").click(function () {
      swal({
        title: "Cảnh báo",
        text: "Bạn có chắc chắn là muốn xóa?",
        buttons: ["Đóng", "Đồng ý"],
      })
              .then((willDelete) => {
                if (willDelete) {
                  swal("Đã xóa thành công.!", {
                  });
                }
              });
    });
  });
</script>
<script>
  // Modal popup
  var modal = document.getElementById("myModal");
  var btn = document.getElementById("myBtn");
  var span = document.getElementsByClassName("close")[0];
  btn.onclick = function () {
    modal.style.display = "block";
  }
  span.onclick = function () {
    modal.style.display = "none";
  }
  window.onclick = function (event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
</script>
</body>

</html>