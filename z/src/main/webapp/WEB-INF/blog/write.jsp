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
    <title>写文章</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/editermd/css/editormd.css" />

    <style>
        body{
            background-color: rgb(245,246,247);
            margin: 0;
            padding: 0;
        }
        #boxed{
            background-color: white;
            width:90%;
            margin: 0 auto 50px;
            padding-bottom:20px;
            padding-top: 4px;
        }
        #blog-body,#blog-header,#blog-footer{
            width:100%;
            margin: 10px auto;

        }

        .all-article{
            text-decoration: none;
            font-size: 16px;
            line-height: 28px;
            display: inline-block;
            margin: 0 10px;
            width:100px;
            height:28px;
            padding-left: 14px;
            background:url("/z/images/blog/left3.png") no-repeat 0px 6px;
        }


        #blog-header{
            display: flex;
            flex-direction: row;
            align-items: center;
            height: 44px;
        }
        #blog-header input{
            height:40px;
            width: 100%;
            margin:2px 0 ;
        }


        .label-info{
            display: inline-block;
            width: 150px;
            height:24px;
            font-size:16px;
            line-height: 24px;
            text-align: center;
        }
        #labels{
            width:94%;
            background-color: rgb(245,246,247);
            border-radius: 5px;
            padding: 10px 0;
            margin: 0 auto;
        }
        .classify{
            width: 98%;
            margin: 5px auto;
            /*background: rgba(103,106,39,0.7);*/
        }
        .classify label{
            display: block;
            margin: 0 auto;
            height:24px;
            line-height: 24px;
            width: 94%;
            /*background-color: rgba(135,225,192,0.5);*/
            border-bottom: 1px solid gray;
            text-align: center;
        }
        .specifices{
            list-style: none;
            display: flex;
            flex-direction: row;
            margin: 0 auto;
            width: 94%;
            /*background-color: rgba(37,223,62,0.7);*/
        }
        .specifices li{
            display: block;
            float: left;
            margin: 5px 5px;
            background-color: rgb(193,193,193);
            border-radius: 6px;
            width: 100px;
            height:20px;
            text-align: center;
            line-height: 20px;
        }
        .specifices li:hover{
            background-color: #007bff;
            cursor: pointer;
        }
        .item-info button,.publish{
            width: 100px;
            height:40px;
            line-height: 40px;
            text-align: center;
            border-radius: 5px;
            display: inline-block;
            margin:10px 10px;
            border: 1px solid #007bff;
            font-weight: 700;
            color:#007bff;
            background-color: white;
        }
        .item-info button:hover,.publish:hover{
            color:white;
            background-color: #007bff;
            cursor: pointer;
        }
        .item-info{
            padding-left:30px ;
        }
        #blog-header input{
            background-color: rgb(239,239,239);
            border-radius: 5px;
            border: none;
            padding: 0 16px;
            font-size:16px;
        }
    </style>
</head>

<body>

    <div id="boxed">
        <form action="javascript:void(0)" method="post" id="blog-content">
            <div id="blog-header">
                <a href="${pageContext.request.contextPath}/pages/allBlog" class="all-article">所有文章</a>
                <input type="text" placeholder="请输入文章标题" maxlength="100" name="header">
                <button class="publish" type="submit">发布文章</button>
            </div>
            <div id="blog-body">
                <div id="test-editor">
            <textarea id="blog-html" style="display:none;" name="content">### 关于 Editor.md

        **Editor.md** 是一款开源的、可嵌入的 Markdown 在线编辑器（组件），基于 CodeMirror、jQuery 和 Marked 构建。
            </textarea>
                    <%--隐藏域   存放markdown的html数据--%>
            <textarea  class="editormd-html-textarea" ></textarea>
                </div>
            </div>
            <div id="blog-footer">
                <div id="choose-info">
                    <div class="item-info">
                        <label for="" class="label-info">选择文章标签：</label>
                        <div id="labels">
                            <div class="classify">
                                <label for="">计算机语言</label>
                                <ul class="specifices">
                                    <li class="item" data-type="1" >C</li>
                                    <li class="item" data-type="1">C++</li>
                                    <li class="item" data-type="1">Java</li>
                                    <li class="item" data-type="2">Python</li>
                                    <li class="item">C</li>
                                    <li class="item">C++</li>
                                    <li class="item">Java</li>
                                    <li class="item">Python</li>
                                    <li class="item">C</li>
                                    <li class="item">C++</li>
                                    <li class="item">Java</li>
                                    <li class="item">Python</li>

                                </ul>
                            </div>

                            <div class="classify">
                                <label for="">计算机课程</label>
                                <ul class="specifices ul2">
                                    <li class="item">操作系统</li>
                                    <li class="item">数据结构</li>
                                    <li class="item">计算机网络</li>
                                    <li class="item">数据库</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="put-article">
                    <div class="item-info">
                        <button type="submit">发布博客</button>
                        <button>保存为草稿</button>
                        <button>返回</button>

                    </div>
                </div>
            </div>
        </form>

    </div>



    <script src="${pageContext.request.contextPath}/javascript/jquery.min.js"></script>
    <%--<script src="${pageContext.request.contextPath}/editermd/jquery.min.js"></script>--%>
    <script src="${pageContext.request.contextPath}/editermd/editormd.min.js"></script>
    <script type="text/javascript">
        $(function() {
            var editor = editormd("test-editor", {
                width  : "100%",
                height : "100%",
                path   : "${pageContext.request.contextPath}/editermd/lib/",
                saveHTMLToTextarea : true,


                /**上传图片相关配置如下*/
                imageUpload : true,
                imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                imageUploadURL : "${pageContext.request.contextPath}/upload/blogImages2"//注意你后端的上传图片服务地址
            });
        });
        $(function () {
            var str = "<li class=\"item\">计算机网络</li>";
            $(".ul2").append(str);
            $(".item").click(function () {
                $(this).toggleClass("selected-label");
                changeSelectedItemCss($(this));
            });

        });
        function changeSelectedItemCss(obj) {
            var has = obj.hasClass("selected-label");
            if(has){
                obj.css("background-color","#5ef025")
            }else{
                obj.css("background-color","#c1c1c1");
            }

        }

        $(function () {
            $("#blog-content").submit(function () {
                var header = $("#blog-header input").val();   //题目
                var content = $("#blog-html").val()        //内容
                var lis = $(".selected-label");
                var labels = new Array(lis.length);     //多申请1个空间

                for(var i = 0;i<lis.length;i++){
                    labels[i] = $(lis[i]).attr("data-type");
                }
                labels = JSON.stringify(labels);
                $.post("${pageContext.request.contextPath}/blog/saveArticle",{header:header,content:content,labels:labels},function(info){
                    alert(info);
                });
            });
        });
    </script>

</body>

</html>
