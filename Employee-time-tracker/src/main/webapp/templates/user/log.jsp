<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Register Page</title>
<link rel="stylesheet" href="../../../CSS/bootstrap.jsp">
<style>
body {
	background-image: linear-gradient(120deg, #2980b9, #8e44ad);
	background-size: cover;
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

.container {
	max-width: 450px;
	margin: 0 auto;
	padding: 20px;
	text-align: center;
	margin-top: 25px;
}

.register-form {
	background-color: rgba(255, 255, 255, 0.1);
	/* Slightly transparent white */
	border-radius: 10px;
	padding: 30px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
	margin-top: 20px; /* Space above the form */
	margin-bottom: 10px; /* Space below the form */
}

h1 {
	color: #007bff;
	font-weight: bold;
}

.form-group {
	position: relative; /* Relative positioning for label animation */
	margin-bottom: 40px;
}

label {
	color: black;
	font-weight: bolder;
	position: absolute;
	top: 0;
	left: 10px;
	transition: all 0.3s; /* Label animation transition */
}

input[type="text"], input[type="password"], input[type="number"] {
	width: 95%;
	padding: 20px;
	background-color: transparent; /* Remove background color */
	border: none; /* Remove borders */
	border-bottom: 1px solid #fff; /* Add bottom border */
	border-radius: 0; /* Remove border radius */
	color: #fff;
	outline: none; /* Remove input field outline */
	text-align: left; /* Right-align text within number input */
	font-size: 15px;
	font-weight: bold;
}

span {
	color: red;
}

a {
	color: maroon;
}

.btn-submit {
	width: 100%;
	background-color: #0056b3;
	padding: 12px;
	border: none;
	border-radius: 25px; /* Increased border radius */
	cursor: pointer;
	font-weight: bold;
	margin-top: 10px; /* Increased space above the button */
	font-size: large;
}

.btn-submit:hover {
	color: white;
	font-weight: bolder;
	font-size: larger;
}

/* Add focus styles for input fields */
.form-group input:focus+label {
	top: -20px; /* Adjust label position */
	font-size: 15px;
	font-weight: bolder;
	color: #fff /* Change label color on focus */
}

/* Style the div containing the message */
.message-container {
	padding: 1px; /* Padding for the message */
	border-radius: 5px; /* Rounded corners */
	margin-top: 1px; /* Space above the message */
	margin-bottom: 30px; /* Space below the message */
	text-align: center; /* Center-align text within the message */
	font-family: Arial, sans-serif; /* Font family for the message */
	color: #fff; /* Text color for the message */
	font-weight: bold;
	font-size: larger;
}

.msg {
	font-weight: bolder;
	font-size: large;
	color: orange;
}

</style>
</head>
<body>
	<div class="container">

		<div class="register-form">
			<div class="message-container">
				<!-- Container for the message -->
				<p class="message-text">Welcome! Login the form below</p>
			</div>
			<form>
				<div class="form-group">
					<input type="text" class="form-control" id="userid" name="userid"
						required> <label for="userid">User ID<span>*</span></label>
				</div>
				<div class="form-group">
					<input class="form-control" type="password" id="password"
						name="password" required> <label for="password">Password<span>*</span></label>
				</div>
				<!-- <div class="form-group">
					<div class="custom-control custom-checkbox">
						<label class="custom-control-label" for="rememberMe">Remember
							Me</label><input type="checkbox" class="custom-control-input "
							id="rememberMe" required>
					</div>
				</div> -->

				<button type="submit" formaction="login-verification"
					class="btn-submit">Login</button>
			</form>
			<p class="text-danger text-center msg">${param.msg}</p>
			<p class="text-center text-primary">
				<a href="#">Forgot Password?</a>
			</p>
		</div>
		<h2>${savemsg}</h2>
	</div>
</body>
</html>
