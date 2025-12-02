<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee Details</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #ff9966, #ff5e62);
        margin: 0;
        padding: 0;
    }

    .container {
        width: 420px;
        background: #fff;
        margin: 80px auto;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
    }

    label {
        font-weight: bold;
        color: #444;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-top: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 15px;
    }

    .btn {
        width: 100%;
        background: #ff5e62;
        color: white;
        padding: 12px;
        margin-top: 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s ease;
    }

    .btn:hover {
        background: #ff3b3f;
    }

    .footer {
        text-align: center;
        margin-top: 20px;
        font-size: 13px;
        color: #fff;
    }

</style>
</head>

<body>

    <div class="container">
        <h1>Edit Employee</h1>

        <form action="/editEmployee" method="post">

            <input type="hidden" name="id" value="${employee.id}">

            <label>Name:</label>
            <input type="text" name="name" value="${employee.name}" required>

            <br><br>

            <label>Salary:</label>
            <input type="text" name="salary" value="${employee.salary}" required>

            <br><br>

            <label>Designation:</label>
            <input type="text" name="designation" value="${employee.designation}" required>

            <br><br>

            <input type="submit" value="Save Changes" class="btn">
        </form>
    </div>

    <div class="footer">© 2025 Employee Management System</div>

</body>
</html>