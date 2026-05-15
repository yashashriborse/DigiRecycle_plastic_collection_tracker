<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>DigiRecycle Dashboard</title>

  <!-- Google Fonts & Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>

  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Inter', sans-serif;
      background: #d9d9d9;  /* light grey background */
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #222; /* dark text for readability */
    }
    .container {
      background: rgba(45, 45, 45, 0.95);  /* dark container with slight transparency */
      padding: 50px;
      border-radius: 16px;
      box-shadow: 0 8px 30px rgba(0,0,0,0.3);
      text-align: center;
      max-width: 650px;
      width: 90%;
      animation: slideUp 0.8s ease-in-out;
      border: 1px solid #555; /* subtle border */
      color: #eee;
    }
    @keyframes slideUp {
      from { transform: translateY(40px); opacity: 0; }
      to { transform: translateY(0); opacity: 1; }
    }
    .logo {
      font-size: 36px;
      margin-bottom: 10px;
      background: linear-gradient(to right, #00b894, #55efc4); /* teal shades */
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      user-select: none;
    }
    .description {
      font-size: 16px;
      color: #ccc; /* lighter text */
      margin-bottom: 30px;
    }
    .card-wrapper {
      display: flex;
      justify-content: space-between;
      gap: 20px;
      flex-wrap: wrap;
    }
    .card {
      flex: 1 1 30%;
      background: #3a3a3a;  /* dark grey card background */
      padding: 25px;
      border-radius: 14px;
      transition: transform 0.3s, background 0.3s;
      color: #eee;
      text-decoration: none;
      box-shadow: 0 6px 15px rgba(0,0,0,0.3);
      position: relative;
      overflow: hidden;
    }
    .card:hover {
      transform: translateY(-6px);
      background: #525252; /* lighter grey on hover */
      box-shadow: 0 12px 25px rgba(0,0,0,0.5);
    }
    .card i {
      font-size: 32px;
      margin-bottom: 14px;
      color: #00b894; /* teal */
    }
    .card h3 {
      font-size: 20px;
      margin-bottom: 6px;
    }
    .card p {
      font-size: 14px;
      color: #ccc;
    }
    .card:before {
      content: "";
      position: absolute;
      top: -50%;
      left: -50%;
      width: 200%;
      height: 200%;
      background: radial-gradient(circle at center, rgba(0,184,148,0.15), transparent 60%);
      transform: rotate(45deg);
      opacity: 0;
      transition: opacity 0.4s;
    }
    .card:hover:before {
      opacity: 1;
    }
    .footer {
      margin-top: 35px;
      font-size: 13px;
      color: #666;
      user-select: none;
    }
    @media(max-width: 768px) {
      .card-wrapper {
        flex-direction: column;
      }
      .card {
        flex: unset;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="logo"><i class="fas fa-recycle"></i> DigiRecycle</div>
    <p class="description">Select your role to continue</p>

    <div class="card-wrapper">
      <a href="adminLogin" class="card">
        <i class="fas fa-user-shield"></i>
        <h3>Admin Login</h3>
        <p>Manage users and recyclers</p>
      </a>
      <a href="recyclerLogin" class="card">
        <i class="fas fa-recycle"></i>
        <h3>Recycler Login</h3>
        <p>View and collect requests</p>
      </a>
      <a href="userLogin" class="card">
        <i class="fas fa-user"></i>
        <h3>User Login</h3>
        <p>Submit collection request</p>
      </a>
    </div>

    <div class="footer">&copy; 2025 DigiRecycle. All Rights Reserved.</div>
  </div>
</body>
</html>
