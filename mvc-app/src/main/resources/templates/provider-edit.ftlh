<!DOCTYPE html>
<html>
<head>
    <title>Edit Provider</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">
    <style>
        body { margin:0; font-family:'Fredoka', cursive; background:#1e2129; color:white; }
        .page { max-width:700px; margin:40px auto; padding:0 20px; }
        .panel { background:#2a2f3a; border-radius:18px; padding:20px; box-shadow:0 10px 30px rgba(0,0,0,.35); margin-bottom:20px; }
        input { width:100%; box-sizing:border-box; padding:12px; border-radius:12px; border:1px solid #3a4150; background:#1e2129; color:white; margin-bottom:15px; }
        .btn { background:#5f91c6; color:white; padding:10px 20px; border-radius:25px; border:none; text-decoration:none; font-weight:700; }
    </style>
</head>
<body>
<div class="page">
    <div class="panel">
        <h1>Edit Provider Account</h1>

        <form action="/ui/providers/update/${provider.providerId}" method="post">
            <input type="text" name="username" value="${provider.username!""}" required>
            <input type="email" name="email" value="${provider.email!""}" required>
            <input type="password" name="password" value="${provider.password!""}" required>
            <input type="text" name="certifications" value="${provider.certifications!""}" placeholder="Certifications">
            <input type="text" name="exerciseType" value="${provider.exerciseType!""}" placeholder="Exercise Type">

            <button class="btn" type="submit">Save Changes</button>
            <a href="/ui/providers/dashboard/${provider.providerId}" class="btn">Back</a>
        </form>
    </div>
</div>
</body>
</html>