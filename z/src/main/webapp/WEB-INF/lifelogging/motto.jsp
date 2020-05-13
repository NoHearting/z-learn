<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>旅行者的时间表</title>

  <!-- Mobile Specific Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <!-- Bootstrap  -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/bootstrap.css" >

  <!-- Theme Style -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/style.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/responsive.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/newAdd/load.css">


  <script src="${pageContext.request.contextPath}/javascript/jquery.min.js"></script>

  <script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/javascript/main.js"></script>


  <%--<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>--%>



</head>
<body>




  <%--<div id="header" class="bg-fff style1">--%>
    <%--<div class="container">--%>
      <%--<div class="header-wrap clearfix">--%>
        <%--<div id="logo">--%>
          <%--<a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo/logo.png" alt="z-learn" width="157" height="29"  ></a> &lt;%&ndash; data-retina="${pageContext.request.contextPath}/images/logo/logo@2x.png" data-width="157" data-height="29" &ndash;%&gt;--%>
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
                  <%--<li><a href="${pageContext.request.contextPath}/pages/course">微言大义</a></li>--%>
                  <%--<li><a href="${pageContext.request.contextPath}/pages/course3">心情随笔</a></li>--%>
                  <%--<li><a href="${pageContext.request.contextPath}/pages/course">工作学习</a></li>--%>
                  <%--<li><a href="${pageContext.request.contextPath}/pages/course">感悟</a></li>--%>
                <%--</ul>--%>
              <%--</li>--%>
              <%--<li>--%>
                <%--<a href="${pageContext.request.contextPath}/pages/problem">兴趣爱好</a>--%>
                <%--<ul class="submenu">--%>
                  <%--<li><a href="#">阅读写作</a></li>--%>
                  <%--<li><a href="#">锻炼运动</a></li>--%>
                  <%--<li><a href="#">民谣吉他</a></li>--%>
                <%--</ul>--%>
              <%--</li>--%>
              <%--<li>--%>
                <%--<a href="#">个人博客</a>--%>
              <%--</li>--%>
              <%--<li>--%>
                <%--<a href="${pageContext.request.contextPath}/pages/infocenter">留言反馈</a>--%>
              <%--</li>--%>
              <%--<li >--%>
                <%--<a href="#">关于</a>--%>
                <%--<ul class="submenu">--%>
                  <%--<li><a href="${pageContext.request.contextPath}/pages/FAQs">关于我</a></li>--%>
                  <%--<li><a href="${pageContext.request.contextPath}/pages/about-us">关于本站</a></li>--%>
                  <%--<li class="item-has-child">--%>
                    <%--<a href="#">赞助</a>--%>
                    <%--<ul class="submenu">--%>
                      <%--<li ><a href="shop.html">微信</a></li>--%>
                      <%--<li><a href="shop-single.html">支付宝</a></li>--%>
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
  <%--</div>--%>
  <%@ include file="/template/header.jsp"%>

  <header class="site-header">
    <div class="wrapper">
      <h1 class="site-header__title">微言大义</h1>
    </div>
  </header>

  <section class="timeline">
    <div class="wrapper" id="items-timeline">
      <div class="timeline__item timeline__item--0">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1977 Aug. 20</h2>
          <p class="timeline__item__content__description">Voyager 2 launched from Kennedy Space Flight CenterVoyager 2 launched from Kennedy Space Flight CenterVoyager 2 launched from Kennedy Space Flight CenterVoyager 2 launched from Kennedy Space Flight CenterVoyager 2 launched from Kennedy Space Flight CenterVoyager 2 launched from Kennedy Space Flight CenterVoyager 2 launched from Kennedy Space Flight CenterVoyager 2 launched from Kennedy Space Flight CenterVoyager 2 launched from Kennedy Space Flight CenterVoyager 2 launched from Kennedy Space Flight Center</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--1">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1977 Sept. 5</h2>
          <p class="timeline__item__content__description">Voyager 1 launched from Kennedy Space Flight Center, Voyager 1 returns first spacecraft photo of Earth and Moon</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--2">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1979 Mar. 5</h2>
          <p class="timeline__item__content__description">Voyager 1 makes its closest approach to Jupiter</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--3">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1979 July 9</h2>
          <p class="timeline__item__content__description">Voyager 2 makes its closest approach to Jupiter</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--4">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1980 Nov. 12</h2>
          <p class="timeline__item__content__description">Voyager 1 flies by Saturn, Voyager 1 begins its trip out of the Solar System</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--5">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1981 Aug. 25</h2>
          <p class="timeline__item__content__description">Voyager 2 flies by Saturn</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--6">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1982</h2>
          <p class="timeline__item__content__description">Deep Space Network upgrades two 26-m antennas to 34-m</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--7">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1986 Jan. 24</h2>
          <p class="timeline__item__content__description">Voyager 2 has the first-ever encounter with Uranus, Deep Space Network begins expansion of 64-m antennas to 70-m</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--8">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1987</h2>
          <p class="timeline__item__content__description">Voyager 2 'observes' Supernova 1987A</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--9">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1988</h2>
          <p class="timeline__item__content__description">Voyager 2 returns first color images of Neptune</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--10">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1989 Aug. 25</h2>
          <p class="timeline__item__content__description">Voyager 2 is the first spacecraft to observe Neptune, Voyager 2 begins its trip out of the Solar System, below the ecliptic plane</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--11">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1990 Jan. 1</h2>
          <p class="timeline__item__content__description">Begins Voyager Interstellar Mission</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--12">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1990 Feb. 14</h2>
          <p class="timeline__item__content__description">Last Voyager Images - Portrait of the Solar System</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--13">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">1998 Feb. 17</h2>
          <p class="timeline__item__content__description">Voyager 1 passes Pioneer 10 to become the most distant human-made object in space</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--14">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">2004 Dec. 15</h2>
          <p class="timeline__item__content__description">Voyager 1 crosses Termination Shock</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--15">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">2007 Sep. 5</h2>
          <p class="timeline__item__content__description">Voyager 2 crosses Termination Shock</p>
        </div>
      </div>
      <div class="timeline__item timeline__item--16">
        <div class="timeline__item__station"></div>
        <div class="timeline__item__content">
          <h2 class="timeline__item__content__date">2012 Aug. 25</h2>
          <p class="timeline__item__content__description">Voyager 1 enters Interstellar Space</p>
        </div>
      </div>
    </div>
    <div class="load-container" style="display: none;">
      <div class="load-end">
        <div class="load-arc"></div>
        <h1 class="load-content"><span>LOADING</span></h1>
      </div>
    </div>
  </section>
  <div style="display: none" id="add-item"></div>
  <script>


      /**
       * 检测进度条是否到达底部，到达底部之后就添加新的条目
       * 问题：网页文件编写的时候一定要在网页文件开始申明DOCTYPE，比如 <!DOCTYPE html> ，
       *        否则，可能会引起解析问题。就拿这个例子来说，如果不申明该元素，
       *        $(window).height() 和 $(document).height() 拿到的高度可能就是一样的。
       */
    $(window).scroll(function () {
        // alert();
        // console.info($(window).scrollTop()+$(window).height()+" : "+$(document).height());
        if($(window).scrollTop()+$(window).height()+1 >= $(document).height()){
            // alert("增加5个item---"+$(document).height());
            $(".load-container").show();
            setTimeout(function(){


                var container = $("#items-timeline");
                var num = 3;   // 添加的个数
                var curr_length_item = $(".timeline__item").length;
                for(var i = 0;i<num;i++){
                    var div = '<div class="timeline__item timeline__item--'+(curr_length_item+i)+'">\n' +
                        '        <div class="timeline__item__station"></div>\n' +
                        '        <div class="timeline__item__content">\n' +
                        '          <h2 class="timeline__item__content__date">new add-'+i+'</h2>\n' +
                        '          <p class="timeline__item__content__description">Voyager 2 launched from Kennedy Space Flight Center</p>\n' +
                        '        </div>\n' +
                        '      </div>';
                    container.append(div);
                    // customWayPoint('timeline__item--'+(curr_length_item+i),'timeline__item-bg',defaultOffset)

                }
                $(".load-container").hide();
            },1000);


        }
    });

    function customWayPoint(className, addClassName, customOffset) {
    var waypoints = $(className).waypoint({
      handler: function(direction) {
        if (direction == "down") {
          $(className).addClass(addClassName);
        } else {
          $(className).removeClass(addClassName);
        }
      },
      offset: customOffset
    });
  }

    var defaultOffset = '50%';

    for (i = 0; i < 17; i++) {
      customWayPoint('.timeline__item--' + i, 'timeline__item-bg', defaultOffset);
    }
  </script>

</body>
</html>
