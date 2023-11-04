

 <!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://via.placeholder.com/1925x1080'); /* Placeholder image URL */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-blur: 5px;
        }

        .search-container {
            text-align: center;
            margin-top: 100px;
            color: white;
        }

        .search-box {
            width: 100%;
            max-width: 500px;
            padding: 15px;
            margin: 0 auto;
            display: block;
            border: none;
            border-radius: 25px;
            background-color: rgba(255, 255, 255, 0.2);
            color: black;
            font-size: 18px;
            font-weight: bold;
        }

        .search-button {
            background-color: #4CAF50;
            border: none;
            border-radius: 25px;
            color: white;
            padding: 15px 30px;
            font-size: 18px;
            cursor: pointer;
            width: 200px;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .search-button:hover {
            background-color: #45a049;
        }

        .search-box:focus {
            outline: none;
            background-color: white;
        }

        .search-container h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }
          /* Add styles for the home button */
        .home-button {
            background-color: #0074cc;
            border: none;
            border-radius: 25px;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none; /* Remove underline */
            margin-top: 10px;
            display: inline-block; /* Display as inline to align with search button */
            transition: background-color 0.3s;
        }

        .home-button:hover {
            background-color: #005aa6;
        }
    </style>
</head>

<body>

    <div class="search-container">
        <h2>${param.updatemsg}</h2>
        <form action="edit-time-dashboard" method="post">
            <input type="text" id="eid" name="eid" class="search-box" placeholder="Enter Employee ID...">
            <button type="submit" class="search-button">Search TimeInfo</button>
        </form>
        <!-- Home button linking to your home page -->
        <a href="/Employee-time-tracker/admin/home" class="home-button">Home</a>
    </div>

</body>

</html>
