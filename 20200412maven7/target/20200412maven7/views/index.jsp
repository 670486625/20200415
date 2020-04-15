<%--
  Created by IntelliJ IDEA.
  User: 李成昊
  Date: 2020/4/12
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
    <link rel="stylesheet" href="statics/css/menu.css">
    <link rel="stylesheet" href="statics/css/loginOrRegister.css">
    <script src="statics/js/menu.js"></script>
</head>
<body>

<!-- 登录信息 -->

<div class="title">
    <div>
        <%
            String currentType = (String) session.getAttribute("currentType");
            String currentName = (String) session.getAttribute("currentName");
            try {
                if (currentType.equals("teacher")) {
                    out.println("<img  src=\"statics/images/luban.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
                    out.println("<br>");
                    out.println("<p>" + currentName + "</p>");
                    out.println("<br>");
                    out.println("<p>" + "(老师)" + "</p>");
                } else if (currentType.equals("student")) {
                    out.println("<img  src=\"statics/images/tuanzi.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
                    out.println("<br>");
                    out.println("<p>" + currentName + "</p>");
                    out.println("<br>");
                    out.println("<p>" + "(学生)" + "</p>");
                }
            } catch (Exception e) {
                out.println("<img  src=\"statics/images/zhu.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
                out.println("<br>");
                out.println("<p>" + "未登录" + "</p>");
                out.println("<br>");
                out.println("<p>" + "(tourist)" + "</p>");
            }
        %>
    </div>
</div>

<!-- 左侧功能列表 -->
<div class="menu">
    <div>
        <p onclick="accordion(1)">登陆</p>
        <ul id="ul1">
            <li><a href="indexTeacherLogin">老师登陆</a></li>
            <li><a href="indexStudentLogin">学生登陆</a></li>
        </ul>
    </div>

    <div>
        <p onclick="accordion(2)">添加学生</p>
        <ul id="ul2">
            <li><a href="indexAddStudent">添加学生</a></li>
        </ul>
    </div>

    <div>
        <p onclick="accordion(3)">添加作业</p>
        <ul id="ul3">
            <li><a href="indexAddHomework">添加作业</a></li>
        </ul>
    </div>

    <div>
        <p onclick="accordion(4)">提交作业</p>
        <ul id="ul4">
            <li><a href="indexSubmitHomework">提交作业</a></li>
        </ul>
    </div>

    <div>
        <p onclick="accordion(5)">查看学生作业</p>
        <ul id="ul5">
            <li><a href="indexCheckHomework">查看作业</a></li>
        </ul>
    </div>

</div>





</body>
</html>
