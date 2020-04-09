<%@ page import="com.thr.dao.DAO" %><%--
  Created by IntelliJ IDEA.
  User: thomas
  Date: 2020/4/9
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DAO.modifyPwd((String)session.getAttribute("name"),request.getParameter("password"));
    session.removeAttribute("name");
    session.removeAttribute("password");
    out.print("<script>window.alert(\"密码修改成功，将返回登陆页面！\");document.location.href='LoginPage.html';</script>");
%>
