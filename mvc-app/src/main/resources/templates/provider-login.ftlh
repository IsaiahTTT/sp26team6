<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body {
            background-color: #1e2129;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: flex-start;
            align-items: center;
            flex-direction: column;
            font-family: 'Fredoka', cursive;
            padding-top: 15vh;
            color: white;
        }

        h2 {
            font-size: 3rem;
            margin-bottom: 30px;
        }

        .login-form {
            display: flex;
            flex-direction: column;
            gap: 20px;
            width: 320px;
        }

        .login-input {
            padding: 15px 20px;
            border-radius: 40px;
            border: 2px solid #33363a;
            background-color: #1f2122;
            color: white;
            outline: none;
        }

        .login-btn {
            padding: 15px;
            border-radius: 40px;
            border: none;
            background-color: #52affc;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }

        .signup-btn {
            padding: 15px;
            border-radius: 40px;
            width: 190px;
            background-color: #1e2129;
            color: #5f91c6;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 25px;
            border: 2px solid #33363a;
            text-decoration: none;
        }

        .top-left {
            position: absolute;
            top: 20px;
            left: 130px;
        }
    </style>
</head>

<body>
    <div class="top-left">
        <a href="/"><img src="/images/ife.png" alt="Logo" width="90"></a>
    </div>

    <h2>Instructor Login</h2>

    <#if error??>
        <p style="color:red;">Invalid provider email or password.</p>
    </#if>

    <form class="login-form" action="/provider-login" method="post">
        <input type="email" name="email" placeholder="Enter provider email" class="login-input" required>
        <input type="password" name="password" placeholder="Enter password" class="login-input" required>
        <button type="submit" class="login-btn">Login as Instructor</button>
    </form>

    <a href="/provider-signup" class="signup-btn">Instructor Sign Up</a>
</body>
</html>
