<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
    <head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
        <title>Bookflare - A Modern Education & LMS html template</title>

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
        <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/images/favicon-apple.png">

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
                                    <li class="phone"><a href="#">15086998051</a></li>
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
                                    <li><a href="pages/regist">注册</a></li>
                                    <li><a href="pages/login">登录</a></li>
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
                                        <a href="${pageContext.request.contextPath}/index.jsp">首页</a>
                                    </li>
                                    <li>
                                        <a href="#">计算机语言</a>
                                        <ul class="submenu">
                                            <li><a href="pages/language">C</a></li>
                                            <li><a href="pages/language">C++</a></li>
                                            <li><a href="pages/language">Java</a></li>
                                            <li><a href="pages/language">Python</a></li>
                                        </ul>
                                    </li>

                                    <li>
                                        <a href="#">计算机课程</a>
                                        <ul class="submenu">
                                            <li><a href="pages/course">数据结构</a></li>
                                            <li><a href="pages/course">操作系统</a></li>
                                            <li><a href="pages/course">计算机组成原理</a></li>
                                            <li><a href="pages/course">计算机网络</a></li>
                                            <li><a href="pages/course">数据库</a></li>
                                            <li><a href="pages/course">嵌入式</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">读书笔记</a></li>
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

            <section class="flat-title-page parallax parallax7 style3">
                <div class="overlay"></div> 
                <div class="container wrap-title-page ">
                    <div class="title-page">
                        <h2 class="title font-weight-700"><a href="#">About us</a></h2>
                    </div>
                    <div class="breadcrumbs style2">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About us</a></li>
                        </ul>
                    </div>
                </div>
            </section> <!-- /.flat-title-page -->

            <div class="content-wrap  about-us-page">
                <div class="container">
                    <div class="content-page-wrap">
                        <div class="flat-about-info">
                            <div class="info-img border-ra4">
                                <a href="#"><img src="${pageContext.request.contextPath}/images/about/into.png" alt="z-learn"></a>
                            </div> <!-- /.info-img -->
                            <div class="info-content border-ra4 border-f-e6f3ff">
                                <div class="heading">
                                    <h6 class="title-small"> NEED TO KNOW </h6>
                                    <h3 class="title"><a href="#">Driving Innovation</a></h3>
                                </div>
                                <p class="text">Hello, World! We are tophive. A space for learning design, technology and entrepreneurship at the highest level, situated in globally admired creative hub and harbour city: Barcelona</p>
                                <p class="text">In 1792 the Counter Hill Academy opened its doors in New Cross, in a house built by Deptford distiller, William Goodhew. The Royal Naval School then bought the site, building what is now our Richard Hoggart Building in 1843.</p>
                                <p class="text font-Publico">A transformational experience that will shape your unique profile and help you launch your professional career.</p>
                                <p class="text">With the dawn of the twentieth century, the Company handed over the Institute to the University of London. It was re-christened Goldsmiths College and the modern era of Goldsmiths had begun.</p>
                                <div class="wrap-btn">
                                    <a href="#" class="flat-button btn-contact ">CONTACT US</a>
                                </div>
                            </div> <!-- /.info-content -->
                        </div> <!-- /.flat-info -->       
                    </div> <!-- /.content-page-wrap -->
                </div> <!-- /.container -->
                <div class="flat-about-detail ">
                    <div class="container">
                        <div class="heading">
                            <h6 class="title">Whatever discipline you choose, you’ll find your old ideas challenged and your new ideas embraced. Goldsmiths is a place where together we are creating the knowledge of the future.</h6>
                        </div>
                    </div>
                    <div class="flat-tabs bg-fff border-ra4 border-f-e6f3ff style2">
                        <ul class="tab-title style2 clearfix border-bt-e6f3ff  flat-text-center"> 
                            <li class="item-title  overview">
                                <span class="inner">WHO WE ARE</span>
                            </li><li class="item-title event">
                                <span class="inner">OUR EDUCATION</span>
                            </li><li class="item-title review">
                                <span class="inner">OUR STORY</span>
                            </li>
                        </ul>
                        <div class="tab-content-wrap">
                            <div class="tab-content">
                                <div class="item-content">
                                    <div class="container">
                                        <div class="flat-imgbox">
                                            <div class="imgbox">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="imgbox-content left">
                                                            <h3 class="title"><a href="#">An Incubator for Ideas</a></h3>
                                                            <p class="text">
                                                                Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accum dolor same mipsum rvelit. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                                            </p>
                                                            <p class="text">
                                                                The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum ealorum" by Cicero are also reproduced in their exact original form, accompanied by English versions.
                                                            </p> 
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="imgbox-img">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/images/about/detail-1.png" alt="bookflare"></a>
                                                        </div> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="imgbox">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="imgbox-img">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/images/about/detail-2.png" alt="bookflare"></a>
                                                        </div> 
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="imgbox-content right">
                                                            <h3 class="title"><a href="#">President & Leadership</a></h3>
                                                            <p class="text">
                                                                Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accum dolor same mipsum rvelit. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                                            </p>
                                                            <p class="text">
                                                                The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum ealorum" by Cicero are also reproduced in their exact original form, accompanied by English versions.
                                                            </p> 
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content">
                                <div class="item-content">
                                    <div class="container">
                                        <div class="flat-imgbox">
                                            <div class="imgbox">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="imgbox-content left">
                                                            <h3 class="title"><a href="#">An Incubator for Ideas</a></h3>
                                                            <p class="text">
                                                                Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accum dolor same mipsum rvelit. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                                            </p>
                                                            <p class="text">
                                                                The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum ealorum" by Cicero are also reproduced in their exact original form, accompanied by English versions.
                                                            </p> 
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="imgbox-img">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/images/about/detail-1.png" alt="bookflare"></a>
                                                        </div> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="imgbox">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="imgbox-img">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/images/about/detail-2.png" alt="bookflare"></a>
                                                        </div> 
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="imgbox-content right">
                                                            <h3 class="title"><a href="#">President & Leadership</a></h3>
                                                            <p class="text">
                                                                Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accum dolor same mipsum rvelit. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                                            </p>
                                                            <p class="text">
                                                                The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum ealorum" by Cicero are also reproduced in their exact original form, accompanied by English versions.
                                                            </p> 
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content">
                                <div class="item-content">
                                    <div class="container">
                                        <div class="flat-imgbox">
                                            <div class="imgbox">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="imgbox-img">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/images/about/detail-2.png" alt="bookflare"></a>
                                                        </div> 
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="imgbox-content right">
                                                            <h3 class="title"><a href="#">President & Leadership</a></h3>
                                                            <p class="text">
                                                                Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accum dolor same mipsum rvelit. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                                            </p>
                                                            <p class="text">
                                                                The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum ealorum" by Cicero are also reproduced in their exact original form, accompanied by English versions.
                                                            </p> 
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- /.flat-tabs -->
                </div> <!-- /.flat-about-detail -->

                <section class="flat-video">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-8">
                                <div class="video">
                                    <div class="video-content">
                                        <h2 class="title"><a href="#">Discover our School Life</a></h2>
                                        <p class="description">We offer professional SEO services that help <a href="#" class="link-site">websites increase</a> their organic search score drastically in order to compete for the highest rankings.</p>
                                    </div>
                                    <div class="video-icon">
                                        <a class="fancybox videobox-link" data-type="iframe" href="https://www.youtube.com/embed/2Ge1GGitzLw?autoplay=1">
                                            <span class="icon-video"></span>
                                            <div class="videobox-animation circle-1" ></div>
                                            <div class="videobox-animation circle-2" ></div>
                                            <div class="videobox-animation circle-3" ></div>
                                        </a>   
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section> <!-- /.flat-video -->

                <section class="flat-faqs">
                    <div class="heading flat-text-center">
                        <h6 class="title-small">QUESTIONS AND ANSWERS (Q&A)</h6>
                        <h3 class="title font-Poppins">Frequently Asked Questions (FAQ)</h3>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <div class="accordion">
                                    <div class="accordion-toggle border-f-e6f3ff border-ra4">
                                        <div class="toggle-title active">
                                            We have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachers
                                            We have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachers
                                            We have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachers
                                            We have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachersWe have a team of experienced teachers
                                        </div>
                                        <div class="toggle-content" >
                                            <p>Our academics cooperate across disciplines to create exciting new courses and develop novel approaches to research issues. Our interdisciplinary ethos has helped us to become a national leader in many subject areas.
                                            </p> 
                                            <h6  class="title font-Publico font-weight-700"><a href="#">
                                            A transformational experience that will shape your unique profile and help you launch your professional career. </a> </h6>
                                            <p>With the dawn of the twentieth century, the Company handed over the Institute to the University of London. It was re-christened Goldsmiths College and the modern era of Goldsmiths had begun.
                                            </p>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div><!-- /.accordion-toggle -->

                                    <div class="accordion-toggle border-f-e6f3ff border-ra4">
                                        <div class="toggle-title">
                                            We offer academic excellence combined with innovative thinking
                                        </div>
                                        <div class="toggle-content" >
                                            <p>Our academics cooperate across disciplines to create exciting new courses and develop novel approaches to research issues. Our interdisciplinary ethos has helped us to become a national leader in many subject areas.
                                            </p> 
                                            <h6  class="title font-Publico font-weight-700"><a href="#">
                                            A transformational experience that will shape your unique profile and help you launch your professional career. </a> </h6>
                                            <p>With the dawn of the twentieth century, the Company handed over the Institute to the University of London. It was re-christened Goldsmiths College and the modern era of Goldsmiths had begun.
                                            </p>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div><!-- /.accordion-toggle -->

                                    <div class="accordion-toggle border-f-e6f3ff border-ra4">
                                        <div class="toggle-title">
                                            We challenge you to discover your potential and support you in fulfilling
                                        </div>
                                        <div class="toggle-content" >
                                            <p>Our academics cooperate across disciplines to create exciting new courses and develop novel approaches to research issues. Our interdisciplinary ethos has helped us to become a national leader in many subject areas.
                                            </p> 
                                            <h6  class="title font-Publico font-weight-700"><a href="#">
                                            A transformational experience that will shape your unique profile and help you launch your professional career. </a> </h6>
                                            <p>With the dawn of the twentieth century, the Company handed over the Institute to the University of London. It was re-christened Goldsmiths College and the modern era of Goldsmiths had begun.
                                            </p>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div><!-- /.accordion-toggle -->

                                    <div class="accordion-toggle border-f-e6f3ff border-ra4">
                                        <div class="toggle-title">
                                            Careers Service - finding work during and after studying
                                        </div>
                                        <div class="toggle-content" >
                                            <p>Our academics cooperate across disciplines to create exciting new courses and develop novel approaches to research issues. Our interdisciplinary ethos has helped us to become a national leader in many subject areas.
                                            </p> 
                                            <h6  class="title font-Publico font-weight-700"><a href="#">
                                            A transformational experience that will shape your unique profile and help you launch your professional career. </a> </h6>
                                            <p>With the dawn of the twentieth century, the Company handed over the Institute to the University of London. It was re-christened Goldsmiths College and the modern era of Goldsmiths had begun.
                                            </p>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div><!-- /.accordion-toggle -->

                                    <div class="accordion-toggle border-f-e6f3ff border-ra4">
                                        <div class="toggle-title">
                                            Disability Service - equipment or support you need to study effectively
                                        </div>
                                        <div class="toggle-content" >
                                            <p>Our academics cooperate across disciplines to create exciting new courses and develop novel approaches to research issues. Our interdisciplinary ethos has helped us to become a national leader in many subject areas.
                                            </p> 
                                            <h6  class="title font-Publico font-weight-700"><a href="#">
                                            A transformational experience that will shape your unique profile and help you launch your professional career. </a> </h6>
                                            <p>With the dawn of the twentieth century, the Company handed over the Institute to the University of London. It was re-christened Goldsmiths College and the modern era of Goldsmiths had begun.
                                            </p>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div><!-- /.accordion-toggle -->
                                </div>
                            </div>
                            <div class="col-md-1"></div>
                        </div>
                    </div>
                </section> <!-- /.flat-faqs -->


            </div> <!-- /.content-wrap -->



            <footer id="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="widget-about">
                                <div id="logo-ft">
                                    <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/images/logo/logo-ft.png" alt="bookflare" width="157" height="29" ></a>
                                </div>
                                <p class="description">We are a new design studio based in USA. We have over 20 years of combined experience, and know a thing or two about designing websites and mobile apps.</p>
                                <div class="list-info">
                                    <ul>
                                        <li class="address"><a href="#">1107 Wood Street Saginaw, MI New York 48607</a></li>
                                        <li class="phone"><a href="#">+123 345 678 000</a></li>
                                        <li class="mail"><a href="#">info@example.com</a></li>
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
                                <h6 class=" widget-title">USEFULL LINK</h6>
                                <div class="list-wrap clearfix">
                                    <ul class="one-of-two">
                                        <li><a href="#">Register Activation Key</a></li>
                                        <li><a href="#"> Our Plans</a></li>
                                        <li><a href="#"> Government Solutions</a></li>
                                        <li><a href="#">Academic Solutions</a></li>
                                        <li><a href="#">Intellectual Property</a></li>
                                    </ul>
                                    <ul class="one-of-two">
                                        <li><a href="#">Free Trial</a></li>
                                        <li><a href="#"> Support</a></li>
                                        <li><a href="#">Contact Us</a></li>
                                    </ul>
                                </div>   
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="widget-recent-work widget-ft">
                                <h6 class="widget-title">RECENT WORK</h6>
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
                                    <a href="#" class="btn-view-more">VIEW MORE</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

            <a id="scroll-top"></a>

            <div class="bottom bg-15222e">
                <div class="container">
                    <div class="row">
                        <div class="  col-md-6">
                            <div class="copyright flat-text-left">
                                <p>© Copyright 2018 <a href="http://www.17sucai.com/">tophive</a>. All Rights Reserved.</p>
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
            </div>
        </div>


        <script src="${pageContext.request.contextPath}/javascript/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/javascript/parallax.js"></script>
        <script src="${pageContext.request.contextPath}/javascript/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/javascript/jquery-fancybox.js"></script>
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