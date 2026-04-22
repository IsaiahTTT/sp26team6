<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>lifeLvling</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">




    <style>
        body {
            margin: 0;
            font-family: 'Fredoka', cursive;
            background-color: #1e2129;
        }

        h2 {
            font-size: 3rem;
            margin-left: 590px;
            color: #ffffff;
        }



        .sidebar {
            width: 135px;
            height: 100vh;
            background-color: #1e2129;
            color: white;
            padding-top: 20px;
            position: fixed;
            left: 0;
            top: 0;
            border-right: 2px solid #2f3440;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
            margin-left: 0;
        }

        .sidebar li a {
            display: block;
            color: white;
            padding: 10px 20px;
            text-decoration: none;

            text-align: center;

            margin: 5px 0;
            border-radius: 4px;
            transition: background-color 0.3s;

        }

        .sidebar li a:hover {
            background-color: #555;

        }

        .right-sidebar {
            width: 350px;
            background-color: #2a2f3a;
            color: white;
            padding: 20px;

            position: fixed;
            top: 100px;
            right: 40px;

            border-radius: 25px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
        }

        .right-sidebar ul {
            list-style-type: none;
            padding: 0;
            margin-left: 0;
        }

        .content {
            margin-left: 200px;
            margin-right: 250px;
            padding: 20px;
            flex-grow: 1;

        }

        .card {
            background-color: #1e2129;
            color: #ffffff;
            border: 2px solid #f9eeee;
        }

        .card-header {
            background-color: #1e2129;
            color: #ffffff;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .card-body {
            color: #ddd;
        }
    </style>
</head>


<body>
    <aside class="sidebar">
        <nav>
            <ul>
                <li><a href="homepage.html"><img src="logo/ife.png" alt="Logo" width="60"></div>
                </li>
                <li><a href="profile.html">Profile</a></li>
                <li><a href="searchpage.html">Search</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="#about">About</a></li>
            </ul>
        </nav>
    </aside>
    <aside class="right-sidebar">
        <h4>Due Objectives</h4>
        <ul>
            <li>All finished!</li>

        </ul>
    </aside>

    <div class="content">
        <h2>Dashboard</h2>


        <div class="row mb-3">
            <div class="col-md-3 d-flex justify-content-center">
                <a href="coursepage.html" class="text-decoration-none">
                    <div class="card text-center character-card" style="width: 20rem;">
                        <h5 class="card-header">Cardio Routine</h5>
                        <img src=logo/ife.png class="card-img-top" alt="Cardio">
                        <div class="card-body">
                            <p class="card-text">
                                A low intesity cardio routine to get your heart pumping and blood flowing! This routine
                                is designed to be beginner friendly and can be done at home with no equipment needed.
                            <div class="card text-center character-card" style="width: 18rem;" data-search=" Cardio">
                            </div>
                        </div>
                    </div>
                </a>
            </div>



        </div>





</body>


</html>