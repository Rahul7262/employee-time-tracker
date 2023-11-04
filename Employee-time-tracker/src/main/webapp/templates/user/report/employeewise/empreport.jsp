<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@include file="../../../../CSS/dashcss.jsp"%>
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
	max-height: 300px; /* Set the maximum height you want for the table */
	overflow: auto; /* Enable vertical scrolling */
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

thead {
	position: sticky;
	top: 0;
	
	
}
</style>
</head>
<body onload="makeActive('dashboard')">
	<div class="container">
		<div class="header">
			<div class="btn-container">
				<a class="btn btn-home" href='/Employee-time-tracker/report/employee-list'>Home</a>
			</div>
			<h1>Employee TimeInfo Record</h1>

		</div>
		<div class="table-container">
			<table>
				<thead>
					<tr>
						<th>Time Id</th>
						<th>EId</th>
						<th>OutTime</th>
						<th>InTime</th>
						<th>TotalTime</th>
						<th>Date</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="timeinfo" items="${tilist}">
						<tr>
							<td>${timeinfo.timeid}</td>
							<td>${timeinfo.eid}</td>
							<td>${timeinfo.outtime}</td>
							<td>${timeinfo.intime}</td>
							<td>${timeinfo.totaltime}</td>
							<td>${timeinfo.date}</td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
