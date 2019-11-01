<%--
  Created by zsj
  User: zsj
  Date: 2019/10/26
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .black_overlay{
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index:1001;
            -moz-opacity: 0.8;
            opacity:.80;
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
            border: 10px solid orange;
            background-color: white;
            z-index:1002;
            overflow: auto;
        }
    </style>
</head>
<body>
    <a href="/z/pages/test1">开始</a>
    <a href="/z/pages/allQuestion">所有问题</a>
    <a href="/z/pages/editQuestion?pId=1">编辑问题</a>



    <p>示例弹出层：<a href = "JavaScript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">请点这里</a></p>
    <div id="light" class="white_content">这是一个层窗口示例程序.
        <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">点这里关闭本窗口</a></div>
    <div id="fade" class="black_overlay"></div>


    <script src="${pageContext.request.contextPath}/javascript/jquery.min.js"></script>
    <script>
        $(function () {
            $("遮罩层出现按钮").click(function () {
                $("遮罩层").show();
                var scroll = $(window).scrollTop();
                $("html,body").css({
                    "position":"fixed",
                    "top":-scroll
                }); //相对于窗口定位弹窗，距离顶部的距离等于页面滚动的距离，这样就不会出现点击回到顶部的情况
                // 点击取消弹窗消失
                $("遮罩层消失按钮").click(function () {
                    $("遮罩层").hide();
                    $("html,body").css({
                        "position":"static",   //去除相对于窗口的定位
                    });
                    $(window).scrollTop(scroll);     //恢复浏览器原来的滚动距离
                })
            })
        });

    </script>
</body>
</html>
