<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
<style>
    body {
        background-color: #1a1a1a;
        color: #f1f1f1;
        font-family: 'Inter', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        padding: 20px;
    }
    form {
        background: rgba(0, 0, 0, 0.85);
        padding: 40px 50px;
        border-radius: 12px;
        box-shadow: 0 0 20px rgba(0, 184, 148, 0.5);
        width: 320px;
        text-align: center;
    }
    h2 {
        color: #00b894;
        margin-bottom: 30px;
        user-select: none;
    }
    label {
        display: block;
        text-align: left;
        margin: 10px 0 6px 0;
        font-weight: 600;
        color: #00cec9;
        user-select: none;
    }
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        border-radius: 8px;
        border: 1px solid #333;
        background-color: #2f2f2f;
        color: #eee;
        font-size: 14px;
        box-sizing: border-box;
        transition: border-color 0.3s ease;
    }
    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #00cec9;
        outline: none;
        background-color: #3a3a3a;
    }
    input[type="submit"] {
        margin-top: 25px;
        width: 100%;
        background-color: #00cec9;
        border: none;
        padding: 12px;
        border-radius: 8px;
        color: #1a1a1a;
        font-weight: 700;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #00b894;
        color: white;
    }
    a {
        display: inline-block;
        margin-top: 20px;
        color: #00cec9;
        text-decoration: none;
        font-weight: 600;
        transition: color 0.3s ease;
        user-select: none;
    }
    a:hover {
        color: #00b894;
        text-decoration: underline;
    }
</style>
</head>
<body>
<form action="UserLoginSubmit" method="post">
    <h2>Welcome to User Login</h2>

    <label for="uContact">Contact</label>
    <input type="text" id="uContact" name="uContact" placeholder="Contact" required>

    <label for="uPassword">Password</label>
    <input type="password" id="uPassword" name="uPassword" placeholder="Password" required>

    <input type="submit" value="Login">

    <a href="userRegister">Register here</a>
</form>
</body>
</html>
