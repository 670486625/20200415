<%--
  Created by IntelliJ IDEA.
  User: 李成昊
  Date: 2020/4/14
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="statics/css/loginOrRegister.css">
</head>
<body>

<div class="content" align="center">
    <form action="/20200412maven7/addHomework">

        <div class="top">添加作业</div>
        <div class="box">
            <div class="box-input">
                <input type="text" placeholder="作业题目" name="homeworkTitle" />
            </div>
        </div>
        <div class="box">
            <div class="box-input">
                <input type="text" placeholder="作业内容" name="homeworkContent" />
            </div>
        </div>
        <div>
            <input type="submit" class="button" value="添加">
        </div>
    </form>
</div>

</body>
</html>
