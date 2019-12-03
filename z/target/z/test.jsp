<%--
  Created by zsj
  User: zsj
  Date: 2019/10/26
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
        .test-scroll{
            width: 100%;
            height:3000px;
            background-color: #00A0D1;
        }
    </style>
</head>
<body>
    <a href="/z/pages/test1">开始</a>
    <a href="/z/pages/allQuestion">所有问题</a>
    <a href="/z/pages/editQuestion?pId=1">编辑问题</a>
    <a href="/z/pages/allBlog">所有博客</a>
    <a href="javascript:forbidScroll()">禁用鼠标事件</a>
    <select name="" id="" multiple>
        <optgroup label="开始">
            <option value="">上海</option>
            <option value="">广州</option>
            <option value="">背景</option>
        </optgroup>
        <optgroup label="结束">
            <option value="">长寿</option>
            <option value="">澄溪</option>
            <option value="">海棠</option>
        </optgroup>
    </select>


    <p>示例弹出层：<a href = "JavaScript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">请点这里</a></p>
    <div id="light" class="white_content">这是一个层窗口示例程序.
        <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">点这里关闭本窗口</a></div>
    <div id="fade" class="black_overlay"></div>


    <script src="${pageContext.request.contextPath}/javascript/jquery.min.js"></script>
    <script>


    </script>
</body>
</html>
