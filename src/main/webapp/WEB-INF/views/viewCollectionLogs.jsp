<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DigiRecycle.model.CollectionLog" %>
<%@ page import="com.DigiRecycle.model.User" %>
<%@ page import="com.DigiRecycle.model.Recycler" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Collection Logs - Admin Panel</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #f5f5f5;
            font-family: 'Inter', sans-serif;
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #00cec9;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #1e1e1e;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0,0,0,0.5);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #333;
        }

        th {
            background-color: #2c2c2c;
            color: #00cec9;
            font-weight: 600;
        }

        tr:hover {
            background-color: #2a2a2a;
        }

        td[colspan="8"] {
            padding: 20px;
            font-style: italic;
            color: #ccc;
        }
    </style>
</head>
<body>

<h2>All Collection Logs</h2>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>User Name</th>
            <th>Recycler Name</th>
            <th>Plastic Type</th>
            <th>Quantity</th>
            <th>Request Date</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
    <%
        List<CollectionLog> logs = (List<CollectionLog>) request.getAttribute("logs");
        if (logs != null && !logs.isEmpty()) {
            for (CollectionLog log : logs) {
                User user = log.getUser();
                Recycler recycler = log.getRecycler();
    %>
        <tr>
            <td><%= log.getId() %></td>
            <td><%= (user != null) ? user.getuName() : "N/A" %></td>
            <td><%= (recycler != null) ? recycler.getRecName() : "Not Assigned" %></td>
            <td><%= log.getPlasticType() %></td>
            <td><%= log.getQuantity() %></td>
            <td><%= log.getRequestdate() %></td>
            <td><%= log.getStatus() %></td>
        </tr>
    <%
            }
        } else {
    %>
        <tr>
            <td colspan="7" style="text-align:center;">No collection logs found.</td>
        </tr>
    <%
        }
    %>
    </tbody>
</table>

</body>
</html>
