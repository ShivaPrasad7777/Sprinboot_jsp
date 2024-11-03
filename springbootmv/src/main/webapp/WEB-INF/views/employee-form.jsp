<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Form</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        /* Form Container */
        .form-container {
            width: 100%;
            max-width: 500px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="hidden"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }

        /* Submit Button */
        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }

        /* Responsive Styling */
        @media (max-width: 600px) {
            .form-container {
                padding: 15px;
            }
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Employee Form</h2>
    <form action="${pageContext.request.contextPath}/employees" method="post">
        <input type="hidden" name="id" value="${employee.id}">

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${employee.name}" required>

        <label for="position">Position:</label>
        <input type="text" id="position" name="position" value="${employee.position}" required>

        <button type="submit" class="submit-btn">Save</button>
    </form>
</div>

</body>
</html>
























<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Form</title>
</head>
<body>
<h2>Employee Form</h2>
<form action="${pageContext.request.contextPath}/employees" method="post">
    <input type="hidden" name="id" value="${employee.id}">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${employee.name}">
    <br>
    <label for="position">Position:</label>
    <input type="text" id="position" name="position" value="${employee.position}">
    <br>
    <button type="submit">Save</button>
</form>
</body>
</html> --%>
