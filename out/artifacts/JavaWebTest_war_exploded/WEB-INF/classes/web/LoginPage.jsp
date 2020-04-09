<%--
  Created by IntelliJ IDEA.
  User: thomas
  Date: 2020/4/2
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>

    <form action="ProcLogin.jsp" method="post">
        <table align="center" width="300" border="1" height="150">
            <tr>
                <td colspan="2" align="center">
                    <b>登录认证系统</b>
                </td>
            </tr>
            <tr>
                <td align="right">用户名：</td>
                <td><input type="text" name="userName"></td>
            </tr>
            <tr>
                <td align="right">密 码：</td>
                <td><input type="password" name="userPwd"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit"/>
                </td>
            </tr>
        </table>
    </form>

    <script type="text/javascript" language="JavaScript">

        //取出传回来的参数error并与yes比较
        var errori ='<%=request.getParameter("login")%>';
        if(errori=="false"){
            window.alert("登录失败!请检查用户名和密码！");
        }
    </script>
</body>
</html>
