<%-- 
    Document   : Login
    Created on : Apr 27, 2023, 7:21:41 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Login Page</title>
    <style>
      body {
        background-color: rgb(252,164,52);
      }
      form {
        background-color: white;
        width: 400px;
        padding: 80px;
        border-radius: 10px;
        margin: 0 auto;
        margin-top: 100px;
        box-shadow: 5px 5px 10px rgba(0,0,0,0.3);
        display: flex;
        flex-direction: column;
        align-items: center;
      }
      label {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        width: 100%;
        font-size: 24px;
      }
      input[type="text"], input[type="password"] {
        width: 48%;
        padding: 20px;
        margin-bottom: 20px;
        margin-right: 20px;
        border-radius: 5px;
        border: 2px solid black;
        font-size: 24px;
      }
      input[type="submit"] {
        background-color: rgb(252,164,52);
        color: white;
        border: none;
        padding: 10px;
        border-radius: 5px;
        cursor: pointer;
      }
      a {
        color: rgb(252,164,52);
        text-decoration: none;
      }
      
      /* new code */
      form label, div label {
        font-size: 24px;
      }
      
      input[type="checkbox"] {
        transform: scale(1.5);
        margin-right: 10px;
        margin-top: 5px;
      }
      
      form div {
        display: flex;
        flex-direction: column;
        align-items: center;
        font-size: 15px;
        margin-top:5px;
      }
    </style>
  </head>
  <body>
      <form method="POST" action="Login">
      <p style="color: red; font-size: 1.15em; margin-left: 2em; margin-right: 2em;" >${error} </p> 
      <h2>Login</h2>
      <label for="username">Username:
        <input type="text" id="username" name="username" required>
      </label>
      <label for="password">Password:
        <input type="password" id="password" name="password" required>
      </label>
      <input type="submit" value="Login">
      <div>
        <div style="display: flex; align-items: center;">
          <input type="checkbox" id="remember-me" name="remember-me">
          <label for="remember-me">Remember me</label>
        </div>
      </div>
      <div>
        <a href="ForgotPassword.jsp">Forgot password?</a>
        <span> | </span>
        <a href="#">Sign up</a>
      </div>
    </form>
  </body>
</html>
