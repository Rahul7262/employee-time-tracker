<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #2c3e50; /* Dark background color */
        }

        .date-selector {
            text-align: center;
            margin-top: 50px;
        }

        .select-label {
            font-size: 20px;
            margin-right: 10px;
            color: #333;
        }

        .date-input {
            width: 200px;
            padding: 10px;
            font-size: 16px;
            border: 2px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            background-color: #0074cc;
            border: none;
            border-radius: 25px;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #005aa6;
        }

        .form-container {
            display: inline-block;
            margin: 10px;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0px 4px 8px 0px rgba(0,0,0,0.2);
            border-radius: 10px;
        }

        h2 {
            color: orange;
        }

        .home-btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .home-btn {
            background-color: #0074cc;
            border: none;
            border-radius: 25px;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .home-btn:hover {
            background-color: #005aa6;
        }
    </style>
</head>
<body>

<div class="date-selector">
    <h2>Date Selection Options</h2>

    <div class="form-container">
        <form action="current-date-report" method="post">
            <label class="select-label">1. Current Date:</label>
            <button type="submit" class="btn" name="currentDate">Select Current Date</button>
        </form>
    </div>

    <div class="form-container">
        <form action="enter-date-report" method="post">
            <label class="select-label">2. Select Date:</label>
            <input type="date" class="date-input" name="selectedDate" max="${cdate }" required="required">
            <button type="submit" class="btn" name="getSelectedDate">Get Selected Date</button>
        </form>
    </div>

    <div class="form-container">
        <form action="enter-between-date-report" method="post">
            <label class="select-label">3. Date Range:</label>
            <input type="date" class="date-input" name="startDate" max="${cdate }" placeholder="Start Date" required="required">
            <input type="date" class="date-input" name="endDate" max="${cdate }" placeholder="End Date" required="required">
            <button type="submit" class="btn" name="getDateRange">Get Date Range</button>
        </form>
    </div>

    <!-- Home Button -->
    <div class="home-btn-container">
        <a class="home-btn" href='/Employee-time-tracker/user/home'>Home</a>
    </div>
</div>

</body>
</html>
