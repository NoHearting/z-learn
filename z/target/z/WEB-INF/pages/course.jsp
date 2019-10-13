<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
        <title>计算机课程</title>

        <meta name="author" content="themesflat.com">

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!-- Bootstrap  -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/bootstrap.css" >

        <!-- Theme Style -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/style.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/responsive.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/colors/color1.css" id="colors">


        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png">
        <link rel="apple-touch-icon-precomposed" href="images/favicon-apple.png">

</head>
<body class="bg-body">
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
                                <p class="font-weight-700 datetime">未登录</p>
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

        <section class="flat-title-page parallax parallax1 ">
                <div class="overlay"></div> 
                <div class="container wrap-title-page bg-img">
                    <div class="title-page">
                        <h2 class="title font-weight-700"><a href="#">Events</a></h2>
                        <p class="text">All our courses are self-paced and have been designed by subject matter experts, to give you an interactive and enriched learning experience.</p>
                    </div>
                    <div class="breadcrumbs">
                        <ul>
                            <li><a href="#">首页</a></li>
                            <li><a href="#">计算机课程</a></li>
                        </ul>
                    </div>
                    <img src="${pageContext.request.contextPath}/images/title-page/bg-white.png" alt="bookflare" class="bg-breadcrumbs">
                </div>
            </section> <!-- /.flat-title-page -->

        <div class="content-wrap event-v1-page">
                <div class="container">
                    <div class="content-page-wrap">
                        <div class="flat-events style1">
                            <div class="event style1 v1">
                                <div class="row">
                                    <div class=" col-lg-7 col-md-12">
                                        <div class="event-img">
                                            <a href="#"><img src="${pageContext.request.contextPath}/images/events/event-grid2-1.png" alt="bookflare"></a>
                                            <div class="meta-date flat-text-center">
                                                <span class="day">06</span>
                                                <span class="month">DECEMBER</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" col-lg-5 col-md-12">
                                        <div class="event-content">
                                            <div class="meta-datetime">
                                                <ul class="list">
                                                    <li><a href="#">Sunday</a></li>
                                                    <li><a href="#">December 06</a></li>
                                                    <li><a href="#">9.00 am</a></li> 
                                                </ul>
                                            </div>

                                            <div class="content">
                                                <h3 class="title"><a href="#">September Undergraduate Open House</a></h3>
                                                <p class="description">Lorem Ipsn gravida nibh velalito auctor alipuet. Aenean sollicitudin, lorem quis bibendum auci elit conse ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus.</p>
                                            </div>

                                            <div class="author clearfix">
                                                <div class="author-avata">
                                                    <img src="${pageContext.request.contextPath}/images/events/author-teacher.png" alt="bookflare">
                                                </div> 
                                                <div class="author-info">
                                                    <h4 class="name"><a href="#">Charlotte H. Bronk</a></h4>
                                                    <p class="text">Founder and Сhairman at Global Innovation Catalyst</p>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="event style1 v2">
                                <div class="row">
                                    <div class=" col-lg-5 col-md-12">
                                        <div class="event-content">
                                            <div class="meta-datetime">
                                                <ul class="list">
                                                    <li><a href="#">Sunday</a></li>
                                                    <li><a href="#">December 09</a></li>
                                                    <li><a href="#">9.00 am</a></li> 
                                                </ul>
                                            </div>

                                            <div class="content">
                                                <h3 class="title"><a href="#">Tales from the White House and beyond</a></h3>
                                                <p class="description">Lorem Ipsn gravida nibh velalito auctor alipuet. Aenean sollicitudin, lorem quis bibendum auci elit conse ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus.</p>
                                            </div>

                                            <div class="author clearfix">
                                                <div class="author-avata">
                                                    <img src="${pageContext.request.contextPath}/images/events/author-teacher.png" alt="bookflare">
                                                </div> 
                                                <div class="author-info">
                                                    <h4 class="name"><a href="#">Charlotte H. Bronk</a></h4>
                                                    <p class="text">Founder and Сhairman at Global Innovation Catalyst</p>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" col-lg-7 col-md-12">
                                        <div class="event-img">
                                            <a href="#"><img src="${pageContext.request.contextPath}/images/events/event-grid2-2.png" alt="bookflare"></a>
                                            <div class="meta-date flat-text-center">
                                                <span class="day">09</span>
                                                <span class="month">DECEMBER</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="event style1 v1">
                                <div class="row">
                                    <div class=" col-lg-7 col-md-12">
                                        <div class="event-img">
                                            <a href="#"><img src="${pageContext.request.contextPath}/images/events/event-grid2-3.png" alt="bookflare"> </a>
                                            <div class="meta-date flat-text-center">
                                                <span class="day">12</span>
                                                <span class="month">DECEMBER</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" col-lg-5 col-md-12">
                                        <div class="event-content">
                                            <div class="meta-datetime">
                                                <ul class="list">
                                                    <li><a href="#">Sunday</a></li>
                                                    <li><a href="#">December 12</a></li>
                                                    <li><a href="#">9.00 am</a></li> 
                                                </ul>
                                            </div>

                                            <div class="content">
                                                <h3 class="title"><a href="#">Creating Concrete Universes Gloria Anzaldúa </a></h3>
                                                <p class="description">Lorem Ipsn gravida nibh velalito auctor alipuet. Aenean sollicitudin, lorem quis bibendum auci elit conse ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus.</p>
                                            </div>

                                            <div class="author clearfix">
                                                <div class="author-avata">
                                                    <img src="${pageContext.request.contextPath}/images/events/author-teacher.png" alt="bookflare">
                                                </div> 
                                                <div class="author-info">
                                                    <h4 class="name"><a href="#">Charlotte H. Bronk</a></h4>
                                                    <p class="text">Founder and Сhairman at Global Innovation Catalyst</p>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="event style1 v2">
                                <div class="row">
                                    <div class=" col-lg-5 col-md-12">
                                        <div class="event-content">
                                            <div class="meta-datetime">
                                                <ul class="list">
                                                    <li><a href="#">Sunday</a></li>
                                                    <li><a href="#">December 15</a></li>
                                                    <li><a href="#">9.00 am</a></li> 
                                                </ul>
                                            </div>

                                            <div class="content">
                                                <h3 class="title"><a href="#">Inspiration Memento" Live Commission Art</a></h3>
                                                <p class="description">Lorem Ipsn gravida nibh velalito auctor alipuet. Aenean sollicitudin, lorem quis bibendum auci elit conse ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus.</p>
                                            </div>

                                            <div class="author clearfix">
                                                <div class="author-avata">
                                                    <img src="${pageContext.request.contextPath}/images/events/author-teacher.png" alt="bookflare">
                                                </div> 
                                                <div class="author-info">
                                                    <h4 class="name"><a href="#">Charlotte H. Bronk</a></h4>
                                                    <p class="text">Founder and Сhairman at Global Innovation Catalyst</p>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 col-md-12">
                                        <div class="event-img">
                                            <a href="#"><img src="${pageContext.request.contextPath}/images/events/event-grid2-4.png" alt="bookflare"></a>
                                            <div class="meta-date flat-text-center">
                                                <span class="day">15</span>
                                                <span class="month">DECEMBER</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- /.flat-events -->
                        <div class="flat-paginations">
                            <ul class="list flat-text-center pagination-wrap">
                                <li class="disabled"><a href="#" class="btn-navs">PRE</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#" class="btn-navs">NEXT</a></li>
                            </ul>
                        </div> <!-- .flat-paginations -->                   
                    </div> <!-- /.content-page-wrap -->
                </div> <!-- /.container -->
            </div> <!-- /.content-wrap -->

        <section class="flat-feature parallax parallax2">
                <div class="container">  
                    <div class="row flat-iconbox style1 ">
                        <div class="col-lg-4 col-md-4">
                            <div class="iconbox style1 left">
                                <div class="iconbox-icon">
                                    <span class="icon-book"></span>
                                </div>
                                <div class="iconbox-content">
                                    <h5 class="title">80,000 ONLINE COURSES</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="iconbox style1 center">
                                <div class="iconbox-icon">
                                    <span class="icon-people"></span>
                                </div>
                                <div class="iconbox-content">
                                    <h5 class="title">EXPERT INSTRUCTION</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="iconbox style1 right">
                                <div class="iconbox-icon">
                                    <span class="icon-key"></span>
                                </div>
                                <div class="iconbox-content">
                                    <h5 class="title">LIFETIME ACCESS</h5>
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
            </footer> <!-- #footer -->

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
    <script src="${pageContext.request.contextPath}/javascript/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/jquery.easing.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/jquery.cookie.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/smoothscroll.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/switcher.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/main.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/custom.js"></script>
    <script>
        $(function () {
            //检查登录状态
            checkLogin("${pageContext.request.contextPath}");
        })
    </script>
</body>
</html>