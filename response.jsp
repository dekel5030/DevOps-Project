<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% String username = request.getParameter("username");
String password = request.getParameter("password"); String confirm =
request.getParameter("confirm"); String message = ""; if
(!"devops".equals(username)) { message = "Invalid username"; } else if
(!password.equals(confirm)) { message = "Passwords don't match"; } else if (
!"devops".equals(password)) { message = "Invalid password"; } else { message =
"Login successfully"; } %>

<!DOCTYPE html>
<html>
  <head>
    <title>Login Result</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
  </head>
  <body>
    <div class="response-container">
      <h1 class="response-message"><%= message %></h1>
      <a class="back-link" href="index.jsp">Go back</a>
    </div>
  </body>
</html>
