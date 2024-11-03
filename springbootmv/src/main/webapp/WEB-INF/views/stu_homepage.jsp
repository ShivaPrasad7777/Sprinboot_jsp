<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student List</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        h2 {
            color: #333;
            text-align: center;
            margin: 20px 0;
        }
        
        /* Navigation Bar */
        .navbar {
            width: 100%;
            background-color: #333;
            overflow: hidden;
            padding: 10px;
        }
        
        .navbar a {
            color: white;
            padding: 12px 20px;
            text-decoration: none;
            float: left;
        }
        
        .navbar a:hover {
            background-color: #575757;
        }
        
        /* Table Styling */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
            background-color: #fff;
            border-radius: 5px;
            overflow: hidden;
        }
        
        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #4CAF50;
            color: white;
        }
        
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        tr:hover {
            background-color: #ddd;
        }
        
        /* Action Buttons */
        .action-btn {
            padding: 8px 12px;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
        }
        
        .edit-btn {
            background-color: #f0ad4e;
        }
        
        .delete-btn {
            background-color: #d9534f;
        }
        
        .add-btn {
            display: block;
            width: 150px;
            text-align: center;
            margin: 20px auto;
            padding: 10px;
            background-color: #5bc0de;
            color: white;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
        }
        
        .add-btn:hover {
            background-color: #31b0d5;
        }
    </style>
    <script>
        function confirmDelete(event) {
            if (!confirm("Are you sure you want to delete this student?")) {
                event.preventDefault();
            }
        }
    </script>
</head>
<body>

<div class="navbar">
    <a href="${pageContext.request.contextPath}/students">Home</a>
    <a href="${pageContext.request.contextPath}/students/new">Add New Student</a>
</div>

<h2>Student List</h2>

<a href="${pageContext.request.contextPath}/students/new" class="add-btn">+ Add New Student</a>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Mobile Number</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${students}" var="stu">
        <tr>
            <td>${stu.id}</td>
            <td>${stu.name}</td>
            <td>${stu.address}</td>
            <td>${stu.mblnum}</td>
            <td>
                <a href="${pageContext.request.contextPath}/students/edit/${stu.id}" class="action-btn edit-btn">Edit</a>
                <form action="${pageContext.request.contextPath}/students/delete/${stu.id}" method="post" style="display:inline;">
                    <input type="hidden" name="_method" value="delete" />
                    <button type="submit" class="action-btn delete-btn" onclick="confirmDelete(event)">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>




























<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Homepage</title>
</head>
<body>
<h1>ALL STUDENTS</h1>
<table border="1">
<tr>
	<th>Student Id</th>
	<th>Stduent Name</th>
	<th>Stduent Address</th>
	<th>Stduent Mbl number</th>
	<th>ACTIONS</th>
</tr>
<c:forEach items="${students}" var="stu">
	<tr>
		<td>${stu.id}</td>
		<td>${stu.name}</td>
		<td>${stu.address}</td>
		<td>${stu.mblnum}</td>
		<td>
		<a href="${pageContext.request.contextPath}/students/edit/${stu.id}">Edit</a>
		 <form action="${pageContext.request.contextPath}/students/delete/${stu.id}" method="post" style="display:inline;">
        <input type="hidden" name="_method" value="delete">
        <button type="submit" onclick="return confirm('Are you sure you want to delete this student?');">Delete</button>
    </form>
	</tr>
</c:forEach>

</table>

<a href="${pageContext.request.contextPath}/students/new">Add Student</a>


</body>
</html> --%>