<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DigiRecycle.model.Recycler" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Recyclers - Admin Panel</title>
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
            background-color: rgba(30, 30, 30, 0.95);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 15px rgba(0,0,0,0.6);
        }

        th, td {
            padding: 14px 12px;
            text-align: center;
            border-bottom: 1px solid #444;
        }

        th {
            background-color: #2b2b2b;
            color: #00cec9;
        }

        tr:hover {
            background-color: #2f2f2f;
        }

        a {
            color: #ff7675;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
            color: #ff3b3b;
        }

        td[colspan="6"] {
            padding: 20px;
            font-style: italic;
            color: #999;
        }

        @media screen and (max-width: 768px) {
            table, thead, tbody, th, td, tr {
                display: block;
            }

            thead tr {
                display: none;
            }

            td {
                position: relative;
                padding-left: 50%;
                border-bottom: 1px solid #444;
            }

            td:before {
                position: absolute;
                left: 10px;
                width: 45%;
                white-space: nowrap;
                font-weight: bold;
                color: #ccc;
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
                <a href="DeleteRecyclerServlet?recContact=<%= r.getRecContact() %>" 
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
