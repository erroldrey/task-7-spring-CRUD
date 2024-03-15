<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
        }
        button {
            padding: 8px 12px;
            border: none;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h2>User List</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Last Name</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Actions</th>
    </tr>
    <tr th:each="user : ${allUsers}">
        <td th:text="${user.name}"></td>
        <td th:text="${user.lastName}"></td>
        <td th:text="${user.department}"></td>
        <td th:text="${user.salary}"></td>
        <td>
            <a th:href="@{/viewUser(id=${user.id})}">
                <button>Update</button>
            </a>
            <a th:href="@{/deleteUser(id=${user.id})}">
                <button>Delete</button>
            </a>
        </td>
    </tr>
</table>
<br>
<a th:href="@{/askDetails}">
    <button>Add new user</button>
</a>
</body>
</html>