<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>音乐播放器2</title>

    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="apple-touch-icon" href="favicon.ico">

    <style>
        #lzxLrc{height:150px!important;}
        #lzxPlayer{bottom:160px!important;}
        .status{color: rgb(255, 255, 255)!important;}
        #ilt{z-index:100!important;}
    </style>

</head>
<body style="background-image:url(${pageContext.request.contextPath}/images/onlineMusic/logo.jpeg);background-size:cover;">


<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

<!--涉及外调ajax和网易音乐接口-->
<script id="ilt" src="https://player.bingdou.net/player/js/player.js" key="49135e04ad0c4badb76b6a0c605aab4a"></script>

</body>
</html>