<%--
  Created by IntelliJ IDEA.
  User: thomas
  Date: 2020/4/4
  Time: 0:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.thr.login.CheckInfo" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <%
        //获取用户名和密码
        String userName = request.getParameter("userName");
        String userPwd = request.getParameter("userPwd");
        if(CheckInfo.CheckInfo(userName, userPwd)){
            out.print("<br>登陆成功</br>");
        }
        else {
            out.print("<br>登录失败</br>");
        }
    %>
</div>
</body>
</html>
