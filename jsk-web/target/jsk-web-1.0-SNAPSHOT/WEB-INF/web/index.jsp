<%
    String path = request.getScheme()+"://"+ request.getServerName()+":"
            +request.getServerPort()+request.getContextPath()+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <base href="<%=path%>" ></base>
</head>
<link href="css/login.css" rel="stylesheet" type="text/css"/>
<body>
    <img id="img1" src="img/login_background.jpg" alt="background" />
    <div id="div1">
        <div id="div2">
            <div id="div3">
                <form action="login.do" method="post">
                    <p >
                        <input class="t" type="text" name="name" autocomplete="off" placeholder="用户名" />
                    </p>
                    <p>
                        <input class="t" type="password" name="password" autocomplete="off" placeholder="密码" />
                    </p>
                    <p >
                        <input id="btn" type="submit" value="登录" />
                    </p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
