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
</header>
        <!--================End Main Header Area =================-->
        
        <!--================End Main Header Area =================-->
        <section class="banner_area">
        	<div class="container">
        		<div class="banner_text">
        			<h3>Blog</h3>
        			<ul>
        				<li><a href="trangchu.jsp">Trang chủ</a></li>
        				<li><a href="blog.jsp">Blog</a></li>
        			</ul>
        		</div>
        	</div>
        </section>
        <!--================End Main Header Area =================-->
        
        <!--================Blog Main Area =================-->
        <section class="main_blog_area p_100">
        	<div class="container">
        		<div class="row blog_area_inner">
        			<div class="col-lg-9">
        				<div class="main_blog_inner">
							<div class="blog_item">
								<div class="blog_img">
									<img class="img-fluid" src="img/blog/main-blog/blog-1.jpg" alt="">
								</div>
								<div class="blog_text">
									<div class="blog_time">
										<div class="float-left">
											<a href="#">2002</a>
										</div>
										<div class="float-right">
											<ul class="list_style">
												<li><a href="#">Cake Bakery</a></li>
												<li><a href="#">Ngọt ngào trong từ miếng</a></li>
												<li><a href="#">hơn 50 đánh giá tốt</a></li>
											</ul>
										</div>
									</div>
									<a href="#"><h4>Công thức đăc biệt làm nên thương hiệu hơn 20 năm qua</h4></a>
									<p>Chúng tôi sẽ làm hài lòng bạn, cho dù bạn đang ở bất kỳ độ tuổi nào, cho dù khẩu vị bạn có khó đến đâu, hãy để chung tôi đánh thức bao tử của bạn </p>
									<a class="pink_more" href="#">Xem thêm</a>
								</div>
							</div>
							<div class="blog_item">
								<div class="blog_img">
									<img class="img-fluid" src="img/blog/main-blog/blog-2.jpg" alt="">
								</div>
								<div class="blog_text">
									<div class="blog_time">
										<div class="float-left">
											<a href="#">2002</a>
										</div>
										<div class="float-right">
											<ul class="list_style">
												<li><a href="#">Cake Bakery</a></li>
												<li><a href="#">Ngọt ngào trong từ miếng</a></li>
												<li><a href="#">hơn 50 đánh giá tốt</a></li>
											</ul>
										</div>
									</div>
									<a href="#"><h4>Chất lượng làm nên thương hiệu</h4></a>
									<p>Liên hệ đặt bánh ngay để có một buổi tiệc thật ý nghĩa</p>
									<a class="pink_more" href="#">Xem thêm</a>
								</div>
							</div>
							<div class="blog_item">
								<div class="blog_img">
									<img class="img-fluid" src="img/blog/main-blog/blog-3.jpg" alt="">
								</div>
								<div class="blog_text">
									<div class="blog_time">
										<div class="float-left">
											<a href="#">2002</a>
										</div>
										<div class="float-right">
											<ul class="list_style">
												<li><a href="#">Cake Bakery</a></li>
												<li><a href="#">Ngọt ngào trong từ miếng</a></li>
												<li><a href="#">hơn 50 đánh giá tốt</a></li>
											</ul>
										</div>
									</div>
									<a href="#"><h4>Ở đây chúng tối có thể phục vụ bất kỳ loại bánh nào trên thế giới</h4></a>
									<p>Nếu bạn thích bánh Việt, bánh Pháp, bánh Ý,... Hay bất kỳ loại bánh nào, hãy liên hệ với chúng tôi</p>
									<a class="pink_more" href="#">Xem thêm</a>
								</div>
							</div>
							<div class="blog_item">
								<div class="blog_img">
									<img class="img-fluid" src="img/blog/main-blog/blog-4.jpg" alt="">
								</div>
								<div class="blog_text">
									<div class="blog_time">
										<div class="float-left">
											<a href="#">2002</a>
										</div>
										<div class="float-right">
											<ul class="list_style">
												<li><a href="#">Cake Bakery</a></li>
												<li><a href="#">Ngọt ngào trong từ miếng</a></li>
												<li><a href="#">hơn 50 đánh giá tốt</a></li>
											</ul>
										</div>
									</div>
									<a href="#"><h4>Tự hào thương hiệu đi đầu Việt Nam </h4></a>
									<p>Bạn có thể bắt gặp Cake Bakery ở bất kỳ tỉnh thành nào của Việt Nam</p>
									<a class="pink_more" href="#">Xem thêm</a>
								</div>
							</div>
							<div class="blog_item">
								<div class="blog_img">
									<img class="img-fluid" src="img/blog/main-blog/blog-5.jpg" alt="">
								</div>
								<div class="blog_text">
									<div class="blog_time">
										<div class="float-left">
											<a href="#">2002</a>
										</div>
										<div class="float-right">
											<ul class="list_style">
												<li><a href="#">Cake Bakery</a></li>
												<li><a href="#">Ngọt ngào trong từ miếng</a></li>
												<li><a href="#">hơn 50 đánh giá tốt</a></li>
											</ul>
										</div>
									</div>
									<a href="#"><h4>Hơn 10 chi nhánh trên toàn cầu </h4></a>
									<p>Chúng tôi có thể làm hài lòng bất kỳ khẩu vị nào trên thế giới, Châu Âu, Châu Phi, Châu Á, Châu Mỹ,...</p>
									<a class="pink_more" href="#">Xem thêm</a>
								</div>
							</div>
        				</div>
						<nav aria-label="Page navigation example" class="blog_pagination">
							<ul class="pagination">
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
							</ul>
						</nav>
        			</div>
        			<div class="col-lg-3">
        				<div class="right_sidebar_area">
        					<aside class="r_widget search_widget">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Nhập từ khóa muốn tìm kiếm">
									<div class="input-group-append">
										<button class="btn" type="button"><i class="icon icon-Search"></i></button>
									</div>
								</div>
        					</aside>
        					<aside class="r_widget categories_widget">
								<div class="r_title">
									<h3>Phân loại</h3>
								</div>
       							<ul class="list_style">
       								<li><a href="#">Socola<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
       								<li><a href="#">Dành cho mùa hè<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
       								<li><a href="#">Kem lạnh<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
       								<li><a href="#">Kẹo<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
       								<li><a href="#">Ngọt nhiều<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
       								<li><a href="#">Bánh mì<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
       							</ul>
        					</aside>
        					<aside class="r_widget recent_widget">
								<div class="r_title">
									<h3>Tin tức gần đây</h3>
								</div>
       							<div class="recent_w_inner">
       								<div class="media">
										<div class="d-flex">
											<img src="img/blog/recent-post/r-post-1.jpg" alt="">
										</div>
										<div class="media-body">
											<a href="#"><h4>Đầu bếp bánh ngọt chuẩn 5* cho ra công thức mới</h4></a>
											<a href="#"><p>22/1/2022</p></a>
										</div>
									</div>
									<div class="media">
										<div class="d-flex">
											<img src="img/blog/recent-post/r-post-2.jpg" alt="">
										</div>
										<div class="media-body">
											<a href="#"><h4>Bánh kem Ý đạt danh thu hơn 10 tỷ 1 năm chỉ với 1 loại bánh</h4></a>
											<a href="#"><p>2/11/2022</p></a>
										</div>
									</div>
									<div class="media">
										<div class="d-flex">
											<img src="img/blog/recent-post/r-post-3.jpg" alt="">
										</div>
										<div class="media-body">
											<a href="#"><h4>Giới trẻ Hàn Quốc đang say mê bánh kem Việt Nam</h4></a>
											<a href="#"><p>8/8/2022</p></a>
										</div>
									</div>
									<div class="media">
										<div class="d-flex">
											<img src="img/blog/recent-post/r-post-4.jpg" alt="">
										</div>
										<div class="media-body">
											<a href="#"><h4>Công thức đặc biệt bị từ chối nhượn quyền với giá hơn 8 tỷ VNĐ</h4></a>
											<a href="#"><p>1/2/2020</p></a>
										</div>
									</div>
       							</div>
        					</aside>
        					<aside class="r_widget tags_widget">
								<div class="r_title">
									<h3>Công thức</h3>
								</div>
       							<ul class="list_style">
       								<li><a href="#">Bánh ngọt</a></li>
       								<li><a href="#">Bánh mỳ</a></li>
       								<li><a href="#">Kem</a></li>
       								<li><a href="#">Bánh nho</a></li>
       								<li><a href="#">Bánh mật</a></li>
       								<li><a href="#">Bánh socola</a></li>
       							</ul>
        					</aside>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Blog Main Area =================-->
        
        <!--================Newsletter Area =================-->
		<section class="newsletter_area">
			<div class="container">
				<div class="row newsletter_inner">
					<div class="col-lg-6">
						<div class="news_left_text">
							<h4>Tham gia danh sách Bản tin của chúng tôi để nhận được tất cả các ưu đãi, giảm giá và các lợi ích khác mới nhất.</h4>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="newsletter_form">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Nhập địa chỉ email của bạn">
								<div class="input-group-append">
									<button class="btn btn-outline-secondary" type="button">Theo dõi ngay</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!--================End Newsletter Area =================-->
        
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
        <script src="vendors/datetime-picker/js/moment.min.js"></script>
        <script src="vendors/datetime-picker/js/bootstrap-datetimepicker.min.js"></script>
        <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="vendors/jquery-ui/jquery-ui.min.js"></script>
        <script src="vendors/lightbox/simpleLightbox.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        
        <script src="js/theme.js"></script>
    </body>

</html>