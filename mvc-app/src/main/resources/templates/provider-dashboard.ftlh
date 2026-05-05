<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Instructor Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body { margin:0; font-family:'Fredoka', cursive; background:#1e2129; color:white; }
        .page { max-width:900px; margin:40px auto; padding:0 20px; }
        .panel { background:#2a2f3a; border-radius:18px; padding:20px; box-shadow:0 10px 30px rgba(0,0,0,.35); margin-bottom:20px; }
        .card { background:#1e2129; border:1px solid #3a4150; border-radius:16px; padding:18px; margin-top:15px; }
        .btn { background:#5f91c6; color:white; padding:10px 20px; text-decoration:none; display:inline-block; margin-top:15px; margin-right:8px; border-radius:25px; font-weight:700; border:none; cursor:pointer; }
        .muted { color:#b8c0d0; font-size:.9rem; }
        form { display:inline; }
    </style>
</head>

<body>
<div class="page">

    <div class="panel">
        <h1>Instructor Dashboard</h1>
        <p class="muted">Welcome, ${provider.username!"Instructor"}.</p>

        <a href="/ui/provider-courses?providerId=${provider.providerId}" class="btn">Manage Courses</a>
        <a href="/ui/review-replies" class="btn">Review Replies</a>
        <a href="/ui/providers?providerId=${provider.providerId}" class="btn">All Providers</a>
        <a href="/" class="btn">Home</a>
    </div>

    <div class="panel">
        <h2>Your Instructor Info</h2>

        <div class="card">
            <p><strong>Provider ID:</strong> ${provider.providerId}</p>
            <p><strong>Username:</strong> ${provider.username!"Not listed"}</p>
            <p><strong>Email:</strong> ${provider.email!"Not listed"}</p>
            <p><strong>Certifications:</strong> ${provider.certifications!"Not listed"}</p>
            <p><strong>Exercise Type:</strong> ${provider.exerciseType!"Not listed"}</p>

            <a href="/ui/providers/edit/${provider.providerId}" class="btn">Edit Account</a>

            <form action="/ui/providers/delete/${provider.providerId}" method="post">
                <button class="btn" type="submit" onclick="return confirm('Delete this instructor account?');">
                    Delete Account
                </button>
            </form>
        </div>
    </div>

</div>
</body>
</html>
