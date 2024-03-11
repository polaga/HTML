<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #d1 {
            width: 230px;
            height: 210px;
            right: 100px;
            bottom: 200px;
            padding: 10px;
            border-radius: 5px;
            background-color: rgba(255 255 255 0.45);
            position: absolute;
            z-index: 1;
        }
    </style>
</head>
<body>
    <jsp:include page="heaInfo.jsp"/>
    <jsp:include page="pageInfo.jsp"/>
    <jsp:include page="footInfo.jsp"/>
    <div id="d1" align="center">
        <h3>欢迎登录</h3>
        <form name="loginForm" action="zy.jsp">
        账号：<input type="text" name="account"><br><br>
        密码：<input type="text" name="passWard"><br><br>
        <input type="submit" value="登录" onclick="validate()">
        <input type="reset" value="重置" ><br><br>
        还没账号？<a href="register.jsp马上去注册"></a>
        </form>
    </div>
    <script type="text/javascript">
        function validate(){
            account=document.loginForm.account.value;
            password=document.loginForm.password.value;
            if(account==""){
                alert("账号不能为空！");
                document.loginForm.account.focus();
                return;
            }
            else if(password=""){
                alert("密码不能为空！");
                document.loginForm.password.focus();
                return;
            }
            document.loginForm.submit();
        }

    </script>
    
</body>
</html>