<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Register Page</title>
    <link rel="stylesheet" href="../../../CSS/bootstrap.jsp">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light background color */
            color: #333; /* Dark text color */
        }

        .container {
            max-width: 600px; /* Reduced maximum width */
            margin: 0 auto;
            padding: 20px;
        }

        .register-form {
            background-color: #fff; /* White background */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            text-align: left;
            margin-top: 20px;
        }

        h2 {
            color: #007bff;
            font-weight: bold;
            text-align: center; /* Center-align the heading */
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            color: #007bff; /* Blue label text color */
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            background-color: #f4f4f4; /* Light gray background for input fields */
            border: 1px solid #ddd; /* Light gray border */
            border-radius: 5px;
            color: #333;
            outline: none;
            font-size: 16px;
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
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 20px;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }

        .btn-home {
            background-color: transparent;
            color: #007bff;
            padding: 12px;
            border: none;
            cursor: pointer;
            font-weight: normal;
            text-align: center;
            text-decoration: none; /* Remove underlines from links */
            display: block; /* Make it a block-level element */
            margin-top: 20px;
            text-align: center; /* Center-align the link */
        }

        .btn-home:hover {
            color: #0056b3;
        }

        /* Add focus styles for input fields */

        /* Style the div containing the message */
        .message-container {
            background-color: #333;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
            margin-bottom: 20px;
            text-align: center;
            font-family: Arial, sans-serif;
            color: #fff;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>${param.updatemsg}</h2>
        <div class="register-form">
            <div class="message-container">
                <!-- Container for the message -->
                <p class="message-text">Welcome! Edit the form below</p>
            </div>
            <form action="update-record">
                <div class="form-group">
                    <label for="timeid">Time ID<span>*</span></label>
                    <input type="text" class="form-control" id="timeid" name="timeid" value="${tmsg.timeid}" readonly="readonly" required>
                </div>
                <div class="form-group">
                    <label for="eid">EID<span>*</span></label>
                    <input class="form-control" type="text" id="eid" name="eid" value="${tmsg.eid}" readonly="readonly" required>
                </div>
                <div class="form-group">
                    <label for="outtime">Out Time<span>*</span></label>
                    <input class="form-control" type="text" id="outtime" name="outtime" value="${tmsg.outtime}" readonly="readonly" required>
                </div>
                <div class="form-group">
                    <label for="intime">In Time<span>*</span></label>
                    <input class="form-control" type="text" id="intime" name="intime" value="${tmsg.intime}" required>
                </div>
                <div class="form-group">
                    <label for="date">Date<span>*</span></label>
                    <input class="form-control" type="text" id="date" name="date" value="${tmsg.date}" readonly="readonly" required>
                </div>
                <button type="submit" formaction="update-in-time" class="btn-submit">Update In Time</button>
            </form>
            <a href='/Employee-time-tracker/admin/home' class="btn-home">Home</a>
        </div>
    </div>
</body>

</html>



<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Register Page</title>
    <link rel="stylesheet" href="../../../CSS/bootstrap.jsp">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light background color */
            color: #333; /* Dark text color */
        }

        .container {
            max-width: 1000px; /* Set a maximum width for the container */
            margin: 0 auto;
            padding: 20px;
        }

        .register-form {
            background-color: #fff; /* White background */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            text-align: left;
            margin-top: 20px;
        }

        h2 {
            color: #007bff;
            font-weight: bold;
            text-align: center; /* Center-align the heading */
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            color: #007bff; /* Blue label text color */
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            background-color: #f4f4f4; /* Light gray background for input fields */
            border: 1px solid #ddd; /* Light gray border */
            border-radius: 5px;
            color: #333;
            outline: none;
            font-size: 16px;
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
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 20px;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }

        .btn-home {
            background-color: transparent;
            color: #007bff;
            padding: 12px;
            border: none;
            cursor: pointer;
            font-weight: normal;
            text-align: center;
            text-decoration: none; /* Remove underlines from links */
            display: block; /* Make it a block-level element */
            margin-top: 20px;
            text-align: center; /* Center-align the link */
        }

        .btn-home:hover {
            color: #0056b3;
        }

        /* Add focus styles for input fields */

        /* Style the div containing the message */
        .message-container {
            background-color: #333;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
            margin-bottom: 20px;
            text-align: center;
            font-family: Arial, sans-serif;
            color: #fff;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>${param.updatemsg}</h2>
        <div class="register-form">
            <div class="message-container">
                <!-- Container for the message -->
                <p class="message-text">Welcome! Edit the form below</p>
            </div>
            <form action="update-record">
                <div class="form-group">
                    <label for="timeid">Time ID<span>*</span></label>
                    <input type="text" class="form-control" id="timeid" name="timeid" value="${tmsg.timeid}" readonly="readonly" required>
                </div>
                <div class="form-group">
                    <label for="eid">EID<span>*</span></label>
                    <input class="form-control" type="text" id="eid" name="eid" value="${tmsg.eid}" readonly="readonly" required>
                </div>
                <div class="form-group">
                    <label for="outtime">Out Time<span>*</span></label>
                    <input class="form-control" type="text" id="outtime" name="outtime" value="${tmsg.outtime}" readonly="readonly" required>
                </div>
                <div class="form-group">
                    <label for="intime">In Time<span>*</span></label>
                    <input class="form-control" type="text" id="intime" name="intime" value="${tmsg.intime}" required>
                </div>
                <div class="form-group">
                    <label for="date">Date<span>*</span></label>
                    <input class="form-control" type="date" id="date" name="date" value="${tmsg.date}" readonly="readonly" required>
                </div>
                <button type="submit" formaction="update-in-time" class="btn-submit">Update In Time</button>
            </form>
            <a href='/Employee-time-tracker/admin/home' class="btn-home">Home</a>
        </div>
    </div>
</body>

</html>
 --%>