<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <%@include file="../../../CSS/dashcss.jsp"%>
    <style>
        /* Custom styles for an attractive dashboard */
        body {
            background-color: #f0f0f0; /* Background color */
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .header {
            background-color: #007BFF; /* Header background color */
            color: #fff; /* Header text color */
            padding: 13px;
            text-align: center;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .btn-container a {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin-right: 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        .btn-home {
            background-color: #007BFF;
        }

        .btn-container a:last-child {
            margin-right: 0;
        }

        .table-container {
            background-color: #fff; /* Table background color */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
        }

        h1 {
            font-size: 25px;
            font-weight: bold;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            border-radius: 1px;
            background-color: #007BFF; /* Header cell background color */
            color: #fff; /* Header cell text color */
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* Alternate row background color */
        }

        .btn {
            padding: 8px 16px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .btn-success {
            background-color: #28a745; /* Success button color */
            color: #fff;
        }

        .btn-danger {
            background-color: #dc3545; /* Danger button color */
            color: #fff;
        }
    </style>
</head>
<body onload="makeActive('dashboard')">
<div class="container">
    <div class="header">
        <div class="btn-container">
            <a type="button" class="btn btn-success"
               href="add-employee">Add Employee</a>
            <a class="btn btn-home"
               href='/Employee-time-tracker/admin/home'>Home</a>
        </div>
        <h1>Employee Record</h1>
        <h2>${ param.savemsg }</h2>
        <h2>${ param.deletemsg }</h2>
        <h2>${ param.updatemsg }</h2>
    </div>
    <div class="table-container">
        <table>
            <thead>
            <tr>
                <th>EId</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Department</th>
                <th>Salary</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="employee" items="${elist}">
                <tr>
                    <td>${employee.eid}</td>
                    <td>${employee.firstname}</td>
                    <td>${employee.lastname}</td>
                    <td>${employee.phone}</td>
                    <td>${employee.email}</td>
                    <td>${employee.department}</td>
                    <td>${employee.salary}</td>
                    <td>${employee.status}</td>
                    <td>
                        <a type="button" class="btn btn-success"
                           href="update-view?eid=${employee.eid}"
                           onclick='return confirm("Are you sure want to Update?")'>Update</a>
                        <a class="btn btn-danger"
                           href="delete-record?eid=${employee.eid}"
                           onclick='return confirm("Are you sure to delete?")'>Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
