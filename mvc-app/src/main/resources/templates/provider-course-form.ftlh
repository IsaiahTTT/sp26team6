<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Course</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body {
            background-color: #1e2129;
            font-family: 'Fredoka', cursive;
            color: white;
            display: flex;
            justify-content: center;
            padding-top: 80px;
        }

        .container {
            background: #2a2f3a;
            padding: 30px;
            border-radius: 20px;
            width: 500px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.4);
        }

        input {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            margin-bottom: 20px;
            border-radius: 12px;
            border: none;
            background: #1e2129;
            color: white;
        }

        button {
            width: 100%;
            padding: 14px;
            border-radius: 30px;
            border: none;
            background: #52affc;
            color: white;
            font-size: 1rem;
            cursor: pointer;
        }

        a {
            color: #52affc;
            text-decoration: none;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>Create Course</h2>

    <form action="/ui/provider-courses" method="post">
        <input type="text" name="title" placeholder="Course Title" required>

        <input type="number" name="providerId" placeholder="Provider ID" required>

        <button type="submit">Create Course</button>
    </form>

    <br>
    <a href="/ui/provider-courses">Back</a>
</div>

</body>
</html>