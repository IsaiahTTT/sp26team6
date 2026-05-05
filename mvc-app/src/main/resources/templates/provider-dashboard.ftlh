<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Dashboard</title>

    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        * { box-sizing: border-box; }

        body {
            margin: 0;
            font-family: 'Fredoka', cursive;
            background-color: #1e2129;
            color: white;
        }

        /* LOGO */
        .top-left-logo {
            position: absolute;
            top: 20px;
            left: 20px;
        }

        .top-left-logo img {
            width: 90px;
            cursor: pointer;
        }

        /* PAGE */
        .page {
            max-width: 1000px;
            margin: 100px auto 40px;
            padding: 0 20px;
        }

        .panel {
            background: #2a2f3a;
            border-radius: 18px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .muted {
            color: #b8c0d0;
            font-size: 0.9rem;
        }

        .btn {
            background-color: #5f91c6;
            color: white;
            padding: 12px 20px;
            border-radius: 25px;
            text-decoration: none;
            display: inline-block;
            margin-top: 10px;
            margin-right: 10px;
            font-weight: 700;
        }

        .btn:hover {
            filter: brightness(1.05);
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 20px;
        }

        .card {
            background: #1e2129;
            border: 1px solid #3a4150;
            border-radius: 16px;
            padding: 18px;
        }

        .card h3 {
            margin-top: 0;
        }

        @media (max-width: 700px) {
            .grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

<!-- LOGO -->
<div class="top-left-logo">
    <a href="/">
        <img src="/images/ife.png" alt="Logo">
    </a>
</div>

<div class="page">

    <!-- HEADER -->
    <div class="panel">
        <h1>${provider.username!"Instructor"} Dashboard</h1>

        <p class="muted">
            Provider ID: ${provider.providerId}
        </p>

        <p>
            <strong>Certifications:</strong>
            ${provider.certifications!"Not listed"}
        </p>

        <p>
            <strong>Exercise Type:</strong>
            ${provider.exerciseType!"Not listed"}
        </p>

        <!-- 🔥 FIX: ALL PROVIDERS BUTTON -->
        <a href="/ui/providers?providerId=${provider.providerId}" class="btn">
            All Providers
        </a>
    </div>

    <!-- ACTION CARDS -->
    <div class="panel">
        <h2>Manage Your Content</h2>

        <div class="grid">

            <div class="card">
                <h3>Manage Courses</h3>
                <p class="muted">
                    Create, edit, or delete your fitness courses.
                </p>
                <a href="/ui/provider-courses?providerId=${provider.providerId}" class="btn">
                    Go to Courses
                </a>
            </div>

            <div class="card">
                <h3>View Reviews</h3>
                <p class="muted">
                    See what customers are saying about your courses.
                </p>
                <a href="/ui/review-replies?providerId=${provider.providerId}" class="btn">
                    View Reviews
                </a>
            </div>

            <div class="card">
                <h3>Edit Profile</h3>
                <p class="muted">
                    Update your certifications and training specialties.
                </p>
                <a href="/ui/providers/edit/${provider.providerId}" class="btn">
                    Edit Profile
                </a>
            </div>

        </div>
    </div>

</div>

</body>
</html>
