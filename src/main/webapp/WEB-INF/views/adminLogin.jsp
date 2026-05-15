<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>

    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>

    <style>
        * {
            margin: 0; padding: 0; box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }
        body {
            background: #d9d9d9; /* light grey background */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #eee;
        }
        .login-container {
            background: rgba(45, 45, 45, 0.95); /* dark container with transparency */
            padding: 40px 50px;
            border-radius: 16px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.3);
            width: 350px;
            text-align: center;
            border: 1px solid #555;
        }
        h2 {
            margin-bottom: 30px;
            font-weight: 600;
            color: #00b894; /* teal accent */
            user-select: none;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input[type="text"], input[type="password"] {
            padding: 12px 15px;
            margin-bottom: 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            background: #3a3a3a;
            color: #eee;
            transition: background 0.3s ease;
        }
        input[type="text"]::placeholder,
        input[type="password"]::placeholder {
            color: #aaa;
        }
        input[type="text"]:focus, input[type="password"]:focus {
            background: #525252;
            outline: none;
        }
        input[type="submit"] {
            background: #00b894;
            color: #fff;
            font-weight: 600;
            padding: 12px 15px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        input[type="submit"]:hover {
            background: #019870;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2><i class="fas fa-user-shield"></i> Admin Login</h2>
        <form action="AdminLoginSubmit" method="post">
            <input type="text" name="email" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
