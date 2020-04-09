<%--
  Created by IntelliJ IDEA.
  User: thomas
  Date: 2020/4/4
  Time: 0:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.thr.login.CheckInfo" %>

<%
    //获取用户名和密码
    String userName = request.getParameter("userName");
    String userPwd = request.getParameter("userPwd");
    if(CheckInfo.CheckInfo(userName, userPwd)){
        response.sendRedirect("SuccessLogin.jsp");
    }
    else {
        //重定向到登录页面
        response.sendRedirect("LoginPage.jsp?login=false");
        //out.print("<br>登录失败</br>");

    }
%>

