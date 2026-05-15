<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DigiRecycle.model.Recycler" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Recyclers - Admin Panel</title>
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

    a {
        color: #ff7675;
        font-weight: bold;
        text-decoration: none;
    }

    a:hover {
        color: #ff5252;
        text-decoration: underline;
    }

    td[colspan="6"] {
        padding: 20px;
        font-style: italic;
        color: #ccc;
    }

    @media (max-width: 768px) {
        table, thead, tbody, th, td, tr {
            display: block;
        }

        thead tr {
            display: none;
        }

        td {
            position: relative;
            padding-left: 50%;
            border-bottom: 1px solid #333;
        }

        td:before {
            position: absolute;
            top: 12px;
            left: 12px;
            width: 45%;
            font-weight: bold;
            color: #bbb;
        }

        td:nth-of-type(1):before { content: "Contact Number"; }
        td:nth-of-type(2):before { content: "Name"; }
        td:nth-of-type(3):before { content: "Zone"; }
        td:nth-of-type(4):before { content: "Email"; }
        td:nth-of-type(5):before { content: "Password"; }
        td:nth-of-type(6):before { content: "Action"; }
    }
</style>
</head>
<body>

<h2>All Recyclers Added by Admin</h2>

<table>
    <thead>
        <tr>
            <th>Contact Number</th>
            <th>Name</th>
            <th>Zone</th>
            <th>Email</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
    <%
        List<Recycler> recyclers = (List<Recycler>) request.getAttribute("recyclers");
        if (recyclers != null && !recyclers.isEmpty()) {
            for (Recycler r : recyclers) {
    %>
        <tr>
            <td><%= r.getRecContact() %></td>
            <td><%= r.getRecName() %></td>
            <td><%= r.getRecZone() %></td>
            <td><%= r.getRecEmail() %></td>
            <td><%= r.getRecPassword() %></td>
            <td>
                <a href="deleteRecycler?recContact=<%= r.getRecContact() %>" 
                   onclick="return confirm('Are you sure you want to delete this recycler?');">
                   Delete
                </a>
            </td>
        </tr>
    <%
            }
        } else {
    %>
        <tr>
            <td colspan="6" style="text-align:center;">No recyclers found.</td>
        </tr>
    <%
        }
    %>
    </tbody>
</table>

</body>
</html>
