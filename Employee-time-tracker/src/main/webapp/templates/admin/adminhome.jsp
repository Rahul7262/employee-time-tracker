
<%@include file="../../CSS/bootstrap.jsp"%>
<%@include file="navbar.jsp"%>
<script>
	function getRandomColor() {
		const letters = "4560123789ABCDEF";
		let color = "#";
		for (let i = 0; i < 6; i++) {
			color += letters[Math.floor(Math.random() * 16)];
		}
		return color;
	}
	// Change the background color on page load
	$(document).ready(function() {
		const randomColor = getRandomColor();
		$("body").css("background-color", randomColor);
	});
</script>


<body onload="makeActive('home')">

	<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #e9e9e9;
	/* Change this color to your desired background color */
}

.jumbotron {
	background-color: #007BFF;
	color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); /* Add shadow */
}

.container {
	text-align: center;
	padding: 100px;
	display: flex;
	justify-content: center; /* Center content horizontally */
	align-items: center; /* Center content vertically */
	height: 100vh; /* Make the container full height of the viewport */
	flex-direction: column; /* Align content in a column */
}

h1 {
	color: white;
	font-size: 36px;
	font-weight: bolder;
}

p {
	color: #333;
	font-size: 18px;
}
</style>
	<div class="container">
		<div class="jumbotron">
			<h1>Welcome to Employee Time Tracker</h1>
			<p>Efficiently manage employee time tracking with our powerful
				system.</p>
		</div>
	</div>
</body>

</html>


</html>
