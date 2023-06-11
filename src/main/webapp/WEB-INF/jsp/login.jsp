<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>login</title>
    <link rel="apple-touch-icon" sizes="180x180" href="icon/apple-touch-icon.png">
    <style>
        .centered-form {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .transparent-bg {
            background-color: rgba(255, 255, 255, 0.7);
        }
        
        .gradient-button {
            background: linear-gradient(to right, #4a47a3, #6154a4);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 15px;
            transition: background 0.3s;
        }
        
        .gradient-button:hover {
            background: linear-gradient(to right, #6154a4, #4a47a3);
        }
        
        .form-container {
            width: 300px;
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            
        }
        
        .form-container h3 {
            margin-top: 0;
        }
        
        .form-control {
            border: none;
            border-radius: 25px;
            padding: 12px 20px;
            font-size: 10px;
            background-color: transparent;
            color: black;
        }
        
        label {
            color: black;
            font-size: 15px;
        }
    </style>
</head>
<body style="background: url('https://media.tenor.com/0L7ORkuhrtUAAAAM/patrick-star-to-do-list.gif'); background-repeat: no-repeat;
            background-size: cover;">
    <div class="centered-form">
        <div class="transparent-bg form-container">
            <%-- Check if error message exists and display error message --%>
            <% if (request.getAttribute("loginFailed") != null) { %>
                <div class="alert alert-danger">Login failed. Please try again.</div>
            <% } %>
            
            <form action="login" method="post">
                <h3>Welcome Back</h3>
                <div>
                    <label for="username">Username:</label>&nbsp;&nbsp;&nbsp;
                    <input type="text" id="username" name="username" required class="form-control">
                </div><br>
                <div class="mb-3">
                    <label for="password">Password:</label>&nbsp;&nbsp;&nbsp;
                    <input type="password" id="password" name="password" required class="form-control">
                </div><br>
    
                <button type="submit" class="gradient-button">Login</button>&nbsp;&nbsp;&nbsp;
                <!--a href="/register">Register</a-->
            </form>
        </div>
    </div>
   <script>
        var welcomeMessage = "${welcomeMessage}";
        if (welcomeMessage) {
            alert(welcomeMessage); // Display welcome message as an alert
        }
    </script>
</body>
</html>
