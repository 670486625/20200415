<%@ page import="example.pojo.Teacher" %>
<%@ page import="example.pojo.Student" %><%--
  Created by IntelliJ IDEA.
  User: 李成昊
  Date: 2020/4/12
  Time: 20:33
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
    String name = null;
    String type=(String)request.getAttribute("type");
    if(type.equals("teacher")){
        Teacher teacher=(Teacher)request.getAttribute("teacher");
        name=teacher.getTeacherName();
        name=name+"老师";
    }else if(type.equals("student")){
        Student student=(Student)request.getAttribute("student");
        name=student.getStudentName();
        name=name+"同学";
    }

%>

<div class="content" align="center">
    <form action="/20200412maven7/returnIndex">

        <div class="top">欢迎<%=name%></div>
        <div>
            <input type="submit" class="button" value="返回主页">
        </div>
    </form>
</div>


</body>
</html>
