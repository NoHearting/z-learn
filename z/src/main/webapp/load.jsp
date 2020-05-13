<%--
  Created by zsj
  User: zsj
  Date: 2020/2/9
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>加载图标</title>

    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/newAdd/load.css">--%>

    <style>
        /** {*/
            /*margin: 0;*/
            /*padding: 0;*/
            /*box-sizing: border-box;*/
        /*}*/

        /*html, body {*/
            /*width: 100%;*/
            /*height: 100%;*/
        /*}*/

        /*body {*/
            /*background: #0b0b14;*/
            /*font-family: 'Inconsolata', monospace;*/
            /*overflow: hidden;*/
        /*}*/

        .arc {
            /*float: left;*/
            position: absolute;
            margin: auto;
            /*top: 0;*/
            /*right: 0;*/
            /*bottom: 0;*/
            /*left: 0;*/
            width: 25px;
            height: 25px;
            border-radius: 50%;
            border-top: 2px solid #ffea29;
            border-left: 1px solid transparent;
            border-right: 1px solid transparent;
            animation: rt 2s infinite linear;
        }
        .arc::before {
            position: absolute;
            margin: auto;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            width: 17px;
            height: 17px;
            border-radius: 50%;
            border-top: 2px solid #8d29ff;
            border-left: 1px solid transparent;
            border-right: 1px solid transparent;
            animation: rt 6s infinite linear reverse;
            content: "";
        }
        .arc::after {
            position: absolute;
            margin: auto;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            width: 0;
            height: 0;
            border-radius: 50%;
            border-top: initial;
            border-left: initial;
            border-right: initial;
            animation: cw 1s infinite;
            content: "";
            background: snow;
        }

        .load-content {
            /*position: absolute;*/
            display: inline-block;
            height: 25px;
            line-height: 25px;
            position: relative;
            left:-10px;
            top: -9px;

            /*top: 50px;*/
            /*left: 0;*/
            /*right: 0;*/
            /*bottom: 0;*/
            text-transform: uppercase;
            text-align: center;
            letter-spacing: 0.1em;
            font-size: 14px;
            font-weight: lighter;
            color: white;
            background-color: #00A0D1;
        }
        .load-content span {
            display: none;
        }
        .load-content::after {
            animation: txt 2s infinite;
            content: "";
        }

        @keyframes rt {
            100% {
                transform: rotate(360deg);
            }
        }
        @keyframes cw {
            0% {
                width: 0;
                height: 0;
            }
            75% {
                width: 10px;
                height: 10px;
            }
            100% {
                width: 0;
                height: 0;
            }
        }
        @keyframes txt {
            0% {
                content: "正在加载·";
            }
            50% {
                content: "正在加载··";
            }
            100% {
                content: "正在加载···";
            }
        }

        .end{
            margin-top: 200px;
            position: relative;
            background-color: red;
            height: 25px;
            text-align: center;
            width: 165px;
            margin: auto;
        }
        .container{

        }
    </style>
</head>
<body>
    <div class="container">
        <div class="end">
            <div class="arc"></div>

            <h1 class="load-content"><span>LOADING</span></h1>
        </div>
    </div>



</body>
</html>
