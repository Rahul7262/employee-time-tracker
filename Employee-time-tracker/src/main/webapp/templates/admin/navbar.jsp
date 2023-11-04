<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<style>
body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  background-color: gray;
  position: relative; /* Added to position the navbar at the top */
}

.navbar {
  background-color: transparent;
  border: none;
  position: absolute; /* Added to position the navbar at the top */
  top: 0; /* Added to position the navbar at the top */
  width: 100%; /* Added to make the navbar full-width */
}

.navbar-toggler-icon {
  background-color: #fff;
}

.navbar-toggler {
  border: none;
}

.navbar-brand {
  font-size: 24px;
  font-weight: bold;
  color: #fff;
}

.navbar-collapse {
  justify-content: flex-end;
}

.navbar-nav {
  margin-right: 20px;
}

.nav-item {
  padding: 0 10px;
}

.nav-link {
  color: #fff;
  font-weight: bold;
  transition: color 0.3s;
  border-radius: 30px;
}

.nav-link:hover {
  color: #007bff;
  background-color: #fff;
}

.navbar-text {
  color: #28a745;
  font-weight: bold;
  margin-left: 20px;
}

/* Custom styles for responsiveness */
@media (max-width: 768px) {
  .navbar-collapse {
    background-color: #333;
    border-top: 1px solid #fff;
  }

  .navbar-nav {
    flex-direction: column;
  }

  .nav-item {
    padding: 10px 0;
  }
}
</style>

<nav class="navbar navbar-expand-lg">
  <span class="navbar-brand" >Welcome, ${sessionScope.admin}</span>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active"><a class="nav-link" href="/Employee-time-tracker/admin/home">Home</a></li>
      <li class="nav-item"><a class="nav-link" href="/Employee-time-tracker/admin/dashboard">Dashboard</a></li>
      <li class="nav-item"><a class="nav-link" href="/Employee-time-tracker/admin/timeout/timeout-view">Edit Time Out</a></li>
      <li class="nav-item"><a class="nav-link" href="/Employee-time-tracker/admin/timein/timein-view">Edit Time In</a></li>
      <li class="nav-item"><a class="nav-link" href="/Employee-time-tracker/admin/user/dashboard">Manage Users</a></li>
      <li class="nav-item"><a class="nav-link" href="/Employee-time-tracker/admin/logout">Logout</a></li>
    </ul>
    
  </div>
</nav>
</body>
</html>
