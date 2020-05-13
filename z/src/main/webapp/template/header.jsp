<%--
  Created by zsj
  User: zsj
  Date: 2020/2/7
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <style>
        /*body{*/
            /*background-color: rgb(255,126,126) !important;*/
        /*}*/
    </style>
</head>
<body>
    <div id="header" class="bg-fff style1">
            <div class="container">
            <div class="header-wrap clearfix">
                <div id="logo">
                    <a href="/index.jsp"><img src="${pageContext.request.contextPath}/images/logo/logo.png" alt="z-learn" width="157" height="29"  ></a> <%-- data-retina="${pageContext.request.contextPath}/images/logo/logo@2x.png" data-width="157" data-height="29" --%>
                </div>
                <div class="nav-wrap flat-text-right style1">
                    <nav id="main-nav">
                        <ul class="menu" >
                            <li class="active">
                                <a href="#">首页</a>
                            </li>
                            <li>
                                <a href="#">学习资料</a>
                                <ul class="submenu">
                                    <li><a href="${pageContext.request.contextPath}/pages/motto">书籍</a></li>
                                    <li><a href="${pageContext.request.contextPath}/pages/course3">文章</a></li>
                                    <li><a href="${pageContext.request.contextPath}/pages/course">视频</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">兴趣爱好</a>
                                <ul class="submenu">
                                    <li><a href="#">阅读写作</a></li>
                                    <li><a href="#">锻炼运动</a></li>
                                    <li><a href="#">民谣吉他</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="http://39.97.184.63/">个人博客</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/pages/infocenter">留言反馈</a>
                            </li>
                            <li >
                                <a href="#">关于</a>
                                <ul class="submenu">
                                    <li><a href="${pageContext.request.contextPath}/pages/FAQs">关于我</a></li>
                                    <li><a href="${pageContext.request.contextPath}/pages/about-us">关于本站</a></li>
                                    <li class="item-has-child">
                                        <a href="#">赞助</a>
                                        <ul class="submenu">
                                            <li ><a href="shop.html">微信</a></li>
                                            <li><a href="shop-single.html">支付宝</a></li>
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
    </div>
</body>
</html>
