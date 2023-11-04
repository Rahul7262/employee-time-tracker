<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background:
		url('https://www.forbes.com/advisor/wp-content/uploads/2022/11/Image-16.jpg')
		no-repeat center center fixed;
	background-size: cover;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.card {
	background-color: rgba(255, 255, 255, 0.7); border-radius : 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
	padding: 20px;
	text-align: center;
	border-radius: 10px;
}

h1 {
	color: #333;
}

.options {
	display: flex;
	justify-content: center;
	gap: 20px;
	margin-top: 30px;
}

.option {
	background-color: #007bff;
	color: #fff;
	padding: 20px 30px;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.option:hover {
	background-color: #0056b3;
}

@media screen and (max-width: 600px) {
	.options {
		flex-direction: column;
		align-items: center;
	}
	.option {
		margin-top: 10px;
	}
}

button {
	border: none;
}
</style>
</head>
<body>
	<div class="card">
		<h1>Welcome to Our Website</h1>
		<p>Please select your role:</p>
		<div class="options">
			<form>
				<button type="submit" formaction="admin/" class="option">Admin</button>
				<button type="submit" formaction="user/" class="option">User</button>
			</form>
		</div>
	</div>
</body>
</html>
