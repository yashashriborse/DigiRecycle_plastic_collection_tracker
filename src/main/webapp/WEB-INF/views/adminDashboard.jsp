<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>

<!-- Google Fonts & Font Awesome -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>

<style>
    * {
        margin: 0; padding: 0; box-sizing: border-box;
        font-family: 'Inter', sans-serif;
    }
    body {
        background: #1a1a1a;  /* dark background */
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        color: #eee;
    }
    .dashboard-container {
        background: rgba(0, 0, 0, 0.85);  /* dark transparent container */
        padding: 40px 50px;
        border-radius: 16px;
        box-shadow: 0 8px 30px rgba(0,0,0,0.6);
        width: 400px;
        text-align: center;
        border: 1px solid #333;
    }
    h2 {
        color: #00b894; /* teal accent */
        font-weight: 600;
        margin-bottom: 30px;
        user-select: none;
    }
    ul {
        list-style: none;
    }
    ul li {
        margin-bottom: 18px;
    }
    ul li a {
        text-decoration: none;
        color: #ccc;
        font-size: 18px;
        padding: 10px 18px;
        display: block;
        border-radius: 8px;
        background: #2f2f2f;
        transition: background 0.3s, color 0.3s;
        box-shadow: 0 2px 8px rgba(0,0,0,0.4);
    }
    ul li a:hover {
        background: #00b894;
        color: #fff;
        box-shadow: 0 4px 15px rgba(0,184,148,0.7);
    }
</style>

</head>
<body>
    <div class="dashboard-container">
        <h2><i class="fas fa-tachometer-alt"></i> Admin Dashboard</h2>
        <ul>
            <li><a href="addRecycler"><i class="fas fa-plus-circle"></i> Add Recycler</a></li>
            <li><a href="viewRecycler"><i class="fas fa-eye"></i> View Recycler</a></li>
            <li><a href="adminViewUsers"><i class="fas fa-users"></i> View Users</a></li>
            <li><a href="viewCollectionLogs"><i class="fas fa-file-alt"></i> View Collection Logs</a></li>
        </ul>
    </div>
</body>
</html>
