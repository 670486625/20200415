<%--
  Created by IntelliJ IDEA.
  User: 李成昊
  Date: 2020/4/15
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="statics/css/loginOrRegister.css">
</head>
<body>

<%
    String num=(String)request.getAttribute("num");
%>

<div class="content" align="center">
    <form action="/20200412maven7/submitHomework">

        <div class="top">作业提交</div>
        <div class="box">
            <div class="box-input">
                <textarea placeholder="提交内容" name="homeworkContent" style="width: 230px; height: 150px;"></textarea>
            </div>
            <input  type="hidden" value=<%=num%> name="num" />
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div>
            <input type="submit" class="button" value="提交">
        </div>
    </form>
</div>

</body>
</html>
