<%@ page import="vn.edu.hcmuaf.fit.entity.Account" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Cake - Bakery</title>

	<!-- Icon css link -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="vendors/linearicons/style.css" rel="stylesheet">
	<link href="vendors/flat-icon/flaticon.css" rel="stylesheet">
	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">

	<!-- Rev slider css -->
	<link href="vendors/revolution/css/settings.css" rel="stylesheet">
	<link href="vendors/revolution/css/layers.css" rel="stylesheet">
	<link href="vendors/revolution/css/navigation.css" rel="stylesheet">
	<link href="vendors/animate-css/animate.css" rel="stylesheet">
	<link rel="stylesheet" href="css/header.css">

	<!-- Extra plugin css -->
	<link href="vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
	<link href="vendors/magnifc-popup/magnific-popup.css" rel="stylesheet">

	<link href="css/style.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">


	<jsp:useBean id="a" class="vn.edu.hcmuaf.fit.dao.PageDao" scope="request"></jsp:useBean>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<style>
	input[type="text"] {
		margin-top: 10px;
		margin-left: 25px;
	}
</style>
<body>

<!--================Main Header Area =================-->
<header class="main_header_area">
	<%--	<jsp:include page="./layout/header.jsp" />--%>
	<div class="top_header_area row m0">
		<div class="container">
			<div class="float-left">
				<img src="img/footer-logo.png" alt="">
			</div>
			<div class="float-right" style="display: flex">
				<ul class="h_social list_style" style="display:flex; left: -352px">
					<% if (session.getAttribute("account") != null) { %>
					<li><a class="title" href=""><%= ((Account)session.getAttribute("account")).getFullName() %> </a></li>
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 185px">
							Tài khoản của tôi
						</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" style="color: #0b0b0b" href="editaccount.jsp">Chỉnh sửa tài khoản</a></li>
							<li><a class="dropdown-item" style="color: #0b0b0b" href="changepassword.jsp">Đổi mật khẩu</a></li>
							<li><a class="dropdown-item" style="color: #0b0b0b" href="#">Lịch sử đơn hàng</a></li>
							<li><a class="dropdown-item" style="color: #0b0b0b" href="<c:url value='/logout' />">Đăng xuất</a></li>

						</ul>
					</div>
					<% } else { %>
					<li><a class="title" href="">Xin chào</a></li>
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
							Tài khoản của tôi
						</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" style="color: #0b0b0b" href="dangky.jsp">Đăng ký</a></li>
							<li><a class="dropdown-item" style="color: #0b0b0b" href="dangnhap.jsp">Đăng nhập</a></li>
						</ul>
					</div>
					<% } %>

				</ul>
				<ul class="h_search list_style">
					<li class="shop_cart"><a href="giohang.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
				</ul>
				<form action="Search" method="post">
					<input type="text" placeholder="Search.." name="search">
					<button type="submit"><i class="fa fa-search"></i></button>
				</form>
			</div>
		</div>
	</div>
	<div class="main_menu_area">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="trangchu.jsp">
					<img src="img/logo.png" alt="">
					<img src="img/logo-2.png" alt="">
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="my_toggle_menu">
                            	<span></span>
                            	<span></span>
                            	<span></span>
                            </span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li><a href="trangchu.jsp">Trang chủ</a></li>
						<li><a href="cake.jsp">Bánh có sẳn</a></li>
						<li><a href="menu.jsp">Xem tất cả bánh</a></li>
						<li class="dropdown submenu">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Thông tin </a>
							<ul class="dropdown-menu">
								<li><a href="vechungtoi.jsp">Thông tin cửa hàng</a></li>
								<li><a href="nhomchungtoi.jsp">Đầu bếp</a></li>
								<li><a href="feedback.jsp">Đánh giá từ khách hàng</a></li>
							</ul>
						</li>
					</ul>
					<ul class="navbar-nav justify-content-end">
						<li class="dropdown submenu">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Tiện ích</a>
							<ul class="dropdown-menu">
								<li><a href="dichvu.jsp">Dịch vụ</a></li>
								<li class="dropdown submenu">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Trương bày</a>
									<ul class="dropdown-menu">
										<li><a href="portfolio.jsp">-  Trưng bày cổ điển</a></li>
										<li><a href="portfolio-full-width.jsp">-  Trưng bày đầy đủ</a></li>
									</ul>
								</li>
								<li><a href="faq.jsp">Câu hỏi từ khách hàng</a></li>
								<li><a href="what-we-make.jsp">Sản phẩm từ cửa hàng</a></li>
							</ul>
						</li>
						<li class="dropdown submenu">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
							<ul class="dropdown-menu">
								<li><a href="blog.jsp">Blog with sidebar</a></li>
								<li><a href="blog-2column.jsp">Blog 2 column</a></li>
								<li><a href="single-blog.jsp">Blog details</a></li>
							</ul>
						</li>
						<li class="dropdown submenu">
							<a class="dropdown-toggle" data-toggle="dropdown" href="cuahang.jsp" role="button" aria-haspopup="true" aria-expanded="false">Cửa hàng</a>
							<ul class="dropdown-menu">
								<li><a href="ListProduct">Cửa hàng chính</a></li>
								<li><a href="chitietsanpham.jsp">Chi tiết sản phẩm</a></li>
								<li><a href="giohang.jsp">Giỏ hàng</a></li>
								<li><a href="thanhtoan.jsp">Thanh toán</a></li>
							</ul>
						</li>
						<li><a href="lienhe.jsp">Liên lạc với chúng tôi</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
</header>
<!--================End Main Header Area =================-->

<!--================End Main Header Area =================-->
<section class="banner_area">
	<div class="container">
		<div class="banner_text">
			<h3>Các công thức được nhiểu người quan tâm nhất</h3>
			<ul>
				<li><a href="trangchu.jsp">Trang chủ</a></li>
				<li><a href="chitietsanpham.jsp">Thông tin chi tiết sản phẩm</a></li>
			</ul>
		</div>
	</div>
</section>
<!--================End Main Header Area =================-->

<!--================Product Details Area =================-->
<section class="product_details_area p_100">
	<div class="container">
		<div class="row product_d_price">
			<div class="col-lg-6">
				<div class="product_img"><img class="img-fluid" src="img/product/product-details-1.jpg" alt=""></div>
			</div>
			<div class="col-lg-6">
				<div class="product_details_text">
					<h4>Bánh nâu</h4>
					<p>Thành phần: Bột mì, dầu, đường, trứng, sữa, chocolate, bột ca cao. Phía trên trang trí bánh Oreo và chocolate phủ bề mặt. </p>
					<h5>Giá :<span>150000VNĐ</span></h5>
					<a class="pink_more" href="giohang.jsp">Thêm vào giỏ hàng</a>
				</div>
			</div>
		</div>
		<div class="product_tab_area">
			<nav>
				<div class="nav nav-tabs" id="nav-tab" role="tablist">
					<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Mô tả</a>
					<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Thông tin bổ sung</a>
					<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Đánh giá(1)</a>
				</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
					<p>Không phải ngẫu nhiên mà Chocolate Cake trở thành chiếc bánh sinh nhật dễ khiến người ta “gật đầu” khi đứng giữa muôn vàn lựa chọn. Sức hút khó chối từ của chiếc bánh này đến từ vị đắng đặc trưng của lớp chocolate đen hảo hạng cùng hương thơm nồng nàn, rất êm và sâu của bột ca cao.</p>
					<p>Hãy thử nhắm mắt lại và cảm nhận từng muỗng bánh tan vào khoang miệng: một chút đăng đắng nhẹ thoảng qua để lại ngọt ngào nơi đầu lưỡi, kèm theo lớp bông lan mềm mịn điều hòa vị giác. Đây hẳn là thức bánh có thể giúp bạn sốc lại tinh thần sau một ngày mệt mõi rà rời bởi thành phần ca cao trong bánh có khả năng giải tỏa stress và cải thiện tâm trạng hiệu quả.</p>
				</div>
				<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
					<p>Trọng lượng: 150g</p>
					<p>Đường kính: 8cm</p>
				</div>
				<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
					<p>Tôi thích nếu những chiếc bánh này không ngọt như vậy; với tôi nó nếm như ăn một khối bơ cực kỳ ngọt. Có lẽ bạn có thể sử dụng một nửa cả đường và bơ? Cần nếm hương vị và không bơ và đường nhiều.</p>
				</div>
			</div>
		</div>
	</div>
</section>

<!--================Footer Area =================-->
<footer class="footer_area">
	<div class="footer_widgets">
		<div class="container">
			<div class="row footer_wd_inner">
				<div class="col-lg-3 col-6">
					<aside class="f_widget f_about_widget">
						<img src="img/footer-logo.png" alt="">
						<p>CỬA HÀNG CAKE BAKERY LUÔN HƯỚNG ĐẾN SỰ HÀI LÒNG CỦA KHÁCH HÀNG VỀ DỊCH VỤ TẠI CỬA HÀNG CỦA CHÚNG TÔI. XIN CẢM ƠN.</p>
						<ul class="nav">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</aside>
				</div>
				<div class="col-lg-3 col-6">
					<aside class="f_widget f_link_widget">
						<div class="f_title">
							<h3>Đường dẫn nhanh</h3>
						</div>
						<ul class="list_style">
							<li><a href="#">Tài khoản của bạn</a></li>
							<li><a href="#">Xem đơn hàng</a></li>
							<li><a href="#">Chính sách bảo mật</a></li>
							<li><a href="#">Điều khoản và điều kiện</a></li>
						</ul>
					</aside>
				</div>
				<div class="col-lg-3 col-6">
					<aside class="f_widget f_link_widget">
						<div class="f_title">
							<h3>Thời gian làm việc</h3>
						</div>
						<ul class="list_style">
							<li><a href="#">Thứ 2 : Thứ 6: 8 am - 8 pm</a></li>
							<li><a href="#">Thứ 7 : 9am - 4pm</a></li>
							<li><a href="#">Chủ Nhật : Đóng cửa</a></li>
						</ul>
					</aside>
				</div>
				<div class="col-lg-3 col-6">
					<aside class="f_widget f_contact_widget">
						<div class="f_title">
							<h3>Thông tin liên lạc</h3>
						</div>
						<h4>(1800) 574 9687</h4>
						<p>Cửa hàng Cake Bakery <br />Khu phố 6, phường Linh Trung, thành phố Thủ Đức</p>
						<h5>cakebakery@contact.co.in</h5>
					</aside>
				</div>
			</div>
		</div>
	</div>
	<div class="footer_copyright">
		<div class="container">
			<div class="copyright_inner">
				<div class="float-right">
					<a href="#">Mua ngay</a>
				</div>
			</div>
		</div>
	</div>
</footer>
<!--================End Footer Area =================-->


<!--================Search Box Area =================-->
<div class="search_area zoom-anim-dialog mfp-hide" id="test-search">
	<div class="search_box_inner">
		<h3>Search</h3>
		<div class="input-group">
			<input type="text" class="form-control" placeholder="Search for...">
			<span class="input-group-btn">
                        <button class="btn btn-default" type="button"><i class="icon icon-Search"></i></button>
                    </span>
		</div>
	</div>
</div>
<!--================End Search Box Area =================-->





<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.2.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Rev slider js -->
<script src="vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<!-- Extra plugin js -->
<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="vendors/magnifc-popup/jquery.magnific-popup.min.js"></script>
<script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
<script src="vendors/isotope/isotope.pkgd.min.js"></script>
<script src="vendors/datetime-picker/js/moment.min.js"></script>
<script src="vendors/datetime-picker/js/bootstrap-datetimepicker.min.js"></script>
<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
<script src="vendors/jquery-ui/jquery-ui.min.js"></script>
<script src="vendors/lightbox/simpleLightbox.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="js/theme.js"></script>
<!-- Template Javascript -->
<script src="js/main.js"></script>
</body>

</html>