<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
    <head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
        <title>首页</title>

        <meta name="author" content="themesflat.com">

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!-- Bootstrap  -->
        <link rel="stylesheet" type="text/css" href="stylesheets/bootstrap.css" >

        <!-- Theme Style -->
        <link rel="stylesheet" type="text/css" href="stylesheets/style.css">
        <link rel="stylesheet" type="text/css" href="stylesheets/responsive.css">
        <link rel="stylesheet" type="text/css" href="stylesheets/colors/color1.css" id="colors">

        <!-- REVOLUTION LAYERS STYLES -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/revolution/css/layers.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/revolution/css/settings.css">

        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png">
        <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/images/favicon-apple.png">


    </head>  
    <body class="bg-body3"> 
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
                                    <li class="phone"><a href="${pageContext.request.contextPath}/blog/test2">15086998051</a></li>
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
                            <a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo/logo.png" alt="z-learn" width="157" height="29"  ></a> <%-- data-retina="${pageContext.request.contextPath}/images/logo/logo@2x.png" data-width="157" data-height="29" --%>
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
                                            <li><a href="${pageContext.request.contextPath}/pages/course3">操作系统</a></li>
                                            <li><a href="${pageContext.request.contextPath}/pages/course">计算机组成原理</a></li>
                                            <li><a href="${pageContext.request.contextPath}/pages/course">计算机网络</a></li>
                                            <li><a href="${pageContext.request.contextPath}/pages/course">数据库</a></li>
                                            <li><a href="${pageContext.request.contextPath}/pages/course">嵌入式</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="instructors.html">读书笔记</a></li>
                                    <li><a href="${pageContext.request.contextPath}/pages/problem">兴趣爱好</a></li>
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

            <div class="flat-slider style1">
                <!-- SLIDER -->
                <div class="rev_slider_wrapper fullwidthbanner-container" >
                    <div id="rev-slider1" class="rev_slider fullwidthabanner" data-version="5.4.8">
                        <ul>
                            <!-- Slide 1 -->
                            <li data-transition="random">
                                <!-- Main Image -->
                                <img src="${pageContext.request.contextPath}/images/slider/slider-1.png" alt="z-learn"  class="rev-slidebg"
                                data-bgposition="center center" 
                                data-bgfit="cover" 
                                data-bgrepeat="no-repeat" 
                                data-bgparallax="15" >
                                <div class="overlay"></div>

                                <!-- Layers --> 
                                <div class="tp-caption tp-resizeme font-Poppins font-weight-700  color-fff letter-spaceing-001 not-hover"
                                data-x="['center','center','center','center']" data-hoffset="['10','10','0','0']"
                                data-y="['middle','middle','middle','middle']" data-voffset="['-167','-167','-72','-72']"
                                data-fontsize="['80','80','60','40']"
                                data-lineheight="['100','100','80','60']"
                                data-width="full"
                                data-height="none"
                                data-whitespace="normal"
                                data-transform_idle="o:1;"
                                data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                data-mask_in="x:0px;y:[100%];" 
                                data-mask_out="x:inherit;y:inherit;" 
                                data-start="1000" 
                                data-splitin="none" 
                                data-splitout="none"
                                data-textAlign="['center','center','center','center']" 
                                data-responsive_offset="on"  >Blog For Learning</div> 

                                <div class="tp-caption tp-resizeme  color-fff flat-text-center "
                                data-x="['left','left','left','center']" data-hoffset="['-2','-2','-2','0']"
                                data-y="['middle','middle','middle','middle']" data-voffset="['-62','-62','27','27']"
                                data-fontsize="['20','20','16','14']"
                                data-lineheight="['32','32','22','20']"
                                data-width="full"
                                data-height="none"
                                data-whitespace="normal"
                                data-transform_idle="o:1;"
                                data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                data-mask_in="x:0px;y:[100%];" 
                                data-mask_out="x:inherit;y:inherit;" 
                                data-start="1400" 
                                data-splitin="none" 
                                data-splitout="none" 
                                data-responsive_offset="on" 
                                data-textAlign="['center','center','center','center']" 
                                data-paddingleft="[135, 60, 30, 0]" 
                                data-paddingright="[135, 60, 30, 0]" 
                                > 自己搭建开发的一个在线复习、学习、记录博客，主要涉及到的东西为：<span   class="color-fff font-size-20 font-italic text-underline not-hover" data-fontsize="['20','20','16','14']"
                                data-lineheight="['32','32','22','20']">C++、Java、Arithmetic，基础课程，心情随笔。</span> 所有知识来源于已经学习过、阅读过、尝试过的东西。 </div>

                                <div class="tp-caption"
                                data-x="['left','left','left','center']" data-hoffset="['0','0','0','0']"
                                data-y="['middle','middle','middle','middle']" data-voffset="['70','67','123','123']"
                                data-width="full"
                                data-height="none"
                                data-whitespace="normal"
                                data-transform_idle="o:1;"
                                data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                data-mask_in="x:0px;y:[100%];" 
                                data-mask_out="x:inherit;y:inherit;" 
                                data-start="1800" 
                                data-splitin="none" 
                                data-splitout="none" 
                                data-responsive_offset="on" 
                                data-paddingtop= "['50','50','50','50']"
                                data-paddingbottom= "['50','50','50','50']"
                                data-textAlign="['center','center','center','center']"><a href="${pageContext.request.contextPath}/pages/problem" class="flat-button btn-start-slider border-ra4 ">  开始随机测试</a>  </div>
                            </li><!-- /End Slide 1 -->    
                        </ul>
                    </div>
                </div> 
            </div> <!-- /.flat-slider -->

            <section class="flat-featured style3">
                <div class="wrap-featured">
                    <div class="container">
                        <div class="flat-iconbox clearfix style3 ">
                            <div class="iconbox one-of-three style3 flat-text-center left  ">
                                <div class="iconbox-icon">
                                    <span class="icon-contract-1"><span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span></span>
                                </div>
                                <div class="iconbox-content">
                                    <h6 class="title"><a href="${pageContext.request.contextPath}/blog/write">复习资料添加</a></h6>
                                </div>
                            </div>
                            <div class="iconbox one-of-three style3 flat-text-center active">
                                <div class="iconbox-icon">
                                    <span class="icon-portfolio-1"><span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span><span class="path15"></span><span class="path16"></span><span class="path17"></span></span>
                                </div>
                                <div class="iconbox-content">
                                    <h6 class="title"><a href="#">动态</a></h6>
                                </div>
                            </div>
                            <div class="iconbox one-of-three style3 flat-text-center right ">
                                <div class="iconbox-icon">
                                    <span class="icon-portfolio-3"><span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span><span class="path15"></span><span class="path16"></span><span class="path17"></span></span>
                                </div>
                                <div class="iconbox-content style3">
                                    <h6 class="title"><a href="#">其他类型设计</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section> 

            <section class="flat-popular-courses style2 v2">
                <div class="container">
                    <div class="flat-title flat-text-center">
                        <h2 class="title">最近学习的</h2>
                        <p class="description">你最近学习了一下内容：</p>
                    </div>  
                    <div class="flat-courses clear-sub-columns clearfix isotope-courses style2">
                        <div class="course style2 one-of-three text-2ebd59">
                            <div class="course-border border-f-e6f3ff border-ra4 transition-vline">   
                                <div class="course-img img-vline">
                                    <a href="#"><img src="${pageContext.request.contextPath}/images/courses/courses-index-1.png" alt="z-learn"></a>
                                    <div class="overlay">
                                        <span class="vline"></span>
                                        <span class="vline vline-bottom"></span>
                                    </div>
                                </div>
                                <div class="course-content">
                                    <div class="text-wrap border-bt-e6f3ff">
                                        <h6 class="title"><a href="#">C++</a></h6>
                                        <p class="teacher"><a href="#">C++</a></p>
                                        <p class="description">C++基础知识和面试知识
											C++基础知识和面试知识C++基础知识和面试知识C++基础知识和面试知识C++基础知识和面试知识C++基础知识和面试知识
											
											C++基础知识和面试知识
                                        </p>
                                    </div>
                                    <div class="wrap-rating-price">
                                        <div class="wrap-rating">
											<p>最近学习时间</p>
                                        </div>
                                        <span class="price">FREE</span>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="course style2 one-of-three text-ea0042">
                            <div class="course-border border-f-e6f3ff border-ra4 transition-vline">   
                                <div class="course-img img-vline">
                                    <a href="#"><img src="${pageContext.request.contextPath}/images/courses/courses-index-2.png" alt="z-learn"></a>
                                    <div class="overlay">
                                        <span class="vline"></span>
                                        <span class="vline vline-bottom"></span>
                                    </div>
                                </div>
                                <div class="course-content">
                                    <div class="text-wrap border-bt-e6f3ff">
                                        <h6 class="title"><a href="#">Complete JavaScript Course</a></h6>
                                        <p class="teacher"><a href="#">Rosy Janner</a></p>
                                        <p class="description">Lobortis arcu, a vestibulum augue. Vivamus ipsum neque, facilisis vel mollis vitae.
                                        </p>
                                    </div>
                                    <div class="wrap-rating-price">
                                        <div class="wrap-rating">
                                            <ul class="list star-list">
                                                <li><i class="far fa-star"></i></li>
                                                <li><i class="far fa-star"></i></li>
                                                <li><i class="far fa-star"></i></li>
                                                <li><i class="far fa-star"></i></li>
                                                <li><i class="far fa-star-half"></i></li>
                                            </ul>
                                            <span>4.7  (2,632)</span>
                                        </div>
                                        <span class="price">$49.00</span>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="course style2 one-of-three text-c100ea">
                            <div class="course-border border-f-e6f3ff border-ra4 transition-vline">   
                                <div class="course-img img-vline">
                                    <a href="#"><img src="${pageContext.request.contextPath}/images/courses/courses-index-3.png" alt="z-learn"></a>
                                    <div class="overlay">
                                        <span class="vline"></span>
                                        <span class="vline vline-bottom"></span>
                                    </div>
                                </div>
                                <div class="course-content">
                                    <div class="text-wrap border-bt-e6f3ff">
                                        <h6 class="title"><a href="#">Learning Python Data Analysis</a></h6>
                                        <p class="teacher"><a href="#">Tom Steven</a></p>
                                        <p class="description">Lobortis arcu, a vestibulum augue. Vivamus ipsum neque, facilisis vel mollis vitae.
                                        </p>
                                    </div>
                                    <div class="wrap-rating-price">
                                        <div class="wrap-rating">
                                            <ul class="list star-list">
                                                <li><i class="far fa-star"></i></li>
                                                <li><i class="far fa-star"></i></li>
                                                <li><i class="far fa-star"></i></li>
                                                <li><i class="far fa-star"></i></li>
                                                <li><i class="far fa-star-half"></i></li>
                                            </ul>
                                            <span>4.8  (7,982)</span>
                                        </div>
                                        <span class="price">$39.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>                     
                    </div>       
                </div>
            </section> 

            <section class="flat-upcoming-events style1">
                <div class="container">
                    <div class="flat-title flat-text-center">
                        <h2 class="title">准备添加的东西</h2>
                        <p class="description">下面是准备后面添加的东西，目前还有待加深的东西，或者并未学习完的东西。</p>
                    </div>
                    <div class="flat-events style2">
                        <div class="row">
                            <div class="col-lg-4 col-md-12">
                                <div class="event style2">
                                    <div class="event-img">
                                        <a href="#"><img src="${pageContext.request.contextPath}/images/events/event-grid2-1.png" alt="z-learn"></a>
                                    </div>
                                    <div class="event-content">
                                        <h6 class="title"><a href="#">TED Talks at UCF College of Education</a></h6>
                                        <div class="meta-list">
                                            <ul class="list">
                                                <li class="time"><a href="#">08:00 - 11:00</a></li>
                                                <li class="address"><a href="#">Melbourne</a></li>
                                            </ul>
                                        </div>
                                        <div class="meta-date flat-text-center bg-1dadff">
                                            <p class="day">8</p>
                                            <p class="month">JUNE</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12">
                                <div class="event style2">
                                    <div class="event-img">
                                        <a href="#"><img src="${pageContext.request.contextPath}/images/events/event-grid2-2.png" alt="z-learn"></a>
                                    </div>
                                    <div class="event-content">
                                        <h6 class="title"><a href="#">Summer Course Starts From June</a></h6>
                                        <div class="meta-list">
                                            <ul class="list">
                                                <li class="time"><a href="#">08:00 - 11:00</a></li>
                                                <li class="address"><a href="#">Melbourne</a></li>
                                            </ul>
                                        </div>
                                        <div class="meta-date flat-text-center bg-3caecc">
                                            <p class="day">10</p>
                                            <p class="month">JUNE</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12">
                                <div class="event style2">
                                    <div class="event-img">
                                        <a href="#"><img src="${pageContext.request.contextPath}/images/events/event-grid2-3.png" alt="z-learn"></a>
                                    </div>
                                    <div class="event-content">
                                        <h6 class="title"><a href="#">Importance of Research Seminar</a></h6>
                                        <div class="meta-list">
                                            <ul class="list">
                                                <li class="time"><a href="#">08:00 - 11:00</a></li>
                                                <li class="address"><a href="#">Melbourne</a></li>
                                            </ul>
                                        </div>
                                        <div class="meta-date flat-text-center">
                                            <p class="day">17</p>
                                            <p class="month">JUNE</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section> <!-- /.flat-upcoming-events -->

           



            <footer id="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="widget-about">
                                <div id="logo-ft">
                                    <a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo/logo-ft.png" alt="Z-Learn"  width="157" height="29"></a>
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-1.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-5.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-2.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-6.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-3.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-7.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-4.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-8.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-1.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-2.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-3.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-4.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-5.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-6.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-7.png" alt="z-learn">
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
                                                        <img src="${pageContext.request.contextPath}/images/footer/work-8.png" alt="z-learn">
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
            </footer> <!-- #footer -->

            <div class="bottom bg-15222e">
                <div class="container">
                    <div class="row">
                        <div class="  col-md-6">
                            <div class="copyright flat-text-left">
                                <p>© Copyright 2019 <a href="http://120.78.223.0">Z</a>. All Rights Reserved.</p>
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

        <!-- Revolution Slider -->
        <script src="${pageContext.request.contextPath}/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/slider.js"></script>

        <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->    
        <script src="${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="${pageContext.request.contextPath}/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script src="${pageContext.request.contextPath}/javascript/customFuc.js"></script>
        <script>
            $(function () {
                //检查登录状态
                checkLogin();
            })
        </script>
    </body>
</html>