<%--
  Created by IntelliJ IDEA.
  User: asd
  Date: 2023/5/24
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/mean.css">
    <script>
        function checkpassword() {
            var password = document.getElementById("password").value;
            var repassword = document.getElementById("password1").value;
            if(password!=repassword){
                alert("两次输入密码不一致！")
                event.preventDefault();
                document.getElementById('password').value = "";
                document.getElementById('password1').value = "";
                document.all.password.focus();

            }else {
                return true;
                Form.button;
            }
        }
    </script>
</head>
<body>
<div>
    <form name="Form" action="/Register/User" method="post">
        <h2>请注册</h2>
        <span name="yes">已有账号？</span>
        <a href="login.jsp">登录</a>
        <br>
        <br>
        用户名：<input type="text" placeholder="请输入用户名" name="username">
        <br>
        <br>
        手机号：
        <select style="width: 50px;height: 40px">
            <option value="+86">+86</option>
            <option value="+12">+12</option>
            <option value="+港澳台">+港澳台</option>
        </select>
        <input type="tel" placeholder="请输入手机号" name="phone">
        <br>
        <br>
        性别：<select style="width: 50px;height: 40px" name="gender">
        <option name="gender" value="male">男</option>
        <option name="gender" value="female">女</option>
        <option name="gender" value="other">其他</option>
    </select>
        <br>
        <br>
        邮&emsp;箱：<input type="text" placeholder="邮箱" name="email">
        <br>
        <br>
        密&emsp;码：<input type="password" placeholder="请设置登录密码" id="password" name="password">
        <br>
        <br>
        密码：<input type="password" placeholder="请重复登录密码" id="password1">
        <br>
        <br>
        <input type="checkbox" style="vertical-align: middle">
        <span>阅读并接受协议</span>
        <br>
        <br>
        <button type="submit" onclick="checkpassword();">注册</button>
    </form>
</div>
</body>
</html>