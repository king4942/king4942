<%
    String path = request.getScheme()+"://"+ request.getServerName()+":"
            +request.getServerPort()+request.getContextPath()+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结果</title>
    <base href="<%=path%>" ></base>
</head>
<body>
    <center>
        <h1>登录结果</h1><br>
        <h3>${tip}</h3>
    </center>
</body>
</html>
