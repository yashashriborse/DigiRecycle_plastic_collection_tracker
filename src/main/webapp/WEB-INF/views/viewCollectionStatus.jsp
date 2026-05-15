<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DigiRecycle.model.CollectionLog" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Your Collection Requests Status</title>
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
            background-color: rgba(0, 0, 0, 0.85);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0,0,0,0.5);
        }
        th, td {
            padding: 14px 12px;
            text-align: center;
            border-bottom: 1px solid #333;
        }
        th {
            background-color: #2f2f2f;
            color: #00cec9;
        }
        tr:hover {
            background-color: #2a2a2a;
        }
        td[colspan="5"] {
            padding: 20px;
            font-style: italic;
            color: #999;
        }
    </style>
</head>
<body>

<h2>Your Collection Requests Status</h2>

<table>
    <thead>
        <tr>
            <th>ID</th>
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
    %>
        <tr>
            <td><%= log.getId() %></td>
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
            <td colspan="5" style="text-align:center;">No collection requests found.</td>
        </tr>
    <%
        }
    %>
    </tbody>
</table>

</body>
</html>
