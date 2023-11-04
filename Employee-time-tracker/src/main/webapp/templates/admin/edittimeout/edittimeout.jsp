<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Register Page</title>
<link rel="stylesheet" href="../../../CSS/bootstrap.jsp">
<style>
body {
	background-color: #121212; /* Dark background color */
	color: #fff;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 450px;
	margin: 0 auto;
	padding: 20px;
	text-align: center;
}

.register-form {
	background-color: rgba(255, 255, 255, 0.1);
	/* Slightly transparent white */
	border-radius: 10px;
	padding: 30px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
	text-align: left; /* Left-align text within the form */
	margin-top: 20px; /* Space above the form */
	margin-bottom: 10px; /* Space below the form */
}

h2 {
	color: #007bff;
	font-weight: bold;
}

.form-group {
	position: relative; /* Relative positioning for label animation */
	margin-bottom: 40px;
}

label {
	color: #fff;
	font-weight: bold;
	top: 0;
	left: 10px;
	font-size: 16px;
	color: blue;
}

input[type="text"], input[type="date"], input[type="number"] {
	width: 95%;
	padding: 10px;
	background-color: transparent; /* Remove background color */
	border: none; /* Remove borders */
	border-bottom: 1px solid #fff; /* Add bottom border */
	border-radius: 0; /* Remove border radius */
	color: #fff;
	outline: none; /* Remove input field outline */
	text-align: left; /* Right-align text within number input */
	font-size: 20px;
}

span {
	color: red;
}

.btn-submit {
	width: 100%;
	background-color: #007bff;
	color: #fff;
	padding: 12px;
	border: none;
	border-radius: 25px; /* Increased border radius */
	cursor: pointer;
	font-weight: bold;
	margin-top: 20px; /* Increased space above the button */
}

.btn-submit:hover {
	background-color: #0056b3;
}

.btn-home {
	position: absolute; /* Absolute positioning for the Home link */
	top: 20px; /* Adjust the top position as needed */
	right: 20px; /* Adjust the right position as needed */
	background-color: transparent; /* Transparent background */
	color: #007bff; /* Blue text color */
	padding: 12px;
	border: none;
	cursor: pointer;
	font-weight: normal; /* Remove bold style */
	text-align: center; /* Center-align text */
}

.btn-home:hover {
	color: #0056b3; /* Blue text color on hover */
}

/* Add focus styles for input fields */


/* Style the div containing the message */
.message-container {
	background-color: #333; /* Dark background color */
	padding: 1px; /* Padding for the message */
	border-radius: 5px; /* Rounded corners */
	margin-top: 1px; /* Space above the message */
	margin-bottom: 20px; /* Space below the message */
	text-align: center; /* Center-align text within the message */
	font-family: Arial, sans-serif; /* Font family for the message */
	color: #fff; /* Text color for the message */
	font-weight: bold;
}

/* Style the message text */
</style>
</head>
<body>
	<div class="container">

		<div class="register-form">
			<div class="message-container">
				<!-- Container for the message -->
				<p class="message-text">Welcome! Edit out the form below</p>
			</div>
			<form action="update-record ">
				<div class="form-group">
					<label for="timeid">Time ID<span>*</span>
					</label> <input type="text" class="form-control" id="timeid" name="timeid"
						value="${tmsg.timeid }" readonly="readonly" required>
				</div>
				<div class="form-group">
					<label for="eid">eid<span>*</span></label> <input
						class="form-control" type="text" id="eid" name="eid"
						value="${tmsg.eid }" readonly="readonly" required>
				</div>
				<div class="form-group">
					<label for="outtime">outtime<span>*</span></label> <input
						class="form-control" type="text" id="outtime" name="outtime"
						value="${tmsg.outtime }"  required>
				</div>
				<div class="form-group">
					<label for="intime">intime<span>*</span>
					</label> <input class="form-control" type="text" id="intime" name="intime"
						value="${tmsg.intime }" readonly="readonly" required>
				</div>
				<div class="form-group">
					<label for="date">Date<span>*</span>
					</label> <input class="form-control" type="date" id="date" name="date"
						value="${tmsg.date }" readonly="readonly" required>
				</div>
				<button type="submit" formaction="update-out-time" class="btn-submit">Update Out Time</button>
			</form>
			<a href='/Employee-time-tracker/admin/home' class="btn-home">Home</a>
			<!-- Adjusted position -->
		</div>
		<h2>${param.updatemsg}</h2>
	</div>
</body>
</html>
