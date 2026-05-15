<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DigiRecycle.model.CollectionLog" %>
<%@ page import="com.DigiRecycle.model.User" %>

<!DOCTYPE html>
<html>
<head>
    <title>Requests Status</title>
    <style>
        body {
            background-color: #1a1a1a;
            color: #f1f1f1;
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        h2 {
            color: #00cec9;
            margin-top: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            background: rgba(0, 0, 0, 0.85);
            border-radius: 10px;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #333;
        }
        th {
            background-color: #2f2f2f;
            color: #00b894;
        }
    </style>
</head>
<body>

<h2>Pending Requests</h2>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>User Name</th>
            <th>Plastic Type</th>
            <th>Quantity</th>
            <th>Request Date</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<CollectionLog> pendingLogs = (List<CollectionLog>) request.getAttribute("pendingLogs");
            if (pendingLogs != null && !pendingLogs.isEmpty()) {
                for (CollectionLog log : pendingLogs) {
                    User user = log.getUser();
        %>
        <tr>
            <td><%= log.getId() %></td>
            <td><%= (user != null) ? user.getuName() : "N/A" %></td>
            <td><%= log.getPlasticType() %></td>
            <td><%= log.getQuantity() %></td>
            <td><%= log.getRequestdate() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5" style="text-align:center;">No pending requests.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

<h2>Collected Requests</h2>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>User Name</th>
            <th>Plastic Type</th>
            <th>Quantity</th>
            <th>Request Date</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<CollectionLog> collectedLogs = (List<CollectionLog>) request.getAttribute("collectedLogs");
            if (collectedLogs != null && !collectedLogs.isEmpty()) {
                for (CollectionLog log : collectedLogs) {
                    User user = log.getUser();
        %>
        <tr>
            <td><%= log.getId() %></td>
            <td><%= (user != null) ? user.getuName() : "N/A" %></td>
            <td><%= log.getPlasticType() %></td>
            <td><%= log.getQuantity() %></td>
            <td><%= log.getRequestdate() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5" style="text-align:center;">No collected requests.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

</body>
</html>
