<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Provider</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body { margin: 0; font-family: 'Fredoka', cursive; background-color: #1e2129; color: white; }
        .page { max-width: 700px; margin: 40px auto; padding: 0 20px; }
        .panel { background: #2a2f3a; border-radius: 18px; padding: 20px; box-shadow: 0 10px 30px rgba(0,0,0,0.35); margin-bottom: 20px; width: 100%; }
        h1 { margin: 0 0 10px; }
        label { display: block; margin: 12px 0 6px; }
        input { width: 100%; padding: 12px; border-radius: 12px; border: 1px solid #3a4150; background: #1e2129; color: white; outline: none; box-sizing: border-box; }
        .btn { background-color: #5f91c6; color: white; padding: 10px 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 1rem; margin-top: 15px; margin-right: 8px; border-radius: 25px; border: none; cursor: pointer; font-weight: 700; }
        .btn:hover { filter: brightness(1.05); }
        .muted { color: #b8c0d0; font-size: 0.9rem; }
    </style>
</head>

<body>
<div class="page">

    <div class="panel">
        <h1>Add Provider</h1>
        <p class="muted">Create an instructor profile for LifeLvling.</p>
    </div>

    <div class="panel">
        <form action="/ui/providers" method="post">
            <label>Username</label>
            <input type="text" name="username" placeholder="Enter provider username" required>

            <label>Email</label>
            <input type="email" name="email" placeholder="Enter provider email" required>

            <button class="btn" type="submit">Create Provider</button>
            <a href="/ui/providers" class="btn">Back</a>
        </form>
    </div>

</div>
</body>
</html>