<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
  </head>
  <body>
    <div class="login-container">
      <h1 class="login-title">DevOps Login</h1>
      <form action="response.jsp" method="post" class="login-form">
        <div class="form-group">
          <label for="username">Username:</label>
          <input
            class="input-username"
            type="text"
            id="username"
            name="username"
            required
          />
        </div>

        <div class="form-group">
          <label for="password">Password:</label>
          <input
            class="input-password"
            type="password"
            id="password"
            name="password"
            required
          />
        </div>

        <div class="form-group">
          <label for="confirm">Confirm Password:</label>
          <input
            class="input-confirm"
            type="password"
            id="confirm"
            name="confirm"
            required
          />
        </div>

        <button class="submit-btn" type="submit">Login</button>
      </form>
    </div>
  </body>
</html>
