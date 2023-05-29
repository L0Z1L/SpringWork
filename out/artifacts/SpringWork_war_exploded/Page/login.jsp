<%--
  Created by IntelliJ IDEA.
  User: asd
  Date: 2023/5/24
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="zh-CN">
<!-- <html lang="zh-CN"> 向搜索引擎表示该页面是html语言，并且语言为中文网站，其"lang"的意思就是“language”，语言的意思，而“zh”即表示中文 -->
<head>
    <meta charset="utf-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式，告诉IE浏览器，无论是否用DTD声明文档标准，IE8/9都会以IE8引擎来渲染页面。-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登陆</title>

    <!-- 引入Bootstrap核心样式文件 -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
        body{
            background: url("${pageContext.request.contextPath}/img/background.jpg") no-repeat center center fixed;
            /*兼容浏览器版本*/
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        } /*背景图*/

        .test {
            margin-top: 100px;
        }
    </style>
    <!-- 检查登录账号和密码 并跳转-->
    <script>
        function loginwithpwd() {
            if (document.all.username.value.length == 0) {
                alert("请输入用户名！");
                document.all.username.focus();
                event.preventDefault();
            }
            if (document.all.password.value.length == 0) {
                alert("请输入密码！");
                document.all.password.focus();
                event.preventDefault();
            }
            if ((document.all.password.value.length >0) && (document.all.username.value.length > 0)) {
                document.getElementById("Submit").disabled  = true;
                document.getElementById("Submit2").disabled  = true;
                Form.submit();
            }
        }
        function resetWin() {
            document.all.username.value = "";
            document.all.password.value = "";

            document.all.username.focus();
        }
        function Check_Nums() {
            if (event.keyCode == 13) {
                loginwithpwd();
            }
        }
        function goNext() {
            if (event.keyCode == 13) {
                form1.password.focus();
            }
        }
    </script>

</head>
<body>

<div class="row" >
    <div class="col-md-4"></div>
    <div class="col-md-4"   style="background-color: #aaaaaa; opacity:0.8;margin-top: 250px;" >
        <h1 class="text-center"   style="padding-top:50px;  " >用户登录</h1>
        <form class="form-horizontal " role="form"  action="/LoginCheck/check" method="post" name="Form" >
            <div class="form-group  ">
                <label  class="col-sm-2 control-label">账号</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" onkeypress="goNext()" name="username"       placeholder="请输入账号 ">
                </div>
            </div>
            <div class="form-group">
                <label for="lastname" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control"  onkeypress="Check_Nums()" id="lastname" name="password" placeholder="请输入密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <!--未写scripe 功能不能用 -->
                        <label>
                            <input type="checkbox">记住密码
                        </label>
                        <label class="col-sm-offset-1"  >
                            <!--未写scripe 功能不能用 -->
                            <input type="checkbox">自动登录
                        </label>
                        <!--跳转到找回密码 -->
                        <a  class="col-sm-offset-1" href=" ">忘记密码</a>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default"  onclick="loginwithpwd();" >登录</button>
                    <a type="submit" class="btn btn-default col-sm-offset-4 " href="register.jsp" >注册</a>
                </div>

            </div>
        </form>
    </div>
    <div class="col-md-4"></div>

</div>
</body>
</html>