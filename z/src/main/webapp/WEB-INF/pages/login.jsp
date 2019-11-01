<%@ page import="com.zsj.domain.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>


    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/bootstrap.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/style.css">  <!-- 主要美化文件 -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/responsive.css">
	
	


	<%
		User user = (User)request.getSession().getAttribute("user");
		boolean flag;
		flag = user==null?false:true;
//		String info = "未登录";
//		if(flag){
//		    info = user.getUsername();
//		}else{
//		    info = "未登录";
//		}
	%>




</head>

<body class="bg-body2">
    <div class="boxed">
        <div class="preloader">
                <span class="loader">
                    <span class="loader-inner"></span>
                </span>
        </div>
	    <div class="top border-bt-d1d1ff style2">
	    <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12">
                    <div class="flat-info">
                        <ul>
                            <li class="phone"><a href="#" id="ttt">15086998051</a></li>
                            <li class="mail"><a href="#">313434726@qq.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-8 col-md-12 pd-left-0">
                    <div class="flat-adds flat-text-right">
                        <p>
                            <span class="font-Roboto font-weight-700 underline-text"></span>
                            <span class="font-Hall font-weight-700 letter-spaceing-top">Only By Learn</span>
                            <span class="font-Playfair font-weight-700 letter-spaceing-top"></span>
                        </p>
                        <p class="font-weight-700 datetime" id="loginStatus">未登录</p>
                    </div>
                    <div class="flat-action flat-text-right style1">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/pages/regist">注册</a></li>
                            <li><a href="${pageContext.request.contextPath}/pages/login" id="login">登录</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>

	    <div id="header" class="bg-fff style1">
	        <div class="container">
		<div class="header-wrap clearfix">
			<div id="logo">
				<a href="${pageContext.request.contextPath}/pages/index"><img src="${pageContext.request.contextPath}/images/logo/logo.png" alt="bookflare" width="157" height="29" ></a>
			</div>
			<div class="nav-wrap flat-text-right style1">
				<nav id="main-nav">
					<ul class="menu" >
						<li class="active">
							<a href="#">首页</a>

						</li>
						<li>
							<a href="#">计算机语言</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath}/pages/language">C</a></li>
								<li><a href="${pageContext.request.contextPath}/pages/language">C++</a></li>
								<li><a href="${pageContext.request.contextPath}/pages/language">Java</a></li>
								<li><a href="${pageContext.request.contextPath}/pages/language">Python</a></li>
							</ul>
						</li>

						<li>
							<a href="#">计算机课程</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath}/pages/course">数据结构</a></li>
								<li><a href="${pageContext.request.contextPath}/pages/course">操作系统</a></li>
								<li><a href="${pageContext.request.contextPath}/pages/course">计算机组成原理</a></li>
								<li><a href="${pageContext.request.contextPath}/pages/course">计算机网络</a></li>
								<li><a href="${pageContext.request.contextPath}/pages/course">数据库</a></li>
								<li><a href="${pageContext.request.contextPath}/pages/course">嵌入式</a></li>
							</ul>
						</li>
						<li><a href="instructors.html">读书笔记</a></li>
						<li><a href="#">兴趣爱好</a></li>
						<li >
							<a href="#">关于</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath}/pages/FAQs">常见问题</a></li>
								<li><a href="${pageContext.request.contextPath}/pages/about-us">关于我们</a></li>
								<li class="item-has-child">
									<a href="#">SHOP</a>
									<ul class="submenu">
										<li ><a href="shop.html">SHOP</a></li>
										<li><a href="shop-single.html">SHOP SINGLE</a></li>
									</ul>
								</li>
							</ul>
						</li>

					</ul>
				</nav>
			</div>

			<div class="extra-menu flat-text-right clearfix">
				<div class="wrap-search-header">
					<div class="search-header">
						<form>
							<input type="search" name="key" placeholder="Search for Courses">
							<button class="btn-search"><span class="icon-search"></span></button>
						</form>
					</div>
				</div>
				<div class="cart nav-top-cart-wrapper">
					<!-- <a href="#"><span class="bf-icon icon-cart"></span></a> <span class="count-cart">0</span> -->
					<div class="nav-shop-cart">
						<div class="widget_shopping_cart_content">
							<div class="woocommerce-min-cart-wrap">
								<ul class="woocommerce-mini-cart cart_list product_list_widget flat-text-center">
									<li class="woocommerce-mini-cart-item mini_cart_item">
										<span>No Items in Shopping Cart</span>
									</li>
								</ul>
							</div><!-- /.widget_shopping_cart_content -->
						</div>
					</div>
				</div>
			</div>
			<div class="mobile-button">
				<span></span>
			</div>
		</div>
	</div>
        </div> <!-- #header -->



	    <section class="flat-register-now">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-5">
					<div class="wrap-form flat-text-center">
						<p class="free">登录<a href="#">管理</a></p>
						<div class="heading">
							<h6 class="title"> 开始我的学习之旅 </h6>
							<p class="description">Stay Sharp. Get ahead with Learning Paths.</p>
						</div>
						<form action="javascript:void(0)" id="formLogin">
							<div class="wrap-input">
								<input type="text" name="username" placeholder="Your username">
							</div>
							<div class="wrap-input last-child">
								<input type="password" name="password" placeholder="Your password">
							</div>

							<div class="wrap-btn">
								<button class="flat-button btn-apply">登录</button>
							</div>
						</form>
					</div>   
				</div>
				<div class="col-lg-7">
					<div class="flat-tabs">
						<ul class="tab-title clearfix style4">
							<li class="item-title  overview">
								<span class="inner">FACILITY</span>
							</li>
							<li class="item-title event">
								<span class="inner">E-LEARNING</span>
							</li>
							<li class="item-title requirements">
								<span class="inner">VOVABULARY  </span>
							</li>
							<li class="item-title review">
								<span class="inner">KID'S COURSES</span>
							</li>
						</ul>
						<div class="tab-content-wrap">
							<div class="tab-content ">
								<div class="item-content">
									<div class="text-wrap img-right clearfix">
										<!--<div class="video flat-text-center">-->
											<!--<img src="images/register/video.png" alt="bookflare">-->
											<!--<a  data-type="iframe" href="https://www.youtube.com/embed/2Ge1GGitzLw?autoplay=1" class=" fancybox"><span class="icon-video"></span></a>-->
										<!--</div>-->
										<h6 class="title"><a href="#">Limitless Learning Possibilities</a></h6>
										<p class="text">Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt aucto.</p>
										<h6 class="title mg-bottom-25"><a href="#">Register Now!</a></h6>
										<p class="text">Per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condntum sit amet a augue. Sed non mauris vitae erat consequat auctor eu in elit. Class aptento taciti sociosqu ad litora torquent.</p>
									</div>
								</div>
							</div>
							<div class="tab-content ">
								<div class="item-content">
									<div class="text-wrap img-right clearfix">
										<div class="video flat-text-center">
											<img src="${pageContext.request.contextPath}/images/register/video.png" alt="bookflare">
											<a  data-type="iframe" href="https://www.youtube.com/embed/2Ge1GGitzLw?autoplay=1" class=" fancybox">
												<span class="icon-video"></span>
											</a>
										</div>
										<h6 class="title"><a href="#">Limitless Learning Possibilities</a></h6>
										<p class="text">Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt aucto.</p>
										<h6 class="title mg-bottom-25"><a href="#">Register Now!</a></h6>
										<p class="text">Per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condntum sit amet a augue. Sed non mauris vitae erat consequat auctor eu in elit. Class aptento taciti sociosqu ad litora torquent.</p>
									</div>
								</div>
							</div>
							<div class="tab-content ">
								<div class="item-content">
									<div class="text-wrap img-right clearfix">
										<div class="video flat-text-center">
											<img src="${pageContext.request.contextPath}/images/register/video.png" alt="bookflare">
											<a  data-type="iframe" href="https://www.youtube.com/embed/2Ge1GGitzLw?autoplay=1" class=" fancybox">
												<span class="icon-video"></span>
											</a>
										</div>
										<h6 class="title"><a href="#">Limitless Learning Possibilities</a></h6>
										<p class="text">Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt aucto.</p>
										<h6 class="title mg-bottom-25"><a href="#">Register Now!</a></h6>
										<p class="text">Per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condntum sit amet a augue. Sed non mauris vitae erat consequat auctor eu in elit. Class aptento taciti sociosqu ad litora torquent.</p>
									</div>
								</div>
							</div>
							<div class="tab-content ">
								<div class="item-content">
									<div class="text-wrap img-right clearfix">
										<div class="video flat-text-center">
											<img src="${pageContext.request.contextPath}/images/register/video.png" alt="bookflare">
											<a  data-type="iframe" href="https://www.youtube.com/embed/2Ge1GGitzLw?autoplay=1" class=" fancybox">
												<span class="icon-video"></span>
											</a>
										</div>
										<h6 class="title"><a href="#">Limitless Learning Possibilities</a></h6>
										<p class="text">Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt aucto.</p>
										<h6 class="title mg-bottom-25"><a href="#">Register Now!</a></h6>
										<p class="text">Per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condntum sit amet a augue. Sed non mauris vitae erat consequat auctor eu in elit. Class aptento taciti sociosqu ad litora torquent.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> 
	    <footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="widget-about">
						<div id="logo-ft">
							<a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/images/logo/logo-ft.png" alt="Z-Learn" width="157" height="29" ></a>
						</div>
						<p class="description">一个个人网站，记录日常学习的东西。包括但不限于计算机语言、读书笔记</p>
						<div class="list-info">
							<ul>
								<li class="address"><a href="#">Chongqing University of Posts and Telecommunications </a></li>
								<li class="phone"><a href="#">15086998051</a></li>
								<li class="mail"><a href="#">313434726@qq.com</a></li>
							</ul>
						</div>
						<div class="socails">
							<ul class="list">
								<li><a href="#"><span class="fa fa-twitter"></span></a></li>
								<li><a href="#"><span class="fa fa-linkedin-square"></span></a></li>
								<li><a href="#"><span class="fa fa-facebook-official"></span></a></li>
								<li><a href="#"><span class="fa fa-skype"></span></a></li>
								<li><a href="#"><span class="fa fa-pinterest-square"></span></a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="widget-link widget-ft">
						<h6 class=" widget-title">有用的链接</h6>
						<div class="list-wrap clearfix">
							<ul class="one-of-two">
								<li><a href="#">链接1</a></li>
								<li><a href="#">链接2</a></li>
								<li><a href="#">链接3</a></li>
								<li><a href="#">链接4</a></li>
								<li><a href="#">链接5</a></li>
							</ul>
							<ul class="one-of-two">
								<!-- <li><a href="#">Free Trial</a></li> -->
								<li><a href="#"> 支持</a></li>
								<li><a href="#">联系我们</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="widget-recent-work widget-ft">
						<h6 class="widget-title">最近的动态</h6>
						<div class="flat-recentOwl"  data-column="4" data-column2="3" data-loop="true"  data-column3="2" data-gap ="0" data-dots="false" data-nav="true" >
							<div class="flat-imgbox style1 clearfix owl-carousel">
								<div class="column">
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-1.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-5.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
								</div>
								<div class="column">
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-2.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-6.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
								</div>
								<div class="column">
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-3.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-7.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
								</div>
								<div class="column">
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-4.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-8.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
								</div>
								<div class="column">
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-1.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-2.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
								</div>
								<div class="column">
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-3.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-4.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
								</div>
								<div class="column">
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-5.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-6.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
								</div>
								<div class="column">
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-7.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
									<div class="imgbox style1 transition-vline">
										<a href="#">
											<div class="imgbox-img img-vline">
												<img src="${pageContext.request.contextPath}/images/footer/work-8.png" alt="bookflare">
												<div class="overlay">
													<span class="vline"></span>
													<span class="vline vline-bottom"></span>
												</div>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="wrap-btn">
							<a href="#" class="btn-view-more">查看更多</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	    <div class="bottom bg-15222e">
		<div class="container">
			<div class="row">
				<div class="  col-md-6">
					<div class="copyright flat-text-left">
						<p>© Copyright 2019 <a href="http://www.17sucai.com/">Z</a>. All Rights Reserved.</p>
					</div>
				</div>
				<div class="  col-md-6">
					<div class="widget flat-text-right no-border">
						<ul class="list">
							<li><a href="#">Privacy</a></li>
							<li><a href="#">Terms</a></li>
							<li><a href="#">Cookie Policy</a></li>
							<li><a href="#">Sitemap</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- /.bottom -->

	    <a id="scroll-top"></a>


    </div>

    <script src="${pageContext.request.contextPath}/javascript/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/parallax.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/jquery-fancybox.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/imagesloaded.min.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/jquery-isotope.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/jquery.easing.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/jquery.cookie.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/smoothscroll.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/switcher.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/main.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/customFuc.js"></script>
    <script>
        $(function () {
            $("#formLogin").submit(function (data) {
                $.get("${pageContext.request.contextPath}/user/login",$(this).serialize(data),function (info) {
                    if(info!=null&&info!=""){ //登录成功后转到主页
                        window.location.href = "${pageContext.request.contextPath}/index.jsp";
                    }else{
                        alert("登录失败,用户名或密码错误！");
                    }
                });
            });
        });
        checkLogin();
    </script>
</body>
</html>
