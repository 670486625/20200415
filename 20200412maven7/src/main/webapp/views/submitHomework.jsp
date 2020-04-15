<%@ page import="java.util.List" %>
<%@ page import="example.pojo.Homework" %><%--
  Created by IntelliJ IDEA.
  User: 李成昊
  Date: 2020/4/15
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="statics/css/table.css">
</head>
<body>
<div class="content">
    <div align="center" style="font-size:30px;font-family: KaiTi;font-weight: bold;">作业列表</div>
    <table class="table"  width="100%" border="0">
        <tr>
            <th>作业序号</th>
            <th>作业题目</th>
            <th>作业内容</th>
            <th>提交</th>
        </tr>

        <%
            List<Homework> homeworkList=(List<Homework>)request.getAttribute("homeworkList");

            for(int i=0;i<homeworkList.size();i++) {
                Homework homework=homeworkList.get(i);
                String num=homework.getHomeworkNum()+"";
                out.println(
                        "<tr><td>"+num+"</td>"
                                +"<td>"+homework.getHomeworkTitle()+"</td>"
                                +"<td>"+homework.getHomeworkContent()+"</td>"
                                +"<td><a href='gotoSubmitHomework?num="+num+"'>提交</a></td>"
                                +"</tr>");

            }



        %>
    </table>
</div>
</body>
</html>
