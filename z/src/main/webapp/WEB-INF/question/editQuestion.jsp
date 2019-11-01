<%--
  Created by zsj
  User: zsj
  Date: 2019/10/26
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>写文章</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/editermd/css/editormd.css" />

    <style>
        #question-header{
            width:70%;
            display: flex;
            flex-direction: row;
            border: 1px solid red;
            margin: auto;
        }
        #question-header a,#question-header input,#question-header button{
            display: block;
            height:40px;
            float: left;
        }
    </style>
</head>

<body>

<div id="boxed">
    <form action="javascript:void(0)" method="post" id="question-content">
        <div id="question-header">
            <a href="${pageContext.request.contextPath}/pages/allQuestion" class="all-article">所有问题</a>
            <input type="text" placeholder="问题题目" maxlength="100" name="header">
            <button class="publish" type="submit">修改问题</button>
        </div>
        <div id="question-body">
            <div id="test-editor">
            <textarea id="question-html" style="display:none;" name="content">
            </textarea>
                <%--隐藏域   存放markdown的html数据--%>
                <textarea  class="editormd-html-textarea" ></textarea>
            </div>
        </div>
        <div id="question-footer">
            
            <div id="put-article">
                <div class="item-info">
                    <button type="submit">保存更改</button>
                    <button>返回</button>

                </div>
            </div>
        </div>
    </form>

</div>



<script src="${pageContext.request.contextPath}/javascript/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/editermd/editormd.min.js"></script>
<script type="text/javascript">
    $(function() {
        var editor = editormd("test-editor", {
            width  : "70%",
            height : "400px",
            path   : "${pageContext.request.contextPath}/editermd/lib/",
            saveHTMLToTextarea : true

        });
    });


    $(function () {


    });
    function init() {
        $.get("${pageContext.request.contextPath}/choose/selectOne",{pId:${questionId}},function (problem) {

        })
    }
</script>

</body>

</html>
