<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Instructor Sign Up</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body {
            background-color: #1e2129;
            margin: 0;
            display: flex;
            align-items: center;
            flex-direction: column;
            font-family: 'Fredoka', cursive;
            padding-top: 10vh;
            color: white;
        }

        h2 { font-size: 3rem; margin-bottom: 30px; }

        .signup-form {
            display: flex;
            flex-direction: column;
            gap: 18px;
            width: 360px;
        }

        .signup-input {
            box-sizing: border-box;
            width: 100%;
            padding: 15px 20px;
            border-radius: 40px;
            border: 2px solid #33363a;
            background-color: #1f2122;
            color: white;
            outline: none;
        }

        .signup-btn {
            padding: 15px;
            border-radius: 40px;
            border: none;
            background-color: #52affc;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }

        .login-link { margin-top: 25px; color: #5f91c6; text-decoration: none; }

        .top-left { position: absolute; top: 20px; left: 130px; }
    </style>
</head>

<body>
    <div class="top-left">
        <a href="/"><img src="/images/ife.png" alt="Logo" width="90"></a>
    </div>

    <h2>Create Instructor Profile</h2>

    <form class="signup-form" action="/provider-signup" method="post">
        <input type="text" name="username" placeholder="Enter instructor username" class="signup-input" required>
        <input type="email" name="email" placeholder="Enter instructor email" class="signup-input" required>
        <input type="password" name="password" placeholder="Create password" class="signup-input" required>
        <input type="text" name="certifications" placeholder="Certifications ex: NASM CPT" class="signup-input">
        <input type="text" name="exerciseType" placeholder="Exercise type ex: Cardio, Weightlifting" class="signup-input">

        <button type="submit" class="signup-btn">Create Instructor Account</button>
    </form>

    <a href="/provider-login" class="login-link">Already have an instructor account?</a>
</body>
</html>
