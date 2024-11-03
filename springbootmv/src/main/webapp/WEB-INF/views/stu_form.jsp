<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        .container {
            max-width: 400px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 20px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #4cae4c;
        }
    </style>
</head>
<body>
    <h2>Student Registration Form</h2>
    <div class="container">
        <form action="${pageContext.request.contextPath}/students" method="post">
            <input type="hidden" name="id" value="${student.id}">
            <label for="name">Student Name:</label>
            <input type="text" name="name" id="name" value="${student.name}" required>

            <label for="mblnum">Mobile Number:</label>
            <input type="number" id="mnum" name="mblnum" value="${student.mblnum}" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="${student.address}" required>

            <button type="submit">Save</button>
        </form>
    </div>
</body>
</html>
