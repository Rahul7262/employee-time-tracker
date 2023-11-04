<!DOCTYPE html>
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
    background-color: rgba(255, 255, 255, 0.1); /* Slightly transparent white */
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    text-align: left; /* Left-align text within the form */
    margin-top: 20px; /* Space above the form */
    margin-bottom: 10px; /* Space below the form */
}

h1 {
    color: #007bff;
    font-weight: bold;
}

.form-group {
    position: relative; /* Relative positioning for label animation */
    margin-bottom: 30px;
}

label {
    color: blue;
    font-weight: bolder;
    position: absolute;
    top: 0;
    left: 10px;
    transition: all 0.3s; /* Label animation transition */
}

input[type="text"], input[type="password"], input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-top:15px;
    background-color: transparent; /* Remove background color */
    border: none; /* Remove borders */
    border-bottom: 1px solid #fff; /* Add bottom border */
    border-radius: 0; /* Remove border radius */
    color: #fff;
    outline: none; /* Remove input field outline */
    text-align: left; /* Right-align text within number input */
    font-size:19px;
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
   
}


/* Add focus styles for input fields */
.form-group input:focus + label {
    top: -20px; /* Adjust label position */
    font-size: 12px;
    color: #fff; /* Change label color on focus */
}

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
        <div class="message-container"> <!-- Container for the message -->
            <p class="message-text">Welcome! Fill out the form below</p>
        </div>
            <form>
                <div class="form-group">
                    <input type="text" class="form-control" id="userid" name="userid" required>
                    <label for="userid">User ID<span>*</span></label>
                </div>
                <div class="form-group">
                    <input class="form-control" type="password" id="password" name="password" required>
                    <label for="password">Password<span>*</span></label>
                </div>
                <div class="form-group">
                    <input class="form-control" type="text" id="name" name="name" required>
                    <label for="name">Name<span>*</span></label>
                </div>
                <div class="form-group">
                    <input class="form-control" type="number" id="phone" name="phone" required>
                    <label for="phone">Phone Number<span>*</span></label>
                </div>
                <button type="submit" formaction="save-user" class="btn-submit">Submit</button>
            </form>
            <a href='/Employee-time-tracker/admin/home' class="btn-home">Home</a> <!-- Adjusted position -->
        </div>
        <h2>${savemsg}</h2>
    </div>
</body>
</html>
