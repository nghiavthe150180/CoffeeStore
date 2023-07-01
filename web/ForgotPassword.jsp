<%-- 
    Document   : ForgotPassword
    Created on : May 19, 2023, 5:58:22 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
body {
  font-family: Arial, sans-serif;
  background-color: rgb(252,164,52);
}

.container {
  width: 600px;
  margin: 0 auto;
  position: absolute; 
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  display: flex; 
  flex-direction: column;  
  justify-content: center;  
  align-items: center;
  height: 400px;
}

h2 {
  text-align: center;
}

.form {
  padding: 50px;
  background: white;  
  border-radius: 5px;  
  display: flex;
  flex-direction: column;
  justify-content: center;
}

input, button {
  width: 500px;
  padding: 10px;  
  margin-bottom: 15px;
  margin: 0 auto;
}
    </style>

    <div class="container">
        <p style="color: red; font-size: 1.15em; margin-left: 2em; margin-right: 2em;" >${error} </p> 
        <h2>Forgot Password</h2>
        <form method="POST" class="form" action="forgotPsw">
            <input type="text" name="username" placeholder="Username">
            <input type="email" name="email" placeholder="Email">
            <button>Submit</button>  
        </form>
    </div>
</html>
