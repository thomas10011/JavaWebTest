<%--
  Created by IntelliJ IDEA.
  User: thomas
  Date: 2020/4/8
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
    <form action="ProcRegister.jsp" method="post" id="register" onsubmit="return check()">
        <table align="center" width="300" border="1" height="150">
            <tr>
                <td align="center" colspan="2">
                    新用户注册
                </td>
            </tr>
            <tr>
                <td align="right">用户名：</td>
                <td><input type="text" name="userName" ></td>
            </tr>
            <tr>
                <td align="right">密码：</td>
                <td><input type="password" name="Pwd" id="pwd"/></td>
            </tr>
            <tr>
            <td align="right">确认密码：</td>
            <td><input type="password" name="checkPwd" id="checked"/></td>
            </tr>
            <tr><td colspan="2" align="center">
                <input type="submit" value="注册">
            </td>
            </tr>
        </table>
    </form>
</body>
</html>

<script type="text/javascript" language="JavaScript">
    function check() {
        let pwd1 = document.getElementById("pwd").value;
        let pwd2 = document.getElementById("checked").value;

        if(pwd1===pwd2){
            //var form = document.getElementById("register");
            //form.submit();
            //print("excuted");
            return true;
            //window.location.href="ProcRegister.jsp?name="+name+"&pwd="+pwd1;
        }
        else {
            window.alert("两次输入的密码不一致！");
            document.getElementById("pwd").value = "";
            document.getElementById("checked").value = "";
            return false;
        }
    }
</script>