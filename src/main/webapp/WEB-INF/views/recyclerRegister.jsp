<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recycler Registration</title>
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
    }

    form {
        background-color: rgba(0, 0, 0, 0.85);
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 0 20px rgba(0, 255, 204, 0.2);
        width: 360px;
        text-align: center;
    }

    h2 {
        color: #00b894;
        margin-bottom: 24px;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: 600;
        text-align: left;
        color: #ccc;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 16px;
        border: none;
        border-radius: 6px;
        background-color: #2e2e2e;
        color: #fff;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #00b894;
        border: none;
        border-radius: 6px;
        color: #000;
        font-weight: bold;
        cursor: pointer;
        margin-top: 12px;
    }

    input[type="submit"]:hover {
        background-color: #009e75;
    }

    a {
        color: #00cec9;
        text-decoration: none;
        font-size: 14px;
        display: inline-block;
        margin-top: 18px;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<form action="RecyclerRegisterSubmit" method="post">

    <h2>Welcome to Recycler Registration</h2>

    <label for="recContact">Contact</label>
    <input type="text" name="recContact" placeholder="Contact" required>

    <label for="recName">Name</label>
    <input type="text" name="recName" placeholder="Name" required>

    <label for="recZone">Zone</label>
    <input type="text" name="recZone" placeholder="Zone" required>

    <label for="recEmail">Email</label>
    <input type="text" name="recEmail" placeholder="Email" required>

    <label for="recPassword">Password</label>
    <input type="password" name="recPassword" placeholder="Password" required>

    <input type="submit" value="Register">

    <a href="recyclerLogin">Login here</a>

</form>

</body>
</html>
