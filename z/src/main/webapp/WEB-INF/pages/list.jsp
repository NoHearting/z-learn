<%--
  Created by zsj
  User: zsj
  Date: 2019/10/7
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list</title>
</head>
<body>
<h4 id="h4-u9053u9489u6570u636Eu7ED3u6784"><a name="道钉数据结构" class="reference-link"></a><span class="header-link octicon octicon-link"></span>道钉数据结构</h4><ul>
    <li>编号</li><li>运行状态<ul>
    <li>正常</li><li>异常</li></ul>
</li><li>检测状态<ul>
    <li>堵车（红色，闪烁）</li><li>结霜（蓝色，闪烁）</li><li>积捞（蓝绿色，闪烁）</li><li>事故（黄色，闪烁）</li><li>正常（绿色）</li></ul>
</li><li>电量</li><li>坐标</li></ul>
<h4 id="h4-u9053u9489u7684u5206u533A"><a name="道钉的分区" class="reference-link"></a><span class="header-link octicon octicon-link"></span>道钉的分区</h4><ul>
    <li>条件：<ol>
        <li>硬件直接存入数据到redis数据库服务器中，不经过后台服务器</li><li>数据库redis中只能知道道钉的坐标值，硬件不提供区域划分</li><li>获取一块区域的道钉需要使用者（前端）给出区域大小，然后后台给出当前区域的所有道钉</li></ol>
    </li><li>方法：<ol>
    <li>使用者传入一个需要查询的区域时，就查询这个区域的所有道钉。</li><li>为查询的区域建立缓存，或者设立固定的区域。</li></ol>
</li></ul>

</code></pre>
</body>
</html>
