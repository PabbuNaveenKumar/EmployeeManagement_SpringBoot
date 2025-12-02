<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Employee</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            background: #fff;
            margin: 80px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
        }

        label {
            font-weight: bold;
            color: #444;
        }

        .btn {
            width: 100%;
            background: #4facfe;
            color: white;
            padding: 12px;
            margin-top: 15px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .btn:hover {
            background: #007bff;
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
        <h1>Add Employee</h1>

        <form action="/addEmployee" method="post">
            <label>Name:</label>
            <input type="text" name="name" required>

            <br><br>

            <label>Salary:</label>
            <input type="text" name="salary" required>

            <br><br>

            <label>Designation:</label>
            <input type="text" name="designation" required>

            <br><br>

            <input type="submit" class="btn" value="Add Employee">
        </form>
    </div>

    <div class="footer">© 2025 Employee Management System</div>

</body>
</html>