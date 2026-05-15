<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.DigiRecycle.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Users - Admin Panel</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #1a1a1a;
            color: #f1f1f1;
            font-family: 'Inter', sans-serif;
            padding: 40px;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #00b894;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: rgba(0,0,0,0.8);
            border: 1px solid #444;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #444;
        }

        th {
            background-color: #2e2e2e;
            color: #00b894;
            font-weight: 600;
        }

        tr:hover {
            background-color: #2a2a2a;
        }

        td[colspan="5"] {
            padding: 20px;
            font-style: italic;
        }
    </style>
</head>
<body>

<h2>All Users Registered in System</h2>

<table>
    <thead>
        <tr>
            <th>Contact Number</th>
            <th>Name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Password</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<User> users = (List<User>) request.getAttribute("users");
            if (users != null && !users.isEmpty()) {
                for (User u : users) {
        %>
        <tr>
            <td><%= u.getuContact() %></td>
            <td><%= u.getuName() %></td>
            <td><%= u.getuAddress() %></td>
            <td><%= u.getuEmail() %></td>
            <td><%= u.getuPassword() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5" style="text-align:center;">No users found.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

</body>
</html>
