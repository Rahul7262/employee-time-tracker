<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Dashboard</title>
    <link rel="stylesheet" href="../../../CSS/dashcss.jsp">
    <style>
        body {
            background-color: #2a2a2a;
            color: #fff;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .dv {
            text-align: center;
            padding: 20px;
        }

        h1 {
            color: #ff9800;
        }

        h2 {
            color: #e91e63;
        }

        a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        .btn-add-user, .btn-home {
            background-color: #2196f3;
            color: #fff;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px; /* Rounded corners */
        }

        .btn-add-user:hover {
            background-color: #0f7ae5;
        }

        .btn-home:hover {
            background-color: #0f7ae5;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            color: #fff;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #333;
        }

        tr:nth-child(even) {
            background-color: #444;
        }

        .btn-success {
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px; /* Rounded corners */
        }

        .btn-success:hover {
            background-color: #45a049;
        }

        .btn-danger {
            background-color: #f44336;
            color: #fff;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px; /* Rounded corners */
        }

        .btn-danger:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body onload="makeActive('dashboard')">
    <div class='dv'>
        <h1>User's Record</h1>
         <h2>${ param.savemsg }</h2>
        <h2>${ param.deletemsg }</h2>
        <div>
            <a class="btn btn-add-user" href="add-user">Add User</a>
            <a class="btn btn-home" href='/Employee-time-tracker/admin/home'>Home</a>
        </div>
        
        <c:if test="${ulist=='[]'}">
            <div class='dv'>
                <h2>Employee list is empty</h2>
            </div>
        </c:if>
        <c:if test="${ulist!='[]'}">
            <table>
                <tr>
                    <th>UserId</th>
                    <th>Password</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="user" items="${ulist}">
                    <tr>
                        <td>${user.userid}</td>
                        <td>${user.password}</td>
                        <td>${user.name}</td>
                        <td>${user.phone}</td>
                        <td>
                            <a class="btn btn-success" href="update-view?phone=${user.phone}"
                               onclick='return confirm("Are you sure want to Update?")'>Update</a>
                            <a class="btn btn-danger" href="delete-user?userid=${user.userid }"
                               onclick='return confirm("Are you sure to delete?")'>Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
       
    </div>
</body>
</html>
