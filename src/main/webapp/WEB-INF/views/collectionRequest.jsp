<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit Collection Request</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
<style>
    body {
        background-color: #1a1a1a;
        color: #f1f1f1;
        font-family: 'Inter', sans-serif;
        padding: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
    }

    form {
        background: rgba(0, 0, 0, 0.85);
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 6px 20px rgba(0, 204, 204, 0.3);
        width: 320px;
        text-align: left;
    }

    label {
        display: block;
        font-weight: 600;
        margin-bottom: 6px;
        color: #00cec9;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 8px;
        background: #2e2e2e;
        color: #f1f1f1;
        font-size: 14px;
        margin-bottom: 20px;
        transition: background 0.3s ease;
    }

    input[type="text"]:focus {
        background: #3a3a3a;
        outline: none;
    }

    input[type="submit"] {
        background-color: #00cec9;
        border: none;
        padding: 12px;
        border-radius: 10px;
        color: #1a1a1a;
        font-weight: 700;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #00b894;
        color: #fff;
    }
</style>
</head>
<body>

<form action="SubmitCollectionRequest" method="post">
    <label for="plasticType">Plastic Type:</label>
    <input type="text" id="plasticType" name="plasticType" placeholder="Enter plastic type" required />

    <label for="quantity">Quantity:</label>
    <input type="text" id="quantity" name="quantity" placeholder="Enter quantity" required />

    <label for="requestdate">Request Date:</label>
    <input type="text" id="requestdate" name="requestdate" placeholder="YYYY-MM-DD" required />

    <input type="submit" value="Submit Request" />
</form>

</body>
</html>
