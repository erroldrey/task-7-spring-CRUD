<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Edit User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        form {
            max-width: 400px;
            margin: 0 auto;
        }
        label {
            margin-bottom: 10px;
            display: block;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h2>Edit User</h2>

<form th:action="@{/updateUser}" th:object="${user}" method="post">
    <input type="hidden" th:field="*{id}" />

    <label for="name">Name:</label>
    <input type="text" id="name" th:field="*{name}" required />

    <br><br>

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" th:field="*{lastName}" required />

    <br><br>

    <label for="department">Department:</label>
    <input type="text" id="department" th:field="*{department}" required />

    <br><br>

    <label for="salary">Salary:</label>
    <input type="number" id="salary" th:field="*{salary}" required />

    <br><br>

    <input type="submit" value="Update">
</form>

</body>
</html>