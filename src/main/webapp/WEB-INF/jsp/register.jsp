<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Welcome</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

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
            border-radius: 5px;
            transition: background 0.3s;
            margin-top: 10px;
        }
        
        .gradient-button:hover {
            background: linear-gradient(to right, #6154a4, #4a47a3);
        }
        
        .form-container {
            width: 300px;
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 5px;
            text-align: center;
        }
        
        .form-container h3 {
            margin-top: 0;
        }
        
        .form-control {
            border: none;
            border-radius: 50px;
            padding: 8px 16px;
            font-size: 12px;
            background-color: transparent;
            color: black;
            width: 100%;
            box-sizing: border-box;
            margin-bottom: 10px;
            border: 1px solid #ccc;
        }
        
        label {
            color: black;
            font-size: 14px;
            text-align: left;
            display: block;
            margin-bottom: 5px;
        }
        
        .form-container a {
            color: black;
            text-decoration: none;
            font-size: 14px;
        }
    </style>
</head>
<body style="background: url('https://img.freepik.com/free-photo/vivid-blurred-colorful-wallpaper-background_58702-3764.jpg'); background-repeat: no-repeat; background-size: cover;">
    <div class="centered-form">
        <div class="transparent-bg form-container">
            <form action="register" method="post">
                <h3>Registration</h3>
                <div>
                    <label for="name">Name:</label>
                    <input type="text" name="name" required class="form-control">
                </div>
                <div>
                    <label for="email">Email:</label>
                    <input type="email" name="emailid" required class="form-control">
                </div>

                <div>
                    <label for="phoneno">Phone No:</label>
                    <input type="text" name="phoneno" required class="form-control">
                </div>    
                <div>
                    <label for="username">User-Name:</label>
                    <input type="text" name="username" required class="form-control">
                </div>    
                <div>
                    <label for="pswd">Password:</label>
                    <input type="password" name="password" required class="form-control">
                </div>            
                <button type="submit" class="gradient-button">Register</button>
                <br>
                <a href="login">Already a member?</a>
            </form>    
        </div>
    </div>
</body>
</html>
