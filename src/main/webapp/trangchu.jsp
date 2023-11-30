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
							<li><a href="dangnhap.jsp">Đăng nhập</a></li>
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
		<section class="welcome_bakery_area cake_feature_main p_100">
			<div class="container">
				<div class="main_title">
					<h2>Bánh nổi bật của chúng tôi</h2>
					<h5> Hãy lựa chọn sản phẩm ưa thích của bạn.</h5>
				</div>
				<div class="cake_feature_row row">
					<div class="col-lg-3 col-md-4 col-6">
						<div class="cake_feature_item">
							<a href="chitietsanpham.html">
							<div class="cake_img">
								<img src="img/cake-feature/c-feature-1.jpg" alt="">
							</div>
							</a>
							<div class="cake_text">
								<h4>150000VNĐ</h4>
								<h3>Bánh kem béo</h3>
								<a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-6">
						<div class="cake_feature_item">
							<a href="chitietsanpham.html">
							<div class="cake_img">
								<img src="img/cake-feature/c-feature-2.jpg" alt="">
							</div>
							</a>
                            <div class="cake_text">
                                <h4>150000VNĐ</h4>
                                <h3>Bánh trà xanh</h3>
                                <a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>
                            </div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-6">
						<div class="cake_feature_item">
							<a href="chitietsanpham.html">
							<div class="cake_img">
								<img src="img/cake-feature/c-feature-3.jpg" alt="">
							</div>
							</a>
                            <div class="cake_text">
                                <h4>150000VNĐ</h4>
                                <h3>Bánh socola</h3>
                                <a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>
                            </div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-6">
						<div class="cake_feature_item">
							<a href="chitietsanpham.html">
							<div class="cake_img">
								<img src="img/cake-feature/c-feature-4.jpg" alt="">
							</div>
							</a>
                            <div class="cake_text">
                                <h4>150000VNĐ</h4>
                                <h3>Bánh cherry</h3>
                                <a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>
                            </div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-6">
						<div class="cake_feature_item">
							<a href="chitietsanpham.html">
							<div class="cake_img">
								<img src="img/cake-feature/3.jpg" alt="" alt="" height="270px" width="226px">
							</div>
							</a>
                            <div class="cake_text">
                                <h4>150000VNĐ</h4>
                                <h3>Bánh bông lan coffee</h3>
                                <a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>
                            </div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-6">
						<div class="cake_feature_item">
							<a href="chitietsanpham.html">
							<div class="cake_img">
								<img src="img/cake-feature/7.jpg" alt="" alt="" height="270px" width="226px">
							</div>
							</a>
                            <div class="cake_text">
                                <h4>150000VNĐ</h4>
                                <h3>Bánh kem bắp</h3>
                                <a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>
                            </div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-6">
						<div class="cake_feature_item">
							<a href="chitietsanpham.html">
							<div class="cake_img">
								<img src="img/cake-feature/15.jpg" alt="" alt="" height="270px" width="226px">
							</div>
							</a>
                            <div class="cake_text">
                                <h4>150000VNĐ</h4>
                                <h3>Bánh phô mai</h3>
                                <a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>
                            </div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-6">
						<div class="cake_feature_item">
							<a href="chitietsanpham.html">
							<div class="cake_img">
								<img src="img/cake-feature/28.jpg" alt="" alt="" height="270px" width="226px">
							</div>
							</a>
                            <div class="cake_text">
                                <h4>150000VNĐ</h4>
                                <h3>Bánh bông lan việt quốc</h3>
                                <a class="pest_btn" href="giohang.html">Thêm vào giỏ hàng</a>
                            </div>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!--================End Welcome Area =================-->

        <!--================Special Recipe Area =================-->
        <section class="special_recipe_area">
        	<div class="container">
        		<div class="special_recipe_slider owl-carousel">
        			<div class="item">
        				<div class="media">
        					<div class="d-flex">
        						<img src="img/recipe/recipe-1.png" alt="">
        					</div>
        					<div class="media-body">
        						<h4>Special Recipe</h4>
        						<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi equatur uis autem vel eum.</p>
        						<a class="w_view_btn" href="#">View Details</a>
        					</div>
        				</div>
        			</div>
        			<div class="item">
        				<div class="media">
        					<div class="d-flex">
        						<img src="img/recipe/recipe-1.png" alt="">
        					</div>
        					<div class="media-body">
        						<h4>Special Recipe</h4>
        						<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi equatur uis autem vel eum.</p>
        						<a class="w_view_btn" href="#">View Details</a>
        					</div>
        				</div>
        			</div>
        			<div class="item">
        				<div class="media">
        					<div class="d-flex">
        						<img src="img/recipe/recipe-1.png" alt="">
        					</div>
        					<div class="media-body">
        						<h4>Special Recipe</h4>
        						<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi equatur uis autem vel eum.</p>
        						<a class="w_view_btn" href="#">View Details</a>
        					</div>
        				</div>
        			</div>
        			<div class="item">
        				<div class="media">
        					<div class="d-flex">
        						<img src="img/recipe/recipe-1.png" alt="">
        					</div>
        					<div class="media-body">
        						<h4>Special Recipe</h4>
        						<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi equatur uis autem vel eum.</p>
        						<a class="w_view_btn" href="#">View Details</a>
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Special Recipe Area =================-->

        <!--================Service Area =================-->
        <section class="service_area">
        	<div class="container">
        		<div class="single_w_title">
        			<h2>Dịch vụ chính chúng tôi cung cấp</h2>
        		</div>
        		<div class="row service_inner">
        			<div class="col-lg-4 col-6">
        				<div class="service_item">
        					<i class="flaticon-food-2"></i>
        					<h4>Bánh kỷ niệm</h4>
        					<p>Bánh được làm từ 3 lớp gato xen giữa 3 lớp kem. Kế tiếp là lớp kem bơ socola vị rượu rum và 1 lớp socola chảy phủ bên ngoài.</p>
        				</div>
        			</div>
        			<div class="col-lg-4 col-6">
        				<div class="service_item">
        					<i class="flaticon-food-1"></i>
							<h4>Bánh kỷ niệm</h4>
							<p>Bánh được làm từ 3 lớp gato xen giữa 3 lớp kem. Kế tiếp là lớp kem bơ socola vị rượu rum và 1 lớp socola chảy phủ bên ngoài.</p>
        				</div>
        			</div>
        			<div class="col-lg-4 col-6">
        				<div class="service_item">
        					<i class="flaticon-food"></i>
							<h4>Bánh kỷ niệm</h4>
							<p>Bánh được làm từ 3 lớp gato xen giữa 3 lớp kem. Kế tiếp là lớp kem bơ socola vị rượu rum và 1 lớp socola chảy phủ bên ngoài.</p>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Service Area =================-->

        <!--================Discover Menu Area =================-->
        <section class="discover_menu_area">
        	<div class="discover_menu_inner">
        		<div class="container">
        			<div class="main_title">
						<h2>Khám phá thực đơn</h2>
						<h5>Bánh được làm từ 3 lớp gato xen giữa 3 lớp kem. Kế tiếp là lớp kem bơ socola vị rượu rum và 1 lớp socola chảy phủ bên ngoài.</h5>
					</div>
       				<div class="row">
       					<div class="col-lg-6">
       						<div class="discover_item_inner">
       							<div class="discover_item">
									<h4>Bánh kem dâu</h4>
									<p>Pudding sô cô la, vani, sữa mứt mâm xôi trái cây<span>250000VNĐ</span></p>
								</div>
       							<div class="discover_item">
									<h4>Bánh kem phô mai</h4>
									<p>Pudding sô cô la, vani, sữa mứt mâm xôi trái cây<span>100000VNĐ</span></p>
								</div>
       							<div class="discover_item">
									<h4>Bánh bông lan trứng muối</h4>
									<p>Pudding sô cô la, vani, sữa mứt mâm xôi trái cây<span>250000VNĐ</span></p>
								</div>
       							<div class="discover_item">
									<h4>Bánh kem trứng</h4>
									<p>Pudding sô cô la, vani, sữa mứt mâm xôi trái cây<span>150000VNĐ</span></p>
								</div>
       						</div>
       					</div>
       					<div class="col-lg-6">
       						<div class="discover_item_inner">
       							<div class="discover_item">
									<h4>Bánh kem bắp</h4>
									<p>Pudding sô cô la, vani, sữa mứt mâm xôi trái cây<span>350000VNĐ</span></p>
								</div>
       							<div class="discover_item">
									<h4>Bánh kem chery</h4>
									<p>Pudding sô cô la, vani, sữa mứt mâm xôi trái cây<span>100000VNĐ</span></p>
								</div>
       							<div class="discover_item">
									<h4>Bánh bông lan dâu</h4>
									<p>Pudding sô cô la, vani, sữa mứt mâm xôi trái cây<span>290000VNĐ</span></p>
								</div>
       							<div class="discover_item">
									<h4>Bánh mỳ phô mai</h4>
									<p>Pudding sô cô la, vani, sữa mứt mâm xôi trái cây<span>390000VNĐ</span></p>
								</div>
       						</div>
       					</div>
       				</div>
        		</div>
        	</div>
        </section>
        <!--================End Discover Menu Area =================-->

		<!--================Client Says Area =================-->
		<section class="client_says_area p_100">
			<div class="container">
				<div class="client_says_inner">
					<div class="c_says_title">
						<h2>Khách hàng của chúng tôi nói gì?</h2>
					</div>
					<div class="client_says_slider">
						<div class="item">
							<div class="media">
								<div class="d-flex">
									<img src="img/client/client-1.png" alt="">
									<h3>Robert joe</h3>
								</div>
								<div class="media-body">
									<p>Khi thưởng thức chiếc bánh, tôi thấy hài lòng không chỉ vì hương vị ngọt ngào mà còn vì độ mềm mịn của bánh. Thật sự là một trải nghiệm ẩm thực tuyệt vời và đáng nhớ!</p>
									<h5>- Robert joe</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="media">
								<div class="d-flex">
									<img src="img/client/client-1.png" alt="">
									<h3>Robert joe</h3>
								</div>
								<div class="media-body">
									<p>Khi thưởng thức chiếc bánh, tôi thấy hài lòng không chỉ vì hương vị ngọt ngào mà còn vì độ mềm mịn của bánh. Thật sự là một trải nghiệm ẩm thực tuyệt vời và đáng nhớ!</p>
									<h5>- Robert joe</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================End Client Says Area =================-->

        <!--================End Client Says Area =================-->
        <section class="our_chef_area p_100">
        	<div class="container">
        		<div class="row our_chef_inner">
        			<div class="col-lg-3 col-6">
        				<div class="chef_text_item">
        					<div class="main_title">
								<h2>Đầu bếp của chúng tôi</h2>
								<p>Bắt đầu sự nghiệp đời mình là một người rửa chén khi bỏ học đại học, sau đó là bếp phó và bây giờ đã trở thành một vị bếp trưởng đại tài.</p>
							</div>
        				</div>
        			</div>
        			<div class="col-lg-3 col-6">
        				<div class="chef_item">
        					<div class="chef_img">
        						<img class="img-fluid" src="img/chef/chef-1.jpg" alt="">
        						<ul class="list_style">
        							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
        							<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
        							<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
        							<li><a href="#"><i class="fa fa-skype"></i></a></li>
        						</ul>
        					</div>
        					<a href="#"><h4>Michale Joe</h4></a>
        					<h5>Chuyên gia trong làm bánh.</h5>
        				</div>
        			</div>
        			<div class="col-lg-3 col-6">
        				<div class="chef_item">
        					<div class="chef_img">
        						<img class="img-fluid" src="img/chef/chef-2.jpg" alt="">
        						<ul class="list_style">
        							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
        							<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
        							<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
        							<li><a href="#"><i class="fa fa-skype"></i></a></li>
        						</ul>
        					</div>
        					<a href="#"><h4>Michale Joe</h4></a>
        					<h5>Chuyên gia trong làm bánh.</h5>
        				</div>
        			</div>
        			<div class="col-lg-3 col-6">
        				<div class="chef_item">
        					<div class="chef_img">
        						<img class="img-fluid" src="img/chef/chef-3.jpg" alt="">
        						<ul class="list_style">
        							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
        							<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
        							<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
        							<li><a href="#"><i class="fa fa-skype"></i></a></li>
        						</ul>
        					</div>
        					<a href="#"><h4>Michale Joe</h4></a>
        					<h5>Chuyên gia trong làm bánh.</h5>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Client Says Area =================-->

        <!--================Latest News Area =================-->
        <section class="latest_news_area p_100">
        	<div class="container">
        		<div class="main_title">
					<h2>Blog mới nhất</h2>
					<h5>Trở thành người hướng dẫn của bạn, người trợ giúp của bạn, </h5>
				</div>
       			<div class="row latest_news_inner">
       				<div class="col-lg-4 col-md-6">
       					<div class="l_news_image">
       						<div class="l_news_img">
       							<img class="img-fluid" src="img/blog/latest-news/l-news-1.jpg" alt="">
       						</div>
       						<div class="l_news_hover">
       							<a href="#"><h5>15-10-2023</h5></a>
       							<a href="#"><h4>Công nghệ nano đắm chìm cùng thông tin</h4></a>
       						</div>
       					</div>
       				</div>
       				<div class="col-lg-4 col-md-6">
       					<div class="l_news_item">
       						<div class="l_news_img">
       							<img class="img-fluid" src="img/blog/latest-news/l-news-2.jpg" alt="">
       						</div>
       						<div class="l_news_text">
								<a href="#"><h5>15-10-2023</h5></a>
								<a href="#"><h4>Công nghệ nano đắm chìm cùng thông tin</h4></a>
       							<p>Ngành công nghệ thực phẩm hiện nay đã có rất nhiều cải tiến và phát triển vượt trội. Trong đó phải nói đến công nghệ nano thực phẩm, là một công nghệ còn khá mới mẻ.</p>
       						</div>
       					</div>
       				</div>
       				<div class="col-lg-4 col-md-6">
       					<div class="l_news_item">
       						<div class="l_news_img">
       							<img class="img-fluid" src="img/blog/latest-news/l-news-3.jpg" alt="">
       						</div>
       						<div class="l_news_text">
								<a href="#"><h5>15-10-2023</h5></a>
								<a href="#"><h4>Công nghệ nano đắm chìm cùng thông tin</h4></a>
								<p>Ngành công nghệ thực phẩm hiện nay đã có rất nhiều cải tiến và phát triển vượt trội. Trong đó phải nói đến công nghệ nano thực phẩm, là một công nghệ còn khá mới mẻ.</p>
       						</div>
       					</div>
       				</div>
       			</div>
        	</div>
        </section>
        <!--================End Latest News Area =================-->

        <!--================Page Navigation=================-->
		<div class="product_pagination">
			<div class="left_btn">
				<a href="#"><i class="lnr lnr-arrow-left"></i> Trước</a>
			</div>
			<div class="middle_list">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item active"><a class="page-link" href="trangchu.jsp">1</a></li>
						<li class="page-item"><a class="page-link" href="trangchu-2.html">2</a></li>
						<li class="page-item"><a class="page-link" href="trangchu-3.html">3</a></li>
						<li class="page-item"><a class="page-link" href="trangchu-4.html">4</a></li>
						<li class="page-item"><a class="page-link" href="trangchu-5.html">5</a></li>
					</ul>
				</nav>
			</div>
			<div class="right_btn"><a href="#">Sau <i class="lnr lnr-arrow-right"></i></a></div>
		</div>
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

        <script src="js/theme.js"></script>
    </body>

</html>