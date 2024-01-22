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

    <!-- Extra plugin css -->
    <link href="vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
    <link href="vendors/magnifc-popup/magnific-popup.css" rel="stylesheet">

    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/responsive.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!--================Main Header Area =================-->
<div class="top_header_area row m0">
    		<div class="container">
    			<div class="float-left">
    				<img src="img/footer-logo.png" alt="">
    			</div>
    			<div class="float-right">
    				<ul class="h_social list_style" style="display:flex;">
    					<% if (session.getAttribute("account") != null) { %>
    					<li><a class="title" href=""><%= ((Account)session.getAttribute("account")).getFullName() %> </a></li>
    					<div class="dropdown">
    						<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    							Tài khoản của tôi
    						</button>
    						<ul class="dropdown-menu">
    							<li><a class="dropdown-item" style="color: #0b0b0b" href="#">Thông tin tài khoản của tôi</a></li>
    							<li><a class="dropdown-item" style="color: #0b0b0b" href="#">Giỏ hàng của tôi</a></li>
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
    					<li class="shop_cart"><a href="giohang.html"><i class="fa-solid fa-cart-shopping"></i></a></li>
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
    							<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Cửa hàng</a>
    							<ul class="dropdown-menu">
    								<li><a href="cuahang.html">Cửa hàng chính</a></li>
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
<!--================End Main Header Area =================-->


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
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


<script src="js/theme.js"></script>
</body>

</html>