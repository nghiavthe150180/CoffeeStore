<%-- 
    Document   : AccountDetail
    Created on : May 25, 2023, 10:27:52 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Detail</title>
        <link rel="stylesheet" href="AccountDetail.css" />
    </head>
    <body>
  <div class="container">
    <h1>User Info</h1>
    <form action="UpdateServlet" method="POST">
      <label for="surname">Surname:</label>
      <input type="text" id="surname" value="${c.getSurname()}" name="surname">

      <label for="middlename">Middle Name:</label>
      <input type="text" id="middlename" value="${c.getMiddle_name()}" name="middlename">

      <label for="username">Username (cannot be changed):</label>
      <input type="text" id="username" value="${c.getUser()}" name="username" readonly>

      <label for="email">Email (cannot be changed):</label>
      <input type="email" id="email" name="email" value="${c.getEmail()}" readonly>

      <label for="phone">Phone Number (cannot be changed):</label>
      <input type="tel" id="phone" name="phone" value="${c.getPhone_number()}" readonly>

      <label for="dob">Date of Birth:</label>
      <input type="date" id="dob" name="dob">

      <label for="password">Password:</label>
      <div class="password-container">
        <input type="password" id="password" name="password" value="${c.getPassword()}">
        <span class="toggle-password" onclick="togglePasswordVisibility()">&#128065;</span>
      </div>

      <label for="sex">Sex:</label>
      <select id="sex" name="sex">
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
      </select>

      <button href="#" type="submit">Update</button>
    </form>
  </div>
  <script>
    function togglePasswordVisibility() {
      const passwordField = document.getElementById("password");
      if (passwordField.type === "password") {
        passwordField.type = "text";
      } else {
        passwordField.type = "password";
      }
    }
  </script>
</body>
</html>
