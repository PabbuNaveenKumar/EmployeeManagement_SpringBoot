<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employees List</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
        }

        h1 {
            text-align: center;
            padding-top: 30px;
            color: white;
            font-size: 32px;
        }

        .table-container {
            width: 90%;
            margin: 40px auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 5px 20px rgba(0,0,0,0.2);
            backdrop-filter: blur(10px);

            /* Added Flex + Wrap */
            display: flex;
            flex-direction: column;
            flex-wrap: wrap;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background: #4e54c8;
            color: white;
            padding: 12px;
            text-align: left;
        }

        td {
            padding: 10px;
            color: #333;
            background: #f8f9fa;
            border-bottom: 1px solid #ddd;
        }

        tr:hover td {
            background-color: #e6e6e6;
            transition: 0.3s ease;
        }

        /* Buttons */
        .btn {
            padding: 6px 12px;
            border-radius: 5px;
            color: white;
            text-decoration: none;
            font-size: 14px;
            transition: 0.3s ease;
        }

        .edit-btn {
            background: #007bff;
        }
        .edit-btn:hover {
            background: #0056b3;
        }

        .delete-btn {
            background: #dc3545;
        }
        .delete-btn:hover {
            background: #b52a33;
        }

        .add-link {
            display: inline-block;
            margin: 20px auto;
            padding: 12px 20px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            text-align: center;
            transition: 0.3s;
            display: block;
            width: 200px;
        }

        .add-link:hover {
            background-color: #218838;
        }
    </style>

</head>
<body>

    <h1>Employees List</h1>

    <div class="table-container">
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Salary</th>
                <th>Designation</th>
                <th>Actions</th>
            </tr>

            <c:forEach items="${employees}" var="employee">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.salary}</td>
                    <td>${employee.designation}</td>
                    <td>
                        <a href="/editEmployeeForm?id=${employee.id}" class="btn edit-btn">Edit</a>
                        <a href="/deleteEmployee?id=${employee.id}" class="btn delete-btn">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="/addEmployeeForm" class="add-link">Add New Employee</a>
    </div>

</body>
</html>