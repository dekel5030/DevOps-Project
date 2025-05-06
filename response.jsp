<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Response</title>
</head>
<body>
    <h2>Hello, <%= request.getParameter("username") %>!</h2>
    <a href="index.jsp">Go Back</a>
</body>
</html>
