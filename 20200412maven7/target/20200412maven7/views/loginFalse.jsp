<%--
  Created by IntelliJ IDEA.
  User: 李成昊
  Date: 2020/4/14
  Time: 11:12
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

    String url = null;
    String type2=null;
    String type=(String)request.getAttribute("type");
    if(type.equals("teacher")){
        url="/20200412maven7/indexTeacherLogin";
        type2="老师";
    }else if(type.equals("student")){
        url="/20200412maven7/indexStudentLogin";
        type2="学生";
    }

%>

<div class="content" align="center">
    <form action=<%=url%>>

        <div class="top">无此<%=type2%></div>
        <div>
            <input type="submit" class="button" value="返回登陆">
        </div>
    </form>
</div>

</body>
</html>
