<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String message = "";
    boolean loggedIn = false;

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");

        if (!"devops".equals(username)) {
            message = "Invalid username";
        } else if (!password.equals(confirm)) {
            message = "Passwords don't match";
        } else if (!"devops".equals(password)) {
            message = "Invalid password";
        } else {
            response.sendRedirect("todoList/index.html");
            return;
        }
    }
%>

<!DOCTYPE html>
<html>
  <head>
    <title>DevOps Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
  </head>
  <body>
    <div class="login-container">
      <h1 class="login-title">DevOps Login</h1>

      <% if (!message.isEmpty()) { %>
        <p class="error-message"><%= message %></p>
      <% } %>

      <form action="index.jsp" method="post" class="login-form">
        <div class="form-group">
          <label for="username">Username:</label>
          <input class="input-username" type="text" id="username" name="username" placeholder="e.g. devops" required />
        </div>

        <div class="form-group">
          <label for="password">Password:</label>
          <input class="input-password" type="password" id="password" name="password" required />
        </div>

        <div class="form-group">
          <label for="confirm">Confirm Password:</label>
          <input class="input-confirm" type="password" id="confirm" name="confirm" required />
        </div>

        <button class="submit-btn" type="submit">Login</button>
      </form>
    </div>
  </body>
</html>
