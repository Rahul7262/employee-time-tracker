<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Time Tracker</title>
<%@include file="../../CSS/bootstrap.jsp"%>
<%@include file="../user/navbar.jsp"%>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background: #253259;
	color: #333;
}

.jumbotron {
	background-color: rgba(255, 255, 255, 0.8);
	/* Add transparency to the jumbotron */
	color: #333;
	padding: 20px;
	border-radius: 10px;
}

.container {
	text-align: center;
	padding: 100px;
}

h1 {
	font-size: 36px;
	font-weight: bolder;
}

p {
	font-size: 18px;
}
</style>
</head>
<body onload="makeActive('home')">
	<div class="container">
	
		<div class="jumbotron">
			<h1>Welcome to Employee Time Tracker</h1>
			<p>Efficiently manage employee time tracking with our powerful
				system.</p>
		</div>
	</div>
	
	
	
</body>
</html>



