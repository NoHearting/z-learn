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
    <title>测试</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/editermd/css/editormd.css" />
</head>

<body>

    <div id="test-editor">
            <textarea style="display:none;">### 关于 Editor.md

        **Editor.md** 是一款开源的、可嵌入的 Markdown 在线编辑器（组件），基于 CodeMirror、jQuery 和 Marked 构建。
            </textarea>
    </div>



    <script src="${pageContext.request.contextPath}/editermd/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/editormd.min.js"></script>
    <script type="text/javascript">
        $(function() {
            var editor = editormd("test-editor", {
                width  : "100%",
                height : "100%",
                path   : "${pageContext.request.contextPath}/editermd/lib/"
            });
        });
    </script>

</body>

</html>
