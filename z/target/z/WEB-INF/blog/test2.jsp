<%--
  Created by zsj
  User: zsj
  Date: 2019/10/16
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>测试2</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/editermd/css/editormd.css" />
</head>

<body>

    <div id="test-editormd">
    　　<textarea style="display:none;" placeholder="markdown语言">#### 道钉数据结构
* 编号
* 运行状态
  - 正常
  - 异常
* 检测状态
  - 堵车（红色，闪烁）
  - 结霜（蓝色，闪烁）
  - 积捞（蓝绿色，闪烁）
  - 事故（黄色，闪烁）
  - 正常（绿色）
* 电量
* 坐标


#### 道钉的分区
* 条件：
  1. 硬件直接存入数据到redis数据库服务器中，不经过后台服务器
  2. 数据库redis中只能知道道钉的坐标值，硬件不提供区域划分
  3. 获取一块区域的道钉需要使用者（前端）给出区域大小，然后后台给出当前区域的所有道钉
* 方法：
  1. 使用者传入一个需要查询的区域时，就查询这个区域的所有道钉。
  2. 为查询的区域建立缓存，或者设立固定的区域。</textarea>
    </div>
    <script src="${pageContext.request.contextPath}/editermd/examples/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/marked.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/prettify.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/underscore.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/sequence-diagram.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/flowchart.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/jquery.flowchart.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/editormd.js"></script>
    <script type="text/javascript">
        $(function() {
            editormd.markdownToHTML("test-editormd", {
                htmlDecode      : "style,script,iframe",
                emoji           : true,
                taskList        : true,
                tex             : true,  // 默认不解析
                flowChart       : true,  // 默认不解析
                sequenceDiagram : true  // 默认不解析
            });
        });
    </script>

</body>

</html>
