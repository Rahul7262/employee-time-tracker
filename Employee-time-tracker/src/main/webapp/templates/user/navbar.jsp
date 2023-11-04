<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Your Project Navbar</title>
<style>
/* Navbar Styles */
.navbar {
	background: linear-gradient(45deg, #007BFF, #00BFFF);
	padding: 15px 0;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.navbar .nav-item {
	margin-right: 20px;
}

.navbar .nav-link {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
	padding: 10px 20px;
	border-radius: 20px;
	transition: background-color 0.3s, transform 0.2s;
}

.navbar .nav-link:hover {
	background-color: #0056b3;
	transform: scale(1.05);
}

#admin {
	text-align: right;
}

.navbar-brand {
	font-size: 24px;
	font-weight: bold;
	color: black;
}
</style>


</head>
<body>
	<nav class="navbar">
		<span class="navbar-brand">Welcome, ${sessionScope.user}</span>
		<ul class="nav nav-pills mx-auto">
			<li class="nav-item"><a id="home1" class="nav-link lau"
				href="/Employee-time-tracker/user/home">Home</a></li>
			<li class="nav-item"><a id="out" class="nav-link lau"
				href="/Employee-time-tracker/timeout/list">Time Out</a></li>
			<li class="nav-item"><a id="in" class="nav-link lau"
				href="/Employee-time-tracker/timein/list">Time In</a></li>
			<li class="nav-item"><a id="date" class="nav-link lau"
				href="/Employee-time-tracker/report/date-option">Date wise
					report</a></li>
			<li class="nav-item"><a id="emp" class="nav-link lau"
				href="/Employee-time-tracker/report/employee-list">Employee wise
					report</a></li>
			<li class="nav-item"><a id="emp" class="nav-link lau"
				href="/Employee-time-tracker/user/logoutuser">Logout</a></li>

		</ul>
		<span class="navbar-brand" id="liveTime"></span>
	</nav>
	<script>
		function displayLiveTime() {
			var timeElement = document.getElementById("liveTime");
			var now = new Date();
			var hours = now.getHours();
			var minutes = now.getMinutes();
			var seconds = now.getSeconds();
			timeElement.textContent = (hours < 10 ? "0" + hours : hours) + ":"
					+ (minutes < 10 ? "0" + minutes : minutes) + ":"
					+ (seconds < 10 ? "0" + seconds : seconds);
		}

		// Call the function every second
		setInterval(displayLiveTime, 1000);
	</script>

</body>
</html>
