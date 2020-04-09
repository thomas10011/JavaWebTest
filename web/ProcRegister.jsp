<%--
  Created by IntelliJ IDEA.
  User: thomas
  Date: 2020/4/8
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.thr.register.Register" %>
<%
    boolean flag = Register.createUsr(request.getParameter("userName"),request.getParameter("Pwd"));
    if(flag){
        out.print("<script>window.alert(\"注册成功，将跳转至登陆页面\");document.location.href='LoginPage.html';</script>");
    }
    else {
        out.print("<script>window.alert(\"注册失败，该用户已存在，请直接登录！\");document.location.href='LoginPage.html';</script>");
    }
%>



