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
            background-color: #ffffff;
            min-height: 100vh;
            margin: 0;
            display: flex;
            justify-content: flex-start;
            align-items: center;
            flex-direction: column;
            font-family: 'Fredoka', cursive;
            padding-top: 10vh;
        }

        h2 {
            font-size: 6rem;
            margin-bottom: 30px;
            color: #52affc;
        }

        .homepage-btn {
            padding: 15px;
            border-radius: 40px;
            border: none;
            height: 65px;
            width: 270px;
            background-color: #52affc;
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 30px;
            text-decoration: none;
        }

        .homepage-btn:hover {
            background-color: #123c5e;
            color: #ffffff;
            box-shadow: 0 0 12px rgba(168, 168, 168, 0.6);
        }

        .login-btn {
            padding: 15px;
            border-radius: 40px;
            height: 65px;
            width: 270px;
            background-color: #dbe4eb;
            color: #5f91c6;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 25px;
            border: #123c5e 3.4px solid;
            text-decoration: none;
        }

        .login-btn:hover {
            background-color: #c1d1dd;
            color: #5f91c6;
            border: #123c5e 3.4px solid;
        }

        .instructor-btn {
            padding: 15px;
            border-radius: 40px;
            height: 65px;
            width: 270px;
            background-color: #1e2129;
            color: #52affc;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 25px;
            border: #52affc 3.4px solid;
            text-decoration: none;
        }

        .instructor-btn:hover {
            background-color: #2a2f3a;
            color: #ffffff;
            box-shadow: 0 0 12px rgba(168, 168, 168, 0.6);
        }

        .subtitle {
            font-size: 2rem;
            color: #424447;
            margin-bottom: 50px;
            text-align: center;
        }
    </style>
</head>

<body>

    <h2>
        <img src="/images/ife.png" alt="Logo" width="400">
    </h2>

    <p class="subtitle">
        An engaging and interactive platform for personal development!
    </p>

    <a href="/signup" class="homepage-btn">Sign up</a>
    <a href="/login" class="login-btn">I ALREADY HAVE AN ACCOUNT</a>
    <a href="/provider-login" class="instructor-btn">Instructor</a>

</body>
</html>
