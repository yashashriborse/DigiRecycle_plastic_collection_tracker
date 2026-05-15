<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Recycler</title>
    
    <!-- Google Fonts & Font Awesome (Optional) -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0; padding: 0; box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        body {
            background-color: #1a1a1a;
            color: #eee;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            background: rgba(0, 0, 0, 0.85);
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.6);
            width: 450px;
            border: 1px solid #333;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #00b894;
            font-weight: 600;
        }

        form input[type="text"],
        form input[type="email"],
        form input[type="password"] {
            width: 100%;
            padding: 10px 14px;
            margin: 10px 0;
            background-color: #2f2f2f;
            color: #fff;
            border: none;
            border-radius: 6px;
            outline: none;
        }

        form input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #00b894;
            color: white;
            font-weight: 600;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease;
            margin-top: 20px;
        }

        form input[type="submit"]:hover {
            background-color: #019875;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add Recycler</h2>
        <form action="AddRecyclerSubmit" method="post">
            Contact : 
            <input type="text" name="recContact" placeholder="Contact" required/><br/>
            
            Name: 
            <input type="text" name="recName" placeholder="Name" required/><br/>
            
            Zone: 
            <input type="text" name="recZone" placeholder="Zone" required/><br/>
            
            Email: 
            <input type="email" name="recEmail" placeholder="Email" required/><br/>
            
            Password: 
            <input type="password" name="recPassword" placeholder="Password" required/><br/>
            
            <input type="submit" value="Add Recycler"/>
        </form>
    </div>
</body>
</html>
