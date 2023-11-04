

<!DOCTYPE html>
<html>
<head>
<%@include file="../../CSS/bootstrap.jsp"%>
</head>
<body>
	<style>
body {
	background-image: linear-gradient(120deg, #2980b9, #8e44ad);
	background-size: cover;
	/*  background-repeat: no-repeat; */
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

.login {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
	max-width: 400px;
	margin: 0 auto;
	margin-top: 1px;
}

.form-group {
	margin-bottom: 20px;
}

.submit {
	width: 100%;
	background-color: #3498db;
	color: #fff;
	border: none;
	padding: 10px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.submit:hover {
	background-color: #2980b9;
}

h1 {
	margin-top: 85px;
	font-family: serif;
	font-weight: bolder;
}

</style>

	<h1 class="text-center text-white">Admin Login</h1>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="login p-4">
					<form>
						<div class="form-group">
							<label for="adminid">ID</label> <input type="text"
								class="form-control" id="adminid" name="adminid"
								placeholder="Enter ID" required>
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="Password" required>
						</div>
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="rememberMe" required> <label class="custom-control-label"
									for="rememberMe">Remember Me</label>
							</div>
						</div>
						<div class="form-group">
							<button type="submit" formaction="login-admin" class="submit">Login</button>
						</div>
					</form>
					<p class="text-danger text-center">${log}</p>
					<p class="text-center">
						<a href="#">Forgot Password?</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!-- Add JavaScript/jQuery for interactivity -->

</body>
</html>


