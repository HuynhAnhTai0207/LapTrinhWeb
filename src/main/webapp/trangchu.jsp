<%@ page import="vn.edu.hcmuaf.fit.entity.Account" %>
<%@ page import="vn.edu.hcmuaf.fit.entity.Products" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.entity.Cart" %>
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
	body {
		font-family: Arial, sans-serif;
	}

	.alert {
		padding: 20px;
		background-color: #f195b2;
		color: white;
		margin-bottom: 15px;
	}

	.closebtn {
		margin-left: 15px;
		color: white;
		font-weight: bold;
		float: right;
		font-size: 22px;
		line-height: 20px;
		cursor: pointer;
		transition: 0.3s;
	}

	.closebtn:hover {
		color: black;
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
						<li><a href="home">Trang chủ</a></li>
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
								<li><a href="ListProductPaging">Cửa hàng chính</a></li>
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

<!--================Slider Area =================-->
<section class="main_slider_area">
	<div id="main_slider" class="rev_slider" data-version="5.3.1.6">
		<ul>
			<li data-index="rs-1587" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb="img/home-slider/slider-1.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Creative" data-param1="01" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
				<!-- MAIN IMAGE -->
				<img src="img/home-slider/slider-1.jpg"  alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>

				<!-- LAYER NR. 1 -->
				<div class="slider_text_box">
					<div class="tp-caption tp-resizeme first_text"
						 data-x="['left','left','left','15','15']" data-hoffset="['0','0','0','0']"
						 data-y="['top','top','top','top']" data-voffset="['175','175','125','165','160']"
						 data-fontsize="['65','65','65','40','30']"
						 data-lineheight="['80','80','80','50','40']"
						 data-width="['800','800','800','500']"
						 data-height="none"
						 data-whitespace="normal"
						 data-type="text"
						 data-responsive_offset="on"
						 data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
						 data-textAlign="['left','left','left','left']">Quality Cake ... <br /> with sweet, eggs & breads</div>

					<div class="tp-caption tp-resizeme secand_text"
						 data-x="['left','left','left','15','15']" data-hoffset="['0','0','0','0']"
						 data-y="['top','top','top','top']" data-voffset="['345','345','300','300','250']"
						 data-fontsize="['20','20','20','20','16']"
						 data-lineheight="['28','28','28','28']"
						 data-width="['640','640','640','640','350']"
						 data-height="none"
						 data-whitespace="normal"
						 data-type="text"
						 data-responsive_offset="on"
						 data-transform_idle="o:1;"
						 data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit quia consequuntur magni dolores eos qui ratione
					</div>

					<div class="tp-caption tp-resizeme slider_button"
						 data-x="['left','left','left','15','15']" data-hoffset="['0','0','0','0']"
						 data-y="['top','top','top','top']" data-voffset="['435','435','390','390','360']"
						 data-fontsize="['14','14','14','14']"
						 data-lineheight="['46','46','46','46']"
						 data-width="none"
						 data-height="none"
						 data-whitespace="nowrap"
						 data-type="text"
						 data-responsive_offset="on"
						 data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">
						<a class="main_btn" href="#">See the recipe</a>
					</div>
				</div>
			</li>
			<li data-index="rs-1588" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb="img/home-slider/slider-2.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Creative" data-param1="01" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
				<!-- MAIN IMAGE -->
				<img src="img/home-slider/slider-2.jpg"  alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>
				<!-- LAYERS -->
				<!-- LAYERS -->

				<!-- LAYER NR. 1 -->
				<div class="slider_text_box">
					<div class="tp-caption tp-resizeme first_text"
						 data-x="['left','left','left','15','15']" data-hoffset="['0','0','0','0']"
						 data-y="['top','top','top','top']" data-voffset="['175','175','125','165','160']"
						 data-fontsize="['65','65','65','40','30']"
						 data-lineheight="['80','80','80','50','40']"
						 data-width="['800','800','800','500']"
						 data-height="none"
						 data-whitespace="normal"
						 data-type="text"
						 data-responsive_offset="on"
						 data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
						 data-textAlign="['left','left','left','left']">Cake Bakery ... <br /> make delicious products</div>

					<div class="tp-caption tp-resizeme secand_text"
						 data-x="['left','left','left','15','15']" data-hoffset="['0','0','0','0']"
						 data-y="['top','top','top','top']" data-voffset="['345','345','300','300','250']"
						 data-fontsize="['20','20','20','20','16']"
						 data-lineheight="['28','28','28','28']"
						 data-width="['640','640','640','640','350']"
						 data-height="none"
						 data-whitespace="normal"
						 data-type="text"
						 data-responsive_offset="on"
						 data-transform_idle="o:1;"
						 data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit quia consequuntur magni dolores eos qui ratione
					</div>

					<div class="tp-caption tp-resizeme slider_button"
						 data-x="['left','left','left','15','15']" data-hoffset="['0','0','0','0']"
						 data-y="['top','top','top','top']" data-voffset="['435','435','390','390','360']"
						 data-fontsize="['14','14','14','14']"
						 data-lineheight="['46','46','46','46']"
						 data-width="none"
						 data-height="none"
						 data-whitespace="nowrap"
						 data-type="text"
						 data-responsive_offset="on"
						 data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">
						<a class="main_btn" href="#">See the recipe</a>
					</div>
				</div>
			</li>
		</ul>
	</div>
</section>
<!--================End Slider Area =================-->

<!--================Welcome Area =================-->
<section class="product_area p_100">
	<div class="container">
		<div class="main_title">
			<h2>Bánh của chúng tôi</h2>
			<h5> Hãy lựa chọn sản phẩm ưa thích của bạn.</h5>
		</div>
		<div class="alert">
			<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
			<p><strong>Chú ý!</strong> Tất cả bánh có hạng tối thiểu 15 ngày trong điều kiện dưới 15 độ</p>
			<p><strong>Chú ý!</strong> Tất cả bánh tại cửa hàng đều sản xuất trong ngày</p>
		</div>

		<div class="row product_item_inner">
			<div class="col-lg-9">
				<div class="row product_item_inner">
					<% List<Products> listProducts = (List<Products>) request.getAttribute("listProduct");
						NumberFormat nf = NumberFormat.getInstance();
						nf.setMaximumFractionDigits(0);
						Cart cart = (Cart) session.getAttribute("cart");
						if (cart == null){
							cart = new Cart();
							session.setAttribute("cart", cart);
						}
						for(Products p : listProducts){
					%>
					<div class="col-lg-4 col-md-4 col-6">
						<div class="cake_feature_item">
							<a href="ProductDetailController?id_Product=<%=p.getId_Product()%>">
								<div class="cake_img">
									<img style="height: 260px; width: 290px" src="<%=p.getImages().get(0)%>" alt="">
								</div>
							</a>
							<div class="cake_text">
								<h4><%=nf.format(p.getPrice())%>VNĐ</h4>
								<h3><%=p.getName()%></h3>
								<a class="pest_btn" href="Cart?id_Product=<%=p.getId_Product()%>">Thêm vào giỏ hàng</a>
							</div>
						</div>
					</div>
					<% } %>
				</div>
				<div class="main_title">
					<h2>10 sản phẩm bán chạy nhất cửa hàng chúng tôi</h2>
					<h5> Hãy lựa chọn sản phẩm ưa thích của bạn.</h5>
				</div>
				<div class="row cake_feature_item">
					<% List<Products> listTop = (List<Products>) request.getAttribute("listTopProducts");
						for (Products p: listTop){
					%>
					<div class="col-lg-3 col-md-3 col-6">
						<div class="cake_feature_item">
							<a href="ProductDetailController?id_Product=<%=p.getId_Product()%>">
								<div class="cake_img">
									<img style="height: 250px; width: 200px" src="<%=p.getImages().get(0)%>" alt="">
								</div>
							</a>
							<div class="cake_text">
								<h4><%=nf.format(p.getPrice())%>VNĐ</h4>
								<h3><%=p.getName()%></h3>
								<ul class="list_style">
									<p>Đá bán: <%=p.getProduct_sold()%></p>
								</ul>
								<a class="pest_btn" href="Cart?id_Product=<%=p.getId_Product()%>">Thêm vào giỏ hàng</a>
							</div>
						</div>
					</div>
					<% } %>
				</div>


				<div class="product_pagination">
					<div class="left_btn">
						<a href="#"><i class="lnr lnr-arrow-left"></i> Trước</a>
					</div>
					<div class="middle_list">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<% int maxPage=(int) request.getAttribute("endP");%>
								<c:forEach var="i" begin="1" end="<%=maxPage%>">
									<li class="page-item active"><a class="page-link" href="home?index=${i}">${i}</a></li>
								</c:forEach>
							</ul>
						</nav>
					</div>
					<div class="right_btn"><a href="#">Sau <i class="lnr lnr-arrow-right"></i></a></div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="product_left_sidebar">
					<aside class="left_sidebar p_catgories_widget">
						<div class="p_w_title">
							<h3>Xem các sản phẩm mới nhất của cửa hàng</h3>
						</div>
						<ul class="list_style">
							<li><a href="home?detail=Bánh mới">Sản phẩm mới nhất</a></li>
							<li><a href="">Sản phẩm chuẩn bị ra mắt</a></li>
						</ul>
					</aside>
				</div>
			</div>
		</div>
	</div>
</section>

<!--================End Page Navigation=================-->

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
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


<script src="js/theme.js"></script>
</body>
s
</html>