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
            margin-left: 330px;
            color: #ffffff;
            align-items: center;
        }

        h2 {
            font-size: 3rem;
            margin-left: 330px;
            color: #ffffff;
            align-items: center;
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
            /* Remove default bullet points */
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
            /* Change background on hover */
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

        .right-sidebar-2 {
            width: 350px;
            position: fixed;
            top: 350px;
            right: 40px;

            background-color: #2a2f3a;
            color: white;
            padding: 20px;

            border-radius: 25px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
        }

        .right-sidebar ul {
            list-style-type: none;
            padding: 0;
            margin-left: 0;
        }

        .content {
            margin-left: 160px;
            padding: 40px;
            max-width: 900px;
        }

        .course-title {
            color: white;
            margin-bottom: 30px;
        }

        .course-section {
            background-color: #9199ac;
            padding: 25px;
            border-radius: 15px;
            margin-bottom: 25px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
        }

        .course-section h4 {
            margin-bottom: 15px;
            color: #ffffff;
        }

        .course-section ul {
            padding-left: 20px;
        }

        .module {
            background-color: #656d81;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 10px;
            transition: 0.3s ease;
        }

        .module:hover {
            background-color: #e8ebf3;
            transform: translateY(-3px);
        }
    </style>
</head>

<body>
    <aside class="sidebar">
        <ul>
            <li><a href="homepage.html"><img src="logo/ife.png" alt="Logo" width="60"></div>
            </li>
            <li><a href="dashboard.html">Dashboard</a></li>
            <li><a href="searchpage.html">Search</a></li>
            <li><a href="#">Progress</a></li>
            <li><a href="Review.html">Review</a></li>
            <li><a href="#">Add/Drop</a></li>
        </ul>
    </aside>

    <main class="content">
        <h2 class="course-title">Cardio Routine</h2>

        <div class="course-section">
            <h4>Welcome</h4>
            <p>
                Welcome to the Cardio Routine course! This program is designed to
                improve endurance, increase heart health, and build consistency.
            </p>
            <p>
                My name is Isaiah, and I will be your guide throughout this course. Whether you're a beginner or looking
                to enhance your cardio fitness, this routine is
                structured to help you achieve your goals. Let's get started on this journey to better health and
                fitness together!
            </p>
            <p>
                Isaiah Turner, itturner@uncg.edu
            </p>
        </div>

        <div class="course-section">
            <h4>Announcements</h4>
            <ul>
                <li>New workout added to Module 2</li>
                <li>Stretching guide uploaded</li>
            </ul>
        </div>

        <div class="course-section">
            <h4>Modules</h4>

            <div class="module">
                <strong>Module 1:</strong> Warm-Up & Mobility
            </div>

            <div class="module">
                <strong>Module 2:</strong> Beginner Cardio Circuit
            </div>

            <div class="module">
                <strong>Module 3:</strong> Endurance Builder
            </div>

        </div>



    </main>

    <aside class="right-sidebar">
        <nav>
            <h4>Due Objectives</h4>
            <ul>
                <li>All finished!</li>
            </ul>
        </nav>
    </aside>

    <aside class="right-sidebar-2">
        <h4>Level 4</h4>
        <ul>
            <li>+ 7 points - Completed Module 1</li>
            <li>+ 3 points - Cardio Circuit ran</li>
        </ul>
    </aside>