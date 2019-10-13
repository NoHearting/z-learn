<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
<meta charset="utf-8">
<title>注册</title>

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/bootstrap.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/style.css">  <!-- 主要美化文件 -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/responsive.css">
	
	
	<script src="${pageContext.request.contextPath}/javascript/jquery-3.3.1.js"></script>
	<script src="${pageContext.request.contextPath}/javascript/owl.carousel.min.js"></script>      <!-- form表单动态设计 -->
	<script src="${pageContext.request.contextPath}/javascript/main.js"></script>



	<style type="text/css">
		.sex{    
			/*美化单选框*/
			display:inline-block;
			width:150px;
			position:relative;
			color:white;
		}
		#registerForm input[type="password"]{
			background: rgba(114,125,135,0.3);
			font-size: 12px;
		}
	</style>
	<script>
		var flagSize = 0;
		$(function () {

			$("input").blur(function () {
				var data = $(this).val();
				if(data==null||data==""){
				    $(this).css("border","1px solid red");
				    flagSize = flagSize-1>=0?flagSize-1:0;
				    return;
				}else{
                    $(this).css("border","1px solid green");
                    flagSize++;
				}

				//如果是确认密码框
				if($(this).attr("name")=="sure-password"){
				    var pwd = $("input[name='password']");
				    if(pwd.val()==null||pwd.val()=="null"||pwd.val()!=data){
                        $(this).css("border","1px solid red");
                        flagSize = flagSize-1>=0?flagSize-1:0;
					}
				}
            });

            $("#registerForm").submit(function () {
                if(flagSize==6){
                    var data = $(this).serialize();
                    $.post("${pageContext.request.contextPath}/user/regist",data,function (info) {
						if(info.status=="NORMAL"){
						    alert(info.description);
						    window.location.href = "${pageContext.request.contextPath}/index.jsp";
						}else{
                            alert(info.description);
						}
                    });
				};
            });

        });


		$(function () {
			$("#ttt").click(function () {
			    alert("点击");
				$.get("${pageContext.request.contextPath}/pages/regist",{},function () {
					alert("完成");
                })
            })
        })
	</script>
</head>

<body>
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
						<li><a href="${pageContext.request.contextPath}/pages/login">登录</a></li>
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
						<p class="free">注册账号<a href="#"></a></p>
						<div class="heading">
							<h6 class="title"> 开始我的学习之旅 </h6>
							<p class="description">Stay Sharp. Get ahead with Learning Paths.</p>
						</div>
						<form id="registerForm" action="javascript:void(0)">
							<div class="wrap-input">
								<input type="text" name="username" placeholder="用户名">
							</div>
							<div class="wrap-input">
								<input type="email" name="email" placeholder="邮箱">
							</div>
							<div class="wrap-input">
								<input type="text" name="phone" placeholder="电话">
							</div>
							<div class="wrap-input">
								<input type="text" name="address" placeholder="地址">
							</div>
							<div class="wrap-input">
								<input type="password" name="password" placeholder="密码">
							</div>
							<div class="wrap-input">
								<input type="password" name="sure-password" placeholder="确认密码">
							</div>
							<div class="wrap-input">
		                        <label class="sex">
		                            <input class="sex-gap" name="gender" type="radio" value="男" checked="checked"/>
		                            <span>男</span>
		                        </label>
		                        <label class="sex">
		                            <input class="sex-gap" name="gender" type="radio" value="女" />
		                            <span>女</span>
		                        </label>
                    		</div>

							<div class="wrap-btn">
								<button class="flat-button btn-apply" id="loginBtn">登录</button>
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



</body>
</html>
