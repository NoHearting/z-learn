<%--
  Created by zsj
  User: zsj
  Date: 2019/10/26
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>所有问题</title>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">--%>

    <!-- Bootstrap  -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/bootstrap.css" >

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/responsive.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/colors/color1.css" id="colors">

    <!-- REVOLUTION LAYERS STYLES -->
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/revolution/css/layers.css">--%>
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/revolution/css/settings.css">--%>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/images/favicon-apple.png">


    <style>

        #all-questions{
            width:100%;
            padding: 50px 0px ;
            margin: 0px;
            text-align: center;
            background-color: rgb(233,233,233);
        }
        .show-table{
            width: 100%;
            margin: 0 auto;
            font-size:20px;
        }
        #questions{
            padding: 0px;
            margin: auto;
            width: 1400px;

            background-color: rgb(248,246,242);
            table-layout: fixed;
            border-radius: 5px;
        }
        th{
            height: 25px;
            text-align: center;
            font-weight: bold;
        }
        td{
            text-align: center;
            height: 40px;
            line-height: 40px;

            overflow: hidden;
            text-overflow:ellipsis;
            white-space: nowrap;
        }
        tr{
            margin: 3px 0px;
            display: block;
            border-radius: 5px;
        }
        .tr-id,.tr-status,.tr-type{
            width:100px;

        }
        .tr-operator{
            width: 200px;

        }
        .tr-question{
            width: 900px;
        }
        .tr-operator a{
            display: inline-block;
            margin: 0px 7px;
            width: 40px;
            text-align: center;
            height:25px;
            line-height: 25px;
            border-radius: 3px;
            cursor: pointer;
        }
        .tr-operator a:hover{
            background-color: rgb(0,168,243);
        }
        .question-header{
            width: 1400px;
            height:52px;
            margin: auto;
            text-align: center;
            /*border:1px solid red;*/
            position: relative;
        }
        .question-title{
            width: 200px;
            text-align: center;
            position: absolute;
            left:500px;
            top:10px;
        }
        #select-status{
            width: 150px;
            height:50%;
            position: absolute;
            left: 680px;
            top:10px;
        }
        .add-question{
            width: 100px;
            height:30px;
            /*border: 1px solid yellow;*/
            position: absolute;
            right:10px;
            top:10px;
            text-align: center;
        }
        .add-question a{
            cursor: pointer;
            font-size: 16px;
            font-weight: 700;
            /*color:black;*/
            display: block;
            margin: auto;
            height: 30px;
            width: 100px;
            line-height: 30px;
        }
        .add-question-a:hover{
            color:rgb(0,168,243);
        }

        .selector{
            width: 100%;
            height: 50px;
            margin: 50px auto 0;
            position: relative;
        }
        .selector ul{
            display: block;
            width: 350px;
            height:50px;

            list-style: none;
            padding: 0;
            text-align: center;
            position: relative;
            left: 30%;
        }
        .page-info{
            position: relative;
            top:-50px;
            left:60%;
            width:250px;
            height:50px;
        }
        .page-info span{
            display: inline-block;
            height:30px;
            margin: 15px 10px;
        }
        .selector ul li{
            float: left;
            width:40px;
            height:40px;
            margin: 5px 5px;
            border-radius: 5px;


        }
        .selector ul li a{
            display: block;
            width: 40px;
            height:40px;
            text-align: center;
            line-height: 40px;
            text-decoration: none;
            background-color: white;
            border: 2px solid rgb(0,168,243);
            color:rgb(0,168,243);
            border-radius: 5px;
        }

        .selector ul li a:hover{
            background-color: rgb(0,168,243);
            color:white;
        }
        #selected-active{
            background-color: rgb(0,168,243);
            color:white;
        }
        #dialog-question-title,#dialog_question-add textarea,#dialog-question-title-add,#dialog_question textarea{
            margin: 10px auto;
        }
        .question-change,.question-change-add{
            width: 100%;
            margin: auto;
        }
        .question-change input[type='submit'],.question-change-add input[type='submit']{
            position: relative;
            left: 25%;
        }
        .question-change input[type='button'],.question-change-add input[type='button']{
            position: relative;
            left:45%;
        }
        .dialog-title{
            width:100%;
            margin: auto;
        }
        .dialog-title p{
            width:100%;
            display: block;
            margin: auto;
            text-align: center;
            font-size: 20px;
        }
        .info,.info-add{
            margin: 10px auto;
            width: 100%;
            position: relative;
        }

        .info p,.info-add p{
            width: 100%;
            display: block;
            position: relative;
            left:20px;
        }
        .info p:first-child,.info-add p:first-child{
            display: block;
            position: relative;
            left:0px;
        }

        .dialog-footer{
            width:400px;
            height:30px;
            position: absolute;
            bottom: 2px;
            right:10px;

            text-align: right;
        }
        .dialog-footer text{
            display: inline-block;
            font-size:16px;
            text-align: center;
            line-height: 30px;
            padding: 0;
            margin: 0;
            width:100px;

        }
        .dialog-footer text span{
            font-weight: bold;
        }


        #dialog-question-title{
            font-size:20px;
            font-weight: 400;
            color:black;
        }

        #question-body,#question-body-add{
            color:black;
            height:150px;
        }

        .labels{
            float: left;
            padding: 0 5px;
        }
        .labels-item{
            /*width:40px;*/
            height:20px;
            font-size: 14px;
            color:white;
            background-color: #0c5460;
            text-align: center;
            margin: 0 5px;
            padding:0 5px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
            position: relative;
            float: left;
        }
        .labels-item a{
            background: url("${pageContext.request.contextPath}/images/problem/close10px.png") no-repeat ;
            display: block;
            width: 10px;
            height:10px;
            position: absolute;
            top:-3px;
            right:-3px;
        }

        /*弹窗渲染*/
        .black_overlay{
            display: none;
            position: fixed;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index:1001;
            -moz-opacity: 0.4;
            opacity:.40;
            filter: alpha(opacity=88);
        }
        .white_content {
            display: none;
            position: absolute;
            top: 25%;
            left: 25%;
            width: 55%;
            height: 55%;
            padding: 20px;
            /*border: 10px solid orange;*/
            background-color: white;
            z-index:1002;
            overflow: auto;
            box-shadow: 2px 2px 5px black;
            border-radius: 5px;
        }
        .tags-choose{
            width: 100%;
            height:30px;
        }
        .tags-choose span{
            display: block;
            float: left;

        }
        #question-tags-select{
            width:150px;
            height:25px;
            padding: 3px;
            color:black;
        }
        #question-tags-select optgroup{
            font-weight: bold;
            color:red;
        }
        #question-tags-select option{
            color:black;
        }

        /*图片渲染*/
        #image-close,#image-close-add{
            border-radius: 50%;
            width: 20px;
            height:20px;
            display: block;
            position: absolute;
            top:6px;
            right:6px;

        }
        #image-close:hover,#image-close-add:hover,.labels-item a:hover{
            cursor: pointer;
            /*animation: go-rotate ease-in-out 0.3s;*/
            -webkit-transition-property: transform;
            -moz-transition-property: transform;
            -ms-transition-property: transform;
            -o-transition-property: transform;
            transition-property: transform;

            -webkit-transition-duration: 0.3s;
            -moz-transition-duration: 0.3s;
            -ms-transition-duration: 0.3s;
            -o-transition-duration: 0.3s;
            transition-duration: 0.3s;

            -webkit-transition-timing-function: linear;
            -moz-transition-timing-function: linear;
            -ms-transition-timing-function: linear;
            -o-transition-timing-function: linear;
            transition-timing-function: linear;

            transform: rotate(45deg);
        }

    </style>

</head>
<body>
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
                    <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/images/logo/logo.png" alt="z-learn" width="157" height="29"  ></a> <%-- data-retina="${pageContext.request.contextPath}/images/logo/logo@2x.png" data-width="157" data-height="29" --%>
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
                                <input id="search-key" type="search" name="key" placeholder="请输入关键字">
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

    <div id="all-questions">
        <div class="question-header">
            <div class="question-title">
                <h4>所有问题</h4>
            </div>

            <select name="" id="select-status" onchange="javascript:selectorChanged()">
                <option value="全部">全部</option>
                <option value="未完成">未完成</option>
                <option value="完成">完成</option>
            </select>

            <div class="add-question">
                <a href="javascript:showWindowAdd()" class="add-question-a">添加问题</a>
            </div>
        </div>
        <div class="show-table">
            <table id="questions">
                <tr class="table-header">
                    <th class="tr-id">序号</th>
                    <th class="tr-question">问题</th>
                    <th class="tr-type">类型</th>
                    <th class="tr-status">状态</th>
                    <th class="tr-operator">操作</th>
                </tr>
                <tr class="table-body">
                    <td class="tr-id">1</td>
                    <td class="tr-question">不知道的问题</td>
                    <td class="tr-type">C++</td>
                    <td class="tr-status">完成</td>
                    <td class="tr-operator">
                        <a class="td-edit">编辑</a>
                        <a class="td-delete">删除</a>
                        <a class="td-view">查看</a>
                    </td>
                </tr>
                <tr class="table-body">
                    <td class="tr-id">1</td>
                    <td class="tr-question">不知道的问题</td>
                    <td class="tr-type">C++</td>
                    <td class="tr-status">完成</td>
                    <td class="tr-operator">
                        <a class="td-edit">编辑</a>
                        <a class="td-delete">删除</a>
                        <a class="td-view">查看</a>
                    </td>
                </tr>
                <tr class="table-body">
                    <td class="tr-id">1</td>
                    <td class="tr-question">不知道的问题不知道的问题不知道的问题不知道的问题不知道的问题不知道的问题不知道的问题不知道的问题不知道的问题不知道的问题不</td>
                    <td class="tr-type">C++</td>
                    <td class="tr-status">完成</td>
                    <td class="tr-operator">
                        <a class="td-edit">编辑</a>
                        <a class="td-delete">删除</a>
                        <a class="td-view">查看</a>
                    </td>
                </tr>

            </table>
        </div>
        <div class="selector">
            <ul>
                <li class="selector-pre"><a href="">pre</a></li>
                <li ><a href="" id="selected-active">1</a></li>
                <li><a href="">1</a></li>
                <li><a href="">1</a></li>
                <li><a href="">1</a></li>
                <li class="selector-next"><a href="">next</a></li>
            </ul>
            <div class="page-info">
                <span class="totalCount">总条数：366</span>
                <span class="currPage">当前页码：1/69</span>
            </div>
        </div>

    </div>

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
    <div id="light" class="white_content" style="display: none">
        <%--<a href="javascript:fadeWindow()">关闭</a>--%>
        <img src="${pageContext.request.contextPath}/images/problem/close.png" alt="关闭" id="image-close" onclick="javascript:fadeWindow()">
        <form action="javascript:void(0)" id="dialog_question">
            <div class="dialog-title">
                <p>编辑问题</p>
            </div>
            <input id="dialog-question-title" type="text" placeholder="请输入题目" name="question">
            <textarea name="answer" id="question-body" cols="30" rows="10" placeholder="请输入内容"></textarea>
            <input type="text" name="pId" value="" style="display: none">
            <input type="text" name="isFinished" value="" style="display: none">
            <div class="question-change">
                <input type="submit" value="提交">
                <input type="button" value="取消" onclick="fadeWindow()">
            </div>
            <div class="info">
                <p>tips:</p>
                <p>1.可修改问题的题目和答案</p>
                <p>2.暂不提供修改分类的功能</p>
            </div>
            <div class="dialog-footer">
                <text>序号：<span id="table-id">1</span></text>
                <text>问题id：<span id="question-id">1001</span></text>
            </div>
        </form>
    </div>
    <div id="fade" class="black_overlay" style="display: none;"></div>
    <div id="light-add" class="white_content" style="display: none">
        <img src="${pageContext.request.contextPath}/images/problem/close.png" alt="关闭" id="image-close-add" onclick="javascript:fadeWindowAdd()">
        <form action="javascript:void(0)" id="dialog_question-add">
            <div class="dialog-title">
                <p>编辑问题</p>
            </div>
            <input id="dialog-question-title-add" type="text" placeholder="请输入题目" name="question">
            <textarea name="answer" id="question-body-add" cols="30" rows="10" placeholder="请输入内容"></textarea>
            <input type="text" name="pId" value="" style="display: none">
            <input type="text" name="isFinished" value="" style="display: none">
            <div class="tags-choose">
                <span>选择问题标签/分类：</span>
                <div class="labels">
                    <%--<div class="labels-item" data-remove="">--%>
                        <%--<span>开始</span>--%>
                        <%--<a href=""></a>--%>
                    <%--</div>--%>
                </div>
                <select name="question-tags" id="question-tags-select" onchange="javascript:getLabel()">
                    <optgroup label="语言">
                        <option value="1">C++</option>
                        <option value="2">C</option>
                        <option value="3">Java</option>
                    </optgroup>

                </select>
            </div>
            <div class="question-change-add">
                <input type="submit" value="提交">
                <input type="button" value="取消" onclick="fadeWindowAdd()">
            </div>
            <div class="info-add">
                <p>tips:</p>
                <p>(1)选择标签可以多选，但不能不选 (2)答案可以不写，可以以后再补上</p>
            </div>
            <%--<div class="dialog-footer">--%>
                <%--<text>序号：<span id="table-id-add">1</span></text>--%>
                <%--<text>问题id：<span id="question-id-add">1001</span></text>--%>
            <%--</div>--%>
        </form>
    </div>
    <div id="fade-add" class="black_overlay" style="display: none;"></div>




    <script src="${pageContext.request.contextPath}/javascript/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/waypoints.min.js"></script>

    <%--用于渲染样式开关的js文件--%>
    <script src="${pageContext.request.contextPath}/javascript/jquery.easing.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/jquery.cookie.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/main.js"></script>
    <script>
        $(function () {
            getAllQuestions(null,1);
            setSelectedTags();
        });
        /**
         * 页面初始化的时候显示一页的问题信息
         *
         */
        function getAllQuestions(searchValue,currPage) {
            var selector = $("#select-status").val();
            $.post("${pageContext.request.contextPath}/question/selectedOr",{searchValue:searchValue,currPage:currPage,pageCount:20,isRandom:false,selector:selector},function (pageBean) {
                //设置页码显示信息
                var lis = "";
                var firstPage;
                var prePage = pageBean.currentPage-1;
                if(prePage<1){
                    prePage = 1;
                }
                //<li class="selector-pre"><a href="">pre</a></li>
                if(currPage!=1){
                    firstPage = '<li class="selector-pre" onclick="javascript:getAllQuestions('+searchValue+','+prePage+')" ><a href="#">PRE</a></li>';
                }else{
                    firstPage = '<li class="disabled"><a href="#">PRE</a></li>';
                }
                lis += firstPage;

                //确定页码的开始和结束
                var begin;
                var end;
                if(pageBean.totalPage<5){
                    begin = 1;
                    end = pageBean.totalPage;
                }else{
                    begin = pageBean.currentPage-1;
                    end = pageBean.currentPage+2;
                    if(begin<1){
                        begin = 1;
                        end = begin+3;
                    }
                    if(end>pageBean.totalPage){
                        end = pageBean.totalPage;
                        begin = end-3;
                    }
                }
                var li = "";
                for(var i = begin;i<=end;i++){
                    if(pageBean.currentPage==i){
                        li = '<li onclick="javascript:getAllQuestions('+searchValue+','+i+')"><a href="#" id="selected-active">'+i+'</a></li>';
                    }else{
                        li = '<li onclick="javascript:getAllQuestions('+searchValue+','+i+')"><a href="#">'+i+'</a></li>';
                    }
                    lis += li;
                }
                var nextPage = pageBean.currentPage+1;
                if(nextPage>pageBean.totalPage){
                    nextPage = pageBean.totalPage;
                }
                var lastPage = '<li onclick="javascript:getAllQuestions('+searchValue+','+nextPage+')"><a href="#">NEXT</a></li>'
                lis += lastPage;
                $(".selector ul").html(lis);

                var table = $("#questions");
                table.empty();

                var tableHeader = '<tr class="table-header">\n' +
                    '                    <th class="tr-id">序号</th>\n' +
                    '                    <th class="tr-question">问题</th>\n' +
                    '                    <th class="tr-type">类型</th>\n' +
                    '                    <th class="tr-status">状态</th>\n' +
                    '                    <th class="tr-operator">操作</th>\n' +
                    '                </tr>';
                table.append(tableHeader);

                var beginId = (currPage-1)*pageBean.pageSize;
                for(var i = 0;i<pageBean.list.length;i++){
                    var tr;
                    var bgColorStr;
                    var status = checkQuestionStatus(pageBean.list[i]);
                    if(status=="完成"){
                        bgColorStr = '<tr class="table-body" style="background-color: rgb(72,238,119)">\n';
                    }else{
                        bgColorStr = '<tr class="table-body" style="background-color: rgb(242,136,125)">\n';
                    }
                        tr = bgColorStr +
                        '                    <td class="tr-id" id="'+pageBean.list[i].pId+'">'+(i+beginId+1)+'</td>\n' +
                        '                    <td class="tr-question">'+pageBean.list[i].question+'</td>\n' +
                        '                    <td class="tr-type">'+setQuestionTagsUpdate(pageBean.list[i].tags)+'</td>\n' +
                        '                    <td class="tr-status">'+status+'</td>\n' +
                        '                    <td class="tr-operator">\n' +
                        '                        <a class="td-edit" href="javascript:showWindow('+(i+beginId+1)+','+pageBean.list[i].pId+')">编辑</a>\n' +
                        '                        <a class="td-delete" href="javascript:deleteQuestion('+pageBean.list[i].pId+')">删除</a>\n' +
                        '                        <a class="td-view" href="javascript:showWindowInfoReadOnly('+(i+beginId+1)+','+pageBean.list[i].pId+')">查看</a>\n' +
                        '                    </td>\n' +
                        '                </tr>';
                    table.append(tr);

                }

                setPageInfo(currPage,pageBean.totalCount,pageBean.totalPage);
            });
            //检查一个问题是完成还是未完成的状态
            function checkQuestionStatus(obj) {

                if(obj.isFinished == 0){
                    return "未完成";
                }
                return "完成";
            }

            /**
             * 设置分页显示信息
             * @param currPage      当前页码
             * @param totalCount    总条数
             * @param totalPage     总页码数
             */
            function setPageInfo(currPage,totalCount,totalPage) {
                $(".totalCount").html("总条数："+totalCount);
                $(".currPage").html("当前页码："+currPage+"/"+totalPage);
            }



        }
        /**
         * 筛选问题的条件select选项改变时更新显示信息；
         */
        function selectorChanged() {
            var searchValue = $("#search-key").val();
            searchValue = searchValue== '' ? null:searchValue;
            getAllQuestions(searchValue,1);
        }

        /**
         * 显示对话框，设置问题信息
         * @param qId
         * @param pId
         */
        function showWindow(qId,pId) {
            //设置该问题的现有属性
            $("#table-id").html(qId);
            $("#question-id").html(pId);
            $("#dialog_question input[name='pId']").val(pId);
            $("#dialog_question input[name='isFinished']").val(0);

            //根据pId获取到具体的信息，并设置到页面
            $.get("${pageContext.request.contextPath}/question/selectOne",{pId:pId},function (problem) {
                $("#question-body").val(problem.answer);
                $("#dialog-question-title").val(problem.question);

                $(".question-change,.info").css("display","block");
                $("#question-body").css("height","150px");

                $("#question-body,#dialog-question-title").attr("readonly",false);
            });
            $("#fade").css("display","block");
            $("#light").slideDown("normal","linear");
        }

        /**
         * 显示对话框，设置问题信息,只读无法修改
         * @param qId
         * @param pId
         */
        function showWindowInfoReadOnly(qId,pId) {
            //设置该问题的现有属性
            $("#table-id").html(qId);
            $("#question-id").html(pId);

            //根据pId获取到具体的信息，并设置到页面
            $.get("${pageContext.request.contextPath}/question/selectOne",{pId:pId},function (problem) {
                $("#dialog-question-title").val(problem.question);
                $("#question-body").val(problem.answer);

                $(".question-change,.info").css("display","none");
                $("#question-body").css("height","250px");

                $("#question-body,#dialog-question-title").attr("readonly",true);
            });
            $("#fade").css("display","block");
            $("#light").slideDown("normal","linear");
        }

        /**
         * 隐藏对话框
         */
        function fadeWindow() {

            $("#light").slideUp("normal","linear");
            $("#fade").css("display","none");
        }

        /**
         * ”添加问题“时显示对话框
         */
        function showWindowAdd(){
            $("#fade-add").css("display","block");
            $("#light-add").slideDown("normal","linear");
        }
        /**
         * 关闭“添加问题”时候显示的对话框
         */
        function fadeWindowAdd(){
            $("#light-add").slideUp("normal","linear");
            $("#fade-add").css("display","none");
        }


        //提交修改/保存的表单
        $("#dialog_question").submit(function (data) {
            var answer = $("#question-body").val();
            if(answer.length<1){
                $("#dialog_question input[name='isFinished']").val(0);
            }else{
                $("#dialog_question input[name='isFinished']").val(1);
                data.isFinished = 1;
            }
            //发送修改请求
            $.post("${pageContext.request.contextPath}/question/changeQuestionById",$(this).serialize(data),function (info) {
                if(info==true){
                    fadeWindow();
                    // alert("修改成功")
                }else{
                    alert("修改失败");
                }
            });
        });

        //提交添加的表单
        $("#dialog_question-add").submit(function () {
            //获取需要提交的信息
            var question = $("#dialog-question-title-add").val();  //题目
            if(question.length<1){
                alert("题目不能为空");
                return;
            }
            var answer = $("#question-body-add").val(); //答案
            var isFinished = 0;
            if(answer.length>0){
                isFinished = 1;
            }
            var tagsArray = $(".labels-item");
            if(tagsArray.length<1){
                alert("请选择问题标签");
                return;
            }
            var tagsArrayToJson = new Array(tagsArray.length);
            for(var i = 0;i<tagsArrayToJson.length;i++){
                tagsArrayToJson[i] = parseInt($(tagsArray[i]).attr("data-remove"));
            }
            //js数组转化为Json字符串
            tagsArrayToJson = JSON.stringify(tagsArrayToJson);
            $.post("${pageContext.request.contextPath}/question/insertQuestion",{question:question,answer:answer,isFinished:isFinished,tags:tagsArrayToJson},function (info) {
                if(info=="success"){
                    fadeWindowAdd();
                    alert("成功");
                }
            });
        });

        /**
         * 根据id删除一个“问题”
         * @param pId
         */
        function deleteQuestion(pId) {
            var sure = confirm("确定删除？");
            if(sure){
                $.get("${pageContext.request.contextPath}/question/deleteQuestionById",{pId:pId},function (info) {
                    if(info==true){
                        alert("删除成功");
                        var currP = $("#selected-active").html();
                        var sValue = $("#search-key").val();
                        getAllQuestions(sValue,currP);
                    }
                });
            }

        }

        /**
         * 根据id设置“问题”的标签
         * @param pId
         * @note 废弃，不再使用  同时移除显示“问题标签”的标签元素的一个用于查找的类属性
         *      2019年11月6日更新之后不再使用，具体可查2019年11月6日更新信息
         */
        function setQuestionTags(pId) {

            $.get("${pageContext.request.contextPath}/question/selectQuestionTags",{pId:pId},function (data) {
                var selector = "."+pId;
                var origin_tags = "";
                for(var i = 0;i<data.length;i++){
                    origin_tags += data[i].subType;
                    if(i!=data.length-1){
                        origin_tags += " | ";
                    }
                }
                $(selector).html(origin_tags);

            });
        }

        function setQuestionTagsUpdate(tagArray) {
            var tagsStr = "";
            for(var i = 0;i<tagArray.length;i++){
                tagsStr += tagArray[i].subType;
                if(i != tagArray.length-1){
                    tagsStr += " | ";
                }
            }
            return tagsStr;
        }

        /**
         * 添加“问题”的标签,淡入的方式显示
         */
        function getLabel() {
            if($(".labels-item").length>=3){
                alert("最多能添加3个标签");
                return ;
            }
            var label_id = $("#question-tags-select").val();
            var label_text = $("#question-tags-select").find("option:selected").text();
            var labels_items = $(".labels-item");
            for(var i = 0;i<labels_items.length;i++){
                var data = $(labels_items[i]).attr("data-remove");
                if(data==label_id){
                    alert("不能添加相同的标签");
                    return;
                }
            }

            var label_item =' <div class="labels-item" data-remove="'+label_id+'" style="display:none">\n' +
                '                        <span>'+label_text+'</span>\n' +
                '                        <a href="javascript:removeTags('+label_id+')"></a>\n' +
                '                    </div>';

            $(".labels").append(label_item);
            var selector = "div[data-remove="+label_id+"]";
            $(selector).fadeIn("normal","linear");
        }

        /**
         * 删除选中的标签,删除的时候有淡出效果
         * @param tagsId
         */
        function removeTags(tagsId) {
            var labels_items = $(".labels-item");
            var i = 0;
            for(i = 0;i<labels_items.length;i++){
                var data = $(labels_items[i]).attr("data-remove");
                if(tagsId == data){
                    $(labels_items[i]).fadeOut("normal","linear",function () {
                        this.remove();
                    });
                    break;
                }
            }
        }

        /**
         * 设置“添加问题”的所有问题分类，
         *      用于添加新问题的时候
         */
        function setSelectedTags() {
            $.get("${pageContext.request.contextPath}/question/selectQuestionsClassify",{},function (tags) {
                //一次填充选择元素
                var selectContainer = $("#question-tags-select");
                selectContainer.empty();
                for(var i = 0;i<tags.length;i++){
                    var optgroup = '<optgroup label="'+tags[i].mainType+'">';
                    for(var j = 0;j<tags[i].questionTags.length;j++){
                        var option = '<option value="'+tags[i].questionTags[j].sId+'">'+tags[i].questionTags[j].subType+'</option>';
                        optgroup += option;
                    }
                    optgroup += '</optgroup>';
                    selectContainer.append(optgroup);
                }

            });
        }
    </script>
</body>
</html>
