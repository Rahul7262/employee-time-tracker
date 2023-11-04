
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="/CSS/bootstrap.jsp"%>
<%@include file="../navbar.jsp"%>
<title>Record Employee Out Time</title>
<style>
/* Common background gradient */
body {
	background: #253259;
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

/* Form Container Styles */
.form-container {
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	max-width: 800px;
	margin: 0 auto;
	text-align: center;
	margin-top: 50px;
}

/* Form Element Styles */
.form-element {
	margin: 10px 0;
}

.form-label {
	font-weight: bold;
}

.form-select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.form-button {
	background-color: #007BFF;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.form-button:disabled {
	background-color: #ccc;
	cursor: not-allowed;
}

/* Message Styles */
.message {
	margin-top: 15px;
	color: #007BFF;
	font-weight: bolder;
	font-family: monospace;
}



h1 {
	color: orange;
	font-size: 36px;
	font-weight: bolder;
}


</style>
</head>

<body onload="makeActive('out')">
	<div class="form-container">
		<form action="save-timein">
			<c:if test="${elist=='[]'}">
				<div class='dv'>
					<h1>Employee list of OUT Status is empty</h1>

				</div>
			</c:if>
			<c:if test="${elist!='[]'}">
				<div class='form-element'>
					<label class='form-label'>Record of Employees Who's Status is OUT</label>
				</div>
				<div class='form-element'>


					<select name="eid" id="eid" class='form-select'
						onchange="checkEmployee(this)">
						<option value="-1">Select Employee</option>

						<c:forEach var="emp" items="${elist}">
							<option value="${emp.eid}">${emp.firstname}
								${emp.lastname} (${emp.eid})</option>
						</c:forEach>
					</select>

				</div>

				<div class='form-element'>
					<button id='bt' class='form-button'>Submit</button>
				</div>
				<div class=' message' id='msg2'>${param.updatemsg }</div>
			</c:if>
		</form>
	</div>
</body>
<%-- <c:if test="${elist=='[]'}">
				<div class='form-element'>
					<button disabled="disabled" id='bt' class='form-button'>Submit</button>
				</div>
			</c:if>
			<c:if test="${elist!='[]'}"></c:if> --%>
</html>
