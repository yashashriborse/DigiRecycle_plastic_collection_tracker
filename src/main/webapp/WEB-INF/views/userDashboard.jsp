<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Dashboard</title>
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
    user-select: none;
  }

  ul {
    list-style: none;
    max-width: 500px;
    margin: 0 auto;
    padding: 0;
  }

  ul li {
    background: rgba(0, 0, 0, 0.85);
    margin-bottom: 20px;
    border-radius: 10px;
    padding: 18px 25px;
    box-shadow: 0 4px 12px rgba(0,184,148,0.5);
    transition: background-color 0.3s ease;
  }

  ul li:hover {
    background-color: #00b894;
  }

  ul li a {
    color: #00cec9;
    text-decoration: none;
    font-size: 16px;
    font-weight: 600;
    display: block;
    user-select: none;
  }

  ul li:hover a {
    color: #1a1a1a;
  }

  @media (max-width: 600px) {
    body {
      padding: 20px;
    }
    ul li {
      padding: 14px 18px;
    }
  }
</style>
</head>
<body>

<h2>User Dashboard</h2>
<ul>
  <li><a href="collectionRequest">Submit plastic collection request </a></li>
  <li><a href="viewCollectionStatus">View status</a></li>
</ul>

</body>
</html>
