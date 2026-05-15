<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recycler Dashboard</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
<style>
    body {
        background-color: #1a1a1a;
        color: #f1f1f1;
        font-family: 'Inter', sans-serif;
        padding: 40px;
    }

    h2 {
        color: #00b894;
        text-align: center;
        margin-bottom: 30px;
    }

    ul {
        list-style: none;
        max-width: 400px;
        margin: 0 auto;
        padding: 0;
    }

    ul li {
        margin: 20px 0;
    }

    ul li a {
        display: block;
        background-color: #222;
        padding: 15px 20px;
        border-radius: 8px;
        color: #00cec9;
        font-weight: 600;
        text-decoration: none;
        box-shadow: 0 4px 12px rgba(0, 204, 204, 0.2);
        transition: background-color 0.3s, box-shadow 0.3s;
    }

    ul li a:hover {
        background-color: #00cec9;
        color: #1a1a1a;
        box-shadow: 0 6px 18px rgba(0, 204, 204, 0.6);
    }
</style>
</head>
<body>

    <h2>Recycler Dashboard</h2>
    <ul>
        <li><a href="recyclerViewRequest">View collection request added by user</a></li>
        <li><a href="updateStatus">Update status</a></li>
    </ul>

</body>
</html>
