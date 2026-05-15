<%@ page import="java.util.List" %>
<%@ page import="com.DigiRecycle.model.CollectionLog" %>
<%@ page import="com.DigiRecycle.model.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Collection Requests</title>
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
        color: #00b894;
        margin-bottom: 30px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        background-color: rgba(0, 0, 0, 0.85);
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.5);
        overflow: hidden;
    }
    th, td {
        padding: 14px 12px;
        text-align: center;
        border-bottom: 1px solid #333;
    }
    th {
        background-color: #2f2f2f;
        color: #00cec9;
        font-weight: 600;
    }
    tr:hover {
        background-color: #2a2a2a;
    }
    input[type="submit"] {
        background-color: #00cec9;
        border: none;
        padding: 8px 15px;
        border-radius: 8px;
        color: #1a1a1a;
        font-weight: 600;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #00b894;
        color: white;
    }
    td[colspan="7"] {
        padding: 20px;
        font-style: italic;
        color: #999;
    }
</style>
</head>
<body>

<h2>Collection Requests added by user</h2>
<table>
<tr>
  <th>ID</th>
  <th>Plastic Type</th>
  <th>Quantity</th>
  <th>Request Date</th>
  <th>Status</th>
  <th>Update Status</th>
</tr>

<%
    List<CollectionLog> logs = (List<CollectionLog>) request.getAttribute("logs");
    if (logs != null && !logs.isEmpty()) {
        for (CollectionLog log : logs) {
            User user = log.getUser();
%>
            <tr>
                <td><%= log.getId() %></td>
                <td><%= user != null ? user.getuName() : "N/A" %></td>
                <td><%= log.getPlasticType() %></td>
                <td><%= log.getQuantity() %></td>
                <td><%= log.getRequestdate() %></td>
                <td><%= log.getStatus() %></td>
                <td>
                    <% if ("Pending".equals(log.getStatus())) { %>
                        <form action="updateRequestStatus" method="post" style="margin:0;">
                            <input type="hidden" name="id" value="<%= log.getId() %>" />
                            <input type="submit" value="Mark as Collected" />
                        </form>
                    <% } else { %>
                        Collected
                    <% } %>
                </td>
            </tr>
<%
        }
    } else {
%>
        <tr>
            <td colspan="7" align="center">No collection requests assigned.</td>
        </tr>
<%
    }
%>
</table>

</body>
</html>
