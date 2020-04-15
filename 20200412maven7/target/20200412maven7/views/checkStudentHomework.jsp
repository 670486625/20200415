<%@ page import="example.pojo.StudentHomework" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 李成昊
  Date: 2020/4/15
  Time: 17:46
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
            <th>学生名字</th>
            <th>提交内容</th>
        </tr>

        <%
            List<StudentHomework> studentHomeworkList=(List<StudentHomework>)request.getAttribute("studentHomeworkList");

            for(int i=0;i<studentHomeworkList.size();i++) {
                StudentHomework studentHomework=studentHomeworkList.get(i);
                out.println(
                        "<tr><td>"+studentHomework.getHomeworkNum()+"</td>"
                                +"<td>"+studentHomework.getStudentName()+"</td>"
                                +"<td>"+studentHomework.getHomeworkContent()+"</td>"
                                +"</tr>");

            }

        %>
    </table>
</div>

</body>
</html>
