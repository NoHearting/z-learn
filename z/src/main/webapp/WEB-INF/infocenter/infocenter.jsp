<%--
  Created by zsj
  User: zsj
  Date: 2020/1/14
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/bootstrap.css" >
    
    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/responsive.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/colors/color1.css" id="colors">

    <!-- REVOLUTION LAYERS STYLES -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/revolution/css/settings.css">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/images/favicon-apple.png">

    <style>
        .website-records{
            width:98%;

            margin: 0 auto;

            text-align: center;


        }


        .website-records a{
            color:#718297;
        }

        /*设置导航栏的样式  设置为透明*/
        #header{
            /*opacity: 0.5;*/
            background-color: rgba(255,255,255,0.7);
        }

        .media,.media-body,.media-left{
            margin:10px 5px !important;
        }

        .date-info-position{
            padding-right: 25px;
            text-align: right;
        }

        #page-select{
            text-align: center;

        }
        #infocenter-footer{
            margin-bottom: 50px;
        }
        .date-info-position span{
            display: inline-block;
            margin-right: 10px;
        }
        .infocenter-reply{
            padding:5px 10px;
        }

        .infocenter-reply button{
            padding: 0px 8px;
            height: 32px;
        }
        .reply-div{
            margin: 10px 0;
        }
        .reply-div textarea{
            margin-bottom: 5px;
        }

        #header-img{
            margin: 20px 0px;
        }
        #form-submit form{
            text-align: right;
        }

        #form-submit form input{
            margin-top: 10px;
            height:35px;
        }

    </style>
</head>
<body class="bg-body3">
<div class="boxed">
    <div class="preloader">
                <span class="loader">
                    <span class="loader-inner"></span>
                </span>
    </div>





    <%--<div id="header" class="bg-fff style1">--%>
        <%--<div class="container">--%>
            <%--<div class="header-wrap clearfix">--%>
                <%--<div id="logo">--%>
                    <%--<a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/images/logo/logo.png" alt="z-learn" width="157" height="29"  ></a> &lt;%&ndash; data-retina="${pageContext.request.contextPath}/images/logo/logo@2x.png" data-width="157" data-height="29" &ndash;%&gt;--%>
                <%--</div>--%>
                <%--<div class="nav-wrap flat-text-right style1">--%>
                    <%--<nav id="main-nav">--%>
                        <%--<ul class="menu" >--%>
                            <%--<li class="active">--%>
                                <%--<a href="#">首页</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="#">生活记录</a>--%>
                                <%--<ul class="submenu">--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">数据结构</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course3">操作系统</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">计算机组成原理</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">计算机网络</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">数据库</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">嵌入式</a></li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="${pageContext.request.contextPath}/pages/problem">兴趣爱好</a>--%>
                                <%--<ul class="submenu">--%>
                                    <%--<li><a href="#">阅读写作</a></li>--%>
                                    <%--<li><a href="#">锻炼运动</a></li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="#">个人博客</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="#">留言反馈</a>--%>
                                <%--<ul class="submenu">--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">数据结构</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course3">操作系统</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">计算机组成原理</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">计算机网络</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">数据库</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/course">嵌入式</a></li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li >--%>
                                <%--<a href="#">关于</a>--%>
                                <%--<ul class="submenu">--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/FAQs">留言反馈</a></li>--%>
                                    <%--<li><a href="${pageContext.request.contextPath}/pages/about-us">关于我</a></li>--%>
                                    <%--<li class="item-has-child">--%>
                                        <%--<a href="#">SHOP</a>--%>
                                        <%--<ul class="submenu">--%>
                                            <%--<li ><a href="shop.html"></a></li>--%>
                                            <%--<li><a href="shop-single.html"></a></li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>

                        <%--</ul>--%>
                    <%--</nav>--%>
                <%--</div>--%>

                <%--<div class="extra-menu flat-text-right clearfix">--%>
                    <%--<div class="wrap-search-header">--%>
                        <%--<div class="search-header">--%>
                            <%--<form>--%>
                                <%--<input type="search" name="key" placeholder="Search for Courses">--%>
                                <%--<button class="btn-search"><span class="icon-search"></span></button>--%>
                            <%--</form>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="cart nav-top-cart-wrapper">--%>
                        <%--<!-- <a href="#"><span class="bf-icon icon-cart"></span></a> <span class="count-cart">0</span> -->--%>
                        <%--<div class="nav-shop-cart">--%>
                            <%--<div class="widget_shopping_cart_content">--%>
                                <%--<div class="woocommerce-min-cart-wrap">--%>
                                    <%--<ul class="woocommerce-mini-cart cart_list product_list_widget flat-text-center">--%>
                                        <%--<li class="woocommerce-mini-cart-item mini_cart_item">--%>
                                            <%--<span>No Items in Shopping Cart</span>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</div><!-- /.widget_shopping_cart_content -->--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="mobile-button">--%>
                    <%--<span></span>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div> --%>
    <%@include file="/template/header.jsp"%>


    <div class="container">
        <div id="infocenter-header">
            <div id="header-img">
                <img src="${pageContext.request.contextPath}/images/infocenter/liuyan.jpg" alt="留言">
            </div>
            <div id="form-submit">
                <form action="#">
                    <textarea name="" id="" cols="30" rows="10" placeholder="既然来了，就说几句。。。"></textarea>
                    <input type="submit" value="提交">
                </form>
            </div>
        </div>
        <div id="infocenter-body">
            <div id="list-content">
                <ul class="media-list">
                    <li class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="holder.js/64x64" alt="...">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Media heading</h4>
                            <div>
                                akdjnxv,nval;kfgklskn上课了那个浪漫；里送给你，拿过来发过来看上哪个是，
                            按时打卡干打哪， 阿门吗， 鞍点，啊你们，啊吗，安德玛，安德玛那吗， 你，爱马仕，慢，嘛你们，打哪，啊那倒是嘛是的嘛，饭，麻烦你，1你看，弄饭，你，1吗，你们，饭，美少女风，am，没那么，你们，nasda
                            爱发科那，嘛，没收到那，模拟，1你是否南方
                             按时打卡能感， ma.fagnsm,dna，你告诉，模拟，模拟，满分，满分
                            </div>
                            <div class="date-info">
                                <div class="date-info-position">
                                    <span>2019-10-10 10:10:10</span>
                                    <a href="#">回复</a>
                                </div>

                            </div>
                            <div class="media">
                                <div class="media-left">
                                    <a href="#">
                                        <img class="media-object" src="holder.js/64x64" alt="...">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">第二个</h4>
                                    <div>
                                        akdjnxv,nval;kfgklskn上课了那个浪漫；里送给你，拿过来发过来看上哪个是，
                                        按时打卡干打哪， 阿门吗， 鞍点，啊你们，啊吗，安德玛，安德玛那吗， 你，爱马仕，慢，嘛你们，打哪，啊那倒是嘛是的嘛，饭，麻烦你，1你看，弄饭，你，1吗，你们，饭，美少女风，am，没那么，你们，nasda
                                        爱发科那，嘛，没收到那，模拟，1你是否南方
                                        按时打卡能感， ma.fagnsm,dna，你告诉，模拟，模拟，满分，满分
                                    </div>
                                </div>
                            </div>
                            <div class="infocenter-reply">
                                <input type="text" placeholder="我也说一句">
                                <div class="reply-div" style="display: none;">
                                    <form action="#">
                                        <textarea class="form-control" rows="3"></textarea>
                                        <button type="submit" class="btn btn-success btn-sm">&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;&nbsp;</button>
                                        <button class="btn btn-default">取消</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="holder.js/64x64" alt="...">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Media heading</h4>
                            <div>
                                akdjnxv,nval;kfgklskn上课了那个浪漫；里送给你，拿过来发过来看上哪个是，
                                按时打卡干打哪， 阿门吗， 鞍点，啊你们，啊吗，安德玛，安德玛那吗， 你，爱马仕，慢，嘛你们，打哪，啊那倒是嘛是的嘛，饭，麻烦你，1你看，弄饭，你，1吗，你们，饭，美少女风，am，没那么，你们，nasda
                                爱发科那，嘛，没收到那，模拟，1你是否南方
                                按时打卡能感， ma.fagnsm,dna，你告诉，模拟，模拟，满分，满分
                            </div>

                        </div>
                    </li>
                    <li class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="holder.js/64x64" alt="...">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Media heading</h4>
                            <div>
                                akdjnxv,nval;kfgklskn上课了那个浪漫；里送给你，拿过来发过来看上哪个是，
                                按时打卡干打哪， 阿门吗， 鞍点，啊你们，啊吗，安德玛，安德玛那吗， 你，爱马仕，慢，嘛你们，打哪，啊那倒是嘛是的嘛，饭，麻烦你，1你看，弄饭，你，1吗，你们，饭，美少女风，am，没那么，你们，nasda
                                爱发科那，嘛，没收到那，模拟，1你是否南方
                                按时打卡能感， ma.fagnsm,dna，你告诉，模拟，模拟，满分，满分
                            </div>

                        </div>
                    </li>
                    <li class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="holder.js/64x64" alt="...">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Media heading</h4>
                            <div>
                                akdjnxv,nval;kfgklskn上课了那个浪漫；里送给你，拿过来发过来看上哪个是，
                                按时打卡干打哪， 阿门吗， 鞍点，啊你们，啊吗，安德玛，安德玛那吗， 你，爱马仕，慢，嘛你们，打哪，啊那倒是嘛是的嘛，饭，麻烦你，1你看，弄饭，你，1吗，你们，饭，美少女风，am，没那么，你们，nasda
                                爱发科那，嘛，没收到那，模拟，1你是否南方
                                按时打卡能感， ma.fagnsm,dna，你告诉，模拟，模拟，满分，满分
                            </div>

                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div id="infocenter-footer">
            <div class="flat-paginations">
                <ul id="page-select" class="list flat-text-left pagination-wrap">
                    <li class="disabled"><a href="#" class="btn-navs">PRE</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#" class="btn-navs">NEXT</a></li>
                </ul>
            </div>
        </div>
    </div>

    <%@include file="/template/footer.jsp"%>
    <%--<footer id="footer">--%>
        <%--<div class="container">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-4">--%>
                    <%--<div class="widget-about">--%>
                        <%--<div id="logo-ft">--%>
                            <%--<a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo/logo-ft.png" alt="Z-Learn"  width="157" height="29"></a>--%>
                        <%--</div>--%>
                        <%--<p class="description">一个个人网站，记录日常学习的东西。包括但不限于计算机语言、读书笔记</p>--%>
                        <%--<div class="list-info">--%>
                            <%--<ul>--%>
                                <%--<li class="address"><a href="#">Chongqing University of Posts and Telecommunications </a></li>--%>
                                <%--<li class="phone"><a href="#">15086998051</a></li>--%>
                                <%--<li class="mail"><a href="#">313434726@qq.com</a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                        <%--<div class="socails">--%>
                            <%--<ul class="list">--%>
                                <%--<li><a href="#"><span class="fa fa-twitter"></span></a></li>--%>
                                <%--<li><a href="#"><span class="fa fa-linkedin-square"></span></a></li>--%>
                                <%--<li><a href="#"><span class="fa fa-facebook-official"></span></a></li>--%>
                                <%--<li><a href="#"><span class="fa fa-skype"></span></a></li>--%>
                                <%--<li><a href="#"><span class="fa fa-pinterest-square"></span></a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div class="col-md-4">--%>
                    <%--<div class="widget-link widget-ft">--%>
                        <%--<h6 class=" widget-title">有用的链接</h6>--%>
                        <%--<div class="list-wrap clearfix">--%>
                            <%--<ul class="one-of-two">--%>
                                <%--<li><a href="#">链接1</a></li>--%>
                                <%--<li><a href="#">链接2</a></li>--%>
                                <%--<li><a href="#">链接3</a></li>--%>
                                <%--<li><a href="#">链接4</a></li>--%>
                                <%--<li><a href="#">链接5</a></li>--%>
                            <%--</ul>--%>
                            <%--<ul class="one-of-two">--%>
                                <%--<!-- <li><a href="#">Free Trial</a></li> -->--%>
                                <%--<li><a href="#"> 支持</a></li>--%>
                                <%--<li><a href="#">联系我们</a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4">--%>
                    <%--<div class="widget-recent-work widget-ft">--%>
                        <%--<h6 class="widget-title">最近的动态</h6>--%>
                        <%--<div class="flat-recentOwl"  data-column="4" data-column2="3" data-loop="true"  data-column3="2" data-gap ="0" data-dots="false" data-nav="true" >--%>
                            <%--<div class="flat-imgbox style1 clearfix owl-carousel">--%>
                                <%--<div class="column">--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-1.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-5.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="column">--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-2.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-6.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="column">--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-3.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-7.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="column">--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-4.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-8.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="column">--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-1.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-2.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="column">--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-3.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-4.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="column">--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-5.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-6.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="column">--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-7.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="imgbox style1 transition-vline">--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="imgbox-img img-vline">--%>
                                                <%--<img src="${pageContext.request.contextPath}/images/footer/work-8.png" alt="z-learn">--%>
                                                <%--<div class="overlay">--%>
                                                    <%--<span class="vline"></span>--%>
                                                    <%--<span class="vline vline-bottom"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="wrap-btn">--%>
                            <%--<a href="#" class="btn-view-more">查看更多</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</footer> <!-- #footer -->--%>

    <%--<div class="bottom bg-15222e">--%>
        <%--<div class="container">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-4">--%>
                    <%--<div class="copyright flat-text-left">--%>
                        <%--<p>© Copyright 2019 <a href="http://120.78.223.0">Z</a>. All Rights Reserved.</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4">--%>
                    <%--<div class="website-records copyright">--%>
                        <%--<a href="http://www.beian.miit.gov.cn/" target="_blank">渝ICP备19016916号</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4">--%>
                    <%--<div class="widget flat-text-right no-border">--%>
                        <%--<ul class="list">--%>
                            <%--<li><a href="#">Privacy</a></li>--%>
                            <%--<li><a href="#">Terms</a></li>--%>
                            <%--<li><a href="#">Cookie Policy</a></li>--%>
                            <%--<li><a href="#">Sitemap</a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div> <!-- /.bottom -->--%>

    <%--<a id="scroll-top"></a>--%>
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
<script src="${pageContext.request.contextPath}/javascript/docs.min.js"></script>
<script src="${pageContext.request.contextPath}/javascript/customFuc.js"></script>
<script>
    $(function () {

        //检查登录状态
        checkLogin();

        //动态加载导航栏   需要修改
        // loadHeaderTab();
    });

</script>
</body>
</html>
