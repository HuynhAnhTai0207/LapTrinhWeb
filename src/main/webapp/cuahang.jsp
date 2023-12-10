<%@ page import="vn.edu.hcmuaf.fit.entity.Products" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
    
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
        <link href="vendors/stroke-icon/style.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="vendors/revolution/css/navigation.css" rel="stylesheet">
        <link href="vendors/animate-css/animate.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
        <link href="vendors/magnifc-popup/magnific-popup.css" rel="stylesheet">
        <link href="vendors/jquery-ui/jquery-ui.min.css" rel="stylesheet">
        <link href="vendors/nice-select/css/nice-select.css" rel="stylesheet">
        
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        
        <!--================Main Header Area =================-->
		<header class="main_header_area">
			<div class="top_header_area row m0">
				<div class="container">
					<div class="float-left">
						<img src="img/footer-logo.png" alt="">
					</div>
					<div class="float-right">
						<ul class="h_social list_style">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<!--							<li><a href="#"><i class="fa fa-twitter"></i></a></li>-->
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<!--							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>-->
							<li><a href="dangnhap.jsp"> Đăng nhập</a></li>
							<li><a href="dangky.jsp"> Đăng ký</a></li>
						</ul>
						<ul class="h_search list_style">
							<li class="shop_cart"><a href="giohang.html"><i class="lnr lnr-cart"></i></a></li>
							<input>
							<li><a class="popup-with-zoom-anim" href="#test-search"><i class="fa fa-search"></i></a></li>
						</ul>
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
								<li><a href="cake.html">Bánh có sẳn</a></li>
								<li><a href="menu.html">Xem tất cả bánh</a></li>
								<li class="dropdown submenu">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Thông tin </a>
									<ul class="dropdown-menu">
										<li><a href="vechungtoi.html">Thông tin cửa hàng</a></li>
										<li><a href="nhomchungtoi.html">Đầu bếp</a></li>
										<li><a href="feedback.html">Đánh giá từ khách hàng</a></li>
									</ul>
								</li>
							</ul>
							<ul class="navbar-nav justify-content-end">
								<li class="dropdown submenu">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Tiện ích</a>
									<ul class="dropdown-menu">
										<li><a href="dichvu.html">Dịch vụ</a></li>
										<li class="dropdown submenu">
											<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Trương bày</a>
											<ul class="dropdown-menu">
												<li><a href="portfolio.html">-  Trưng bày cổ điển</a></li>
												<li><a href="portfolio-full-width.html">-  Trưng bày đầy đủ</a></li>
											</ul>
										</li>
										<li><a href="faq.html">Câu hỏi từ khách hàng</a></li>
										<li><a href="what-we-make.html">Sản phẩm từ cửa hàng</a></li>
									</ul>
								</li>
								<li class="dropdown submenu">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
									<ul class="dropdown-menu">
										<li><a href="blog.html">Blog with sidebar</a></li>
										<li><a href="blog-2column.html">Blog 2 column</a></li>
										<li><a href="single-blog.html">Blog details</a></li>
									</ul>
								</li>
								<li class="dropdown submenu">
									<a class="dropdown-toggle" data-toggle="dropdown" href="cuahang.jsp" role="button" aria-haspopup="true" aria-expanded="false">Cửa hàng</a>
									<ul class="dropdown-menu">
										<li><a href="ListProduct">Cửa hàng chính</a></li>
										<li><a href="chitietsanpham.html">Chi tiết sản phẩm</a></li>
										<li><a href="giohang.html">Giỏ hàng</a></li>
										<li><a href="thanhtoan.html">Thanh toán</a></li>
									</ul>
								</li>
								<li><a href="lienhe.html">Liên lạc với chúng tôi</a></li>
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
        			<h3>Cửa hàng</h3>
        			<ul>
        				<li><a href="trangchu.jsp">Trang chủ</a></li>
        				<li><a href="cuahang.jsp">Cửa hàng</a></li>
        			</ul>
        		</div>
        	</div>
        </section>
        <!--================End Main Header Area =================-->
        
        <!--================Product Area =================-->
        <section class="product_area p_100">
        	<div class="container">
        		<div class="row product_inner_row">
        			<div class="col-lg-9">
        				<div class="row m0 product_task_bar"> 
							<div class="product_task_inner"> 
								<div class="float-left">
									<a class="active" href="#"><i class="fa fa-th-large" aria-hidden="true"></i></a>
									<a href="#"><i class="fa fa-th-list" aria-hidden="true"></i></a>
									<span>Kết quả</span>
								</div>
								<div class="float-right">
									<h4>Tìm kiếm :</h4>
									<select class="short">
										<option data-display="Default">Bánh bông lan</option>
										<option value="1">Bánh kem</option>
										<option value="2">Bánh mỳ</option>
										<option value="4">Bánh ngọt</option>
										<option value="4">Bánh bông lan</option>
									</select>
								</div>
							</div>
        				</div>
        				<div class="row product_item_inner">
							<% List<Products> listProducts = (List<Products>) request.getAttribute("listProduct");
								for(Products p : listProducts){
							%>
							<div class="col-lg-4 col-md-4 col-6">
								<div class="cake_feature_item">
									<a href="chitietsanpham.html">
										<div class="cake_img">
											<img style="height: 260px; width: 290px" src="<%=p.getImages().get(0)%>" alt="">
										</div>
									</a>
									<div class="cake_text">
										<h4><%=p.getPrice_buy()%>VNĐ</h4>
										<h3><%=p.getName()%></h3>
										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>
									</div>
								</div>
							</div>
							<% } %>

<%--        					<div class="col-lg-4 col-md-4 col-6">--%>
<%--        						<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/c-feature-2.jpg" alt="">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem trà xanh</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--        					</div>--%>
<%--        					<div class="col-lg-4 col-md-4 col-6">--%>
<%--        						<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/c-feature-3.jpg" alt="">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh bông lan socola</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--        					</div>--%>
<%--        					<div class="col-lg-4 col-md-4 col-6">--%>
<%--        						<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/c-feature-4.jpg" alt="">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem cherry</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--        					</div>--%>
<%--        					<div class="col-lg-4 col-md-4 col-6">--%>
<%--        						<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/c-feature-5.jpg" alt="">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh bông lan cacao</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--        					</div>--%>
<%--        					<div class="col-lg-4 col-md-4 col-6">--%>
<%--        						<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/c-feature-6.jpg" alt="">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem phô mai</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--        					</div>--%>
<%--        					<div class="col-lg-4 col-md-4 col-6">--%>
<%--        						<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/c-feature-7.jpg" alt="">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh mức nho</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--        					</div>--%>
<%--        					<div class="col-lg-4 col-md-4 col-6">--%>
<%--        						<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/c-feature-8.jpg" alt="">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem trứng</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--        					</div>--%>
<%--        					<div class="col-lg-4 col-md-4 col-6">--%>
<%--        						<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/c-feature-9.jpg" alt="">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem bắp</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--        					</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/1.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem vani</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/2.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh bông lan mức dâu</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/3.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh bông lan coffee</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/4.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh hoa nhài</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/5.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem trái cây</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/6%20(2).jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh bông lan mật ong</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--							<div class="cake_feature_item">--%>
<%--								<a href="chitietsanpham.html">--%>
<%--								<div class="cake_img">--%>
<%--									<img src="img/cake-feature/7.jpg" alt="" height="270px" width="226px">--%>
<%--								</div>--%>
<%--								</a>--%>
<%--								<div class="cake_text">--%>
<%--									<h4>150000VNĐ</h4>--%>
<%--									<h3>Bánh kem bắp</h3>--%>
<%--									<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--						</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/8.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem hương socola</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/9.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem thạch</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/10.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem phô mai bắp</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/11.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem Ý socola</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/12.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem bơ</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/13.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh ngọt hương vani</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/14.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh con sò</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/15.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem bơ ngọt</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/16.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem su</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/17.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh dâu trà xanh</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/18.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh mức dâu</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/19.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh bông lan việt quốc</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/20.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem trứng</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/21.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem dâu tình yêu</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/22.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem sò</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/23.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh bông lan sữa</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/24.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem cacao</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/25.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem cam</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/26'.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem chà bông</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							<div class="col-lg-4 col-md-4 col-6">--%>
<%--								<div class="cake_feature_item">--%>
<%--									<a href="chitietsanpham.html">--%>
<%--									<div class="cake_img">--%>
<%--										<img src="img/cake-feature/9.jpg" alt="" height="270px" width="226px">--%>
<%--									</div>--%>
<%--									</a>--%>
<%--									<div class="cake_text">--%>
<%--										<h4>150000VNĐ</h4>--%>
<%--										<h3>Bánh kem vị dâu</h3>--%>
<%--										<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>


        				</div>
        				<div class="product_pagination">
        					<div class="left_btn">
        						<a href="#"><i class="lnr lnr-arrow-left"></i> Trước</a>
        					</div>
        					<div class="middle_list">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">...</a></li>
									<li class="page-item"><a class="page-link" href="#">12</a></li>
									</ul>
								</nav>
        					</div>
        					<div class="right_btn"><a href="#">Sau <i class="lnr lnr-arrow-right"></i></a></div>
        				</div>
        			</div>
        			<div class="col-lg-3">
        				<div class="product_left_sidebar">
        					<aside class="left_sidebar search_widget">
        						<div class="input-group">
									<input type="text" class="form-control" placeholder="Nhập bánh bạn muốn tìm">
									<div class="input-group-append">
										<button class="btn" type="button"><i class="icon icon-Search"></i></button>
									</div>
								</div>
        					</aside>
        					<aside class="left_sidebar p_catgories_widget">
        						<div class="p_w_title">
        							<h3>Danh mục sản phẩm</h3>
        						</div>
        						<ul class="list_style">
        							<li><a href="ListProduct?category=Bánh bông lan">Bánh bông lan (17)</a></li>
        							<li><a href="ListProduct?category=Bánh mỳ">Bánh mỳ (15)</a></li>
        							<li><a href="ListProduct?category=Bánh kem">Bánh kem (14)</a></li>
        							<li><a href="ListProduct?category=Bánh su">Bánh su (8)</a></li>
        							<li><a href="ListProduct?category=Bánh tráng miệng">Tráng miệng (11)</a></li>
        						</ul>
        					</aside>
        					<aside class="left_sidebar p_price_widget">
        						<div class="p_w_title">
        							<h3>Lọc theo giá</h3>
        						</div>
        						<div class="filter_price">
									<div id="slider-range"></div>
       								<label for="amount">Phạm vi:_____</label>
									<input type="text" id="amount" readonly />
       								<a href="#">Lọc</a>
        						</div>
        					</aside>
        					<aside class="left_sidebar p_sale_widget">
        						<div class="p_w_title">
        							<h3>Sản phẩm bán chạy nhất</h3>
        						</div>
        						<div class="media">
        							<div class="d-flex">
        								<img src="img/product/sale-product/s-product-1.jpg" alt="">
        							</div>
        							<div class="media-body">
        								<a href="#"><h4>Bánh bông lan cacao</h4></a>
        								<ul class="list_style">
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        								</ul>
        								<h5>150000VNĐ</h5>
        							</div>
        						</div>
        						<div class="media">
        							<div class="d-flex">
        								<img src="img/product/sale-product/s-product-2.jpg" alt="">
        							</div>
        							<div class="media-body">
        								<a href="#"><h4>Bánh kem lạnh</h4></a>
        								<ul class="list_style">
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        								</ul>
										<h5>150000VNĐ</h5>
        							</div>
        						</div>
        						<div class="media">
        							<div class="d-flex">
        								<img src="img/product/sale-product/s-product-3.jpg" alt="">
        							</div>
        							<div class="media-body">
        								<a href="#"><h4>Bánh kem phô mai</h4></a>
        								<ul class="list_style">
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        								</ul>
										<h5>150000VNĐ</h5>
        							</div>
        						</div>
        						<div class="media">
        							<div class="d-flex">
        								<img src="img/product/sale-product/s-product-4.jpg" alt="">
        							</div>
        							<div class="media-body">
        								<a href="#"><h4>Bánh kem dâu</h4></a>
        								<ul class="list_style">
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        									<li><a href="#"><i class="fa fa-star-o"></i></a></li>
        								</ul>
										<h5>150000VNĐ</h5>
        							</div>
        						</div>
        					</aside>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Product Area =================-->
        
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
        <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="vendors/isotope/isotope.pkgd.min.js"></script>
        <script src="vendors/datetime-picker/js/moment.min.js"></script>
        <script src="vendors/datetime-picker/js/bootstrap-datetimepicker.min.js"></script>
        <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="vendors/jquery-ui/jquery-ui.min.js"></script>
        <script src="vendors/lightbox/simpleLightbox.min.js"></script>
        
        <script src="js/theme.js"></script>
    </body>

</html>