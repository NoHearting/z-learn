<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>博客内容</title>

    <meta name="author" content="themesflat.com">

    <!-- Mobile Specific Metas -->
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">--%>

    <!-- Bootstrap  -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/bootstrap.css" >

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/responsive.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/colors/color1.css" id="colors">


    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="images/favicon-apple.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/editermd/css/editormd.css" />

    <style>
        body{
            background-color: rgb(245,246,247);
        }
        .blog-title-box{
            height:60px;
        }
        #blog-content{
            width:100%;
            margin:0;
            padding:20px;
        }
        .blog-content-header{
            position: relative;
            border-bottom: 1px solid black;
        }
        .blog-content-header,.blog-content-body,.blog-content-footer{
            width: 100%;
            background-color: white;

            padding:5px;
        }
        .article-info{
            padding-bottom: 10px;

        }
        .blog-operating{
            position: absolute;
            right: 15px;
            top: 60px;
        }
        .article-info span,.article-info a{
            display: inline-block;
            margin: 0 6px;
        }

        .blog-content-body{
            position: relative;

        }
        .postTime{
            position: absolute;
            right: 5px;
        }
        .tags-box span,.tags-box ul{
            display: inline-block;
            margin-left:10px;
        }
        .tags-box ul{
            list-style: none;
            list-style: none;
        }
        .tags-box ul li{
            display: inline-block;
            margin-left: 5px;
        }
    </style>
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

    <div id="blog-content">
        <div class="blog-content-header">
            <div class="blog-title-box">
                <span></span>
                <h1 id="blog-title">开始 </h1>
            </div>
            <div class="article-info">
                <span class="blog-write-time">2017-10-12 15:49:39</span>
                <a href="" class="author-nickname" target="_blank">z无心</a>
                <span class="read-times">阅读数 144562</span>
                <a href="javascript:showMoreTags()" class="tags-more">更多</a>
            </div>
            <div class="blog-operating">
                <a href="">编辑</a>
            </div>
            <div class="tags-box" style="display: none">
                <span class="blog-label">分类标签</span>
                <ul>
                    <li><a href="">C++</a></li>
                    <li><a href="">Java</a></li>
                </ul>
            </div>
        </div>
        <div class="blog-content-body" id="test-editormd">   <%-- --%>
            <textarea id="article-content" style="display:none;" placeholder="markdown语言">
            </textarea>
        </div>
        <div class="blog-content-footer">

        </div>
    </div>






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

<%--markdown支持--%>
<%--<script src="${pageContext.request.contextPath}/editermd/examples/js/jquery.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/editermd/lib/marked.min.js"></script>
<script src="${pageContext.request.contextPath}/editermd/lib/prettify.min.js"></script>
<script src="${pageContext.request.contextPath}/editermd/lib/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/editermd/lib/underscore.min.js"></script>
<script src="${pageContext.request.contextPath}/editermd/lib/sequence-diagram.min.js"></script>
<script src="${pageContext.request.contextPath}/editermd/lib/flowchart.min.js"></script>
<script src="${pageContext.request.contextPath}/editermd/lib/jquery.flowchart.min.js"></script>
<script src="${pageContext.request.contextPath}/editermd/editormd.js"></script>

<script src="${pageContext.request.contextPath}/javascript/custom.js"></script>
<script src="${pageContext.request.contextPath}/javascript/customFuc.js"></script>


<script>
    $(function () {

    });
    function showMoreTags() {
        if($(".tags-more").val()=="更多"){
            $(".tags-box").css("display","block");
            $(".tags-more").val("收起");
        }else{
            $(".tags-box").css("display","none");
            $(".tags-more").val("更多");
        }

    }
</script>

<script type="text/javascript">
    $(function() {
        $.get("${pageContext.request.contextPath}/pages/getBId",{},function (bId) {
            $.get("${pageContext.request.contextPath}/blog/selectBlog",{bId:bId},function (info) {
                $("#blog-title,title").html(info.title);
                $("#article-content").html(info.content);
                $(".blog-write-time").html(timestampToTime(info.writeTime));
                var readStr = "阅读数 "+info.readTimes;
                $(".read-times").html(readStr);


                editormd.markdownToHTML("test-editormd", {
                    htmlDecode      : "style,script,iframe",
                    emoji           : true,
                    taskList        : true,
                    tex             : true,  // 默认不解析
                    flowChart       : true,  // 默认不解析
                    sequenceDiagram : true  // 默认不解析
                });
            });
        });


    });
</script>


</body>
</html>