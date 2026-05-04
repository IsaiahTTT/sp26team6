<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>lifeLvling - Providers</title>

    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Fredoka', cursive;
            background-color: #1e2129;
            color: white;
        }

        /* SAME PAGE STRUCTURE AS REVIEW */
        .page {
            max-width: 900px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .panel {
            background: #2a2f3a;
            border-radius: 18px;
            padding: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.35);
            margin-bottom: 20px;
            width: 100%;
        }

        h1 {
            margin: 0 0 10px;
        }

        .muted {
            color: #b8c0d0;
            font-size: 0.9rem;
        }

        .btn {
            background-color: #5f91c6;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            display: inline-block;
            margin-top: 15px;
            margin-right: 10px;
            border-radius: 25px;
            font-weight: 700;
        }

        .btn:hover {
            filter: brightness(1.05);
        }

        /* MATCH CARD STYLE FROM REVIEW */
        .provider-card {
            background: #1e2129;
            border: 1px solid #3a4150;
            border-radius: 16px;
            padding: 14px;
            margin-top: 12px;
        }

        .top-right {
            position: absolute;
            top: 20px;
            right: 130px;
        }

        .return-btn {
            padding: 10px 18px;
            border-radius: 25px;
            background-color: #1e2129;
            color: #5f91c6;
            border: 2px solid #33363a;
            text-decoration: none;
        }
    </style>
</head>

<body>

<div class="page">

    <!-- HEADER PANEL -->
    <div class="panel">
        <div class="top-right">
            <a href="/" class="return-btn">Home</a>
        </div>

        <h1>Provider Dashboard</h1>
        <p class="muted">Manage instructors, courses, and customer feedback.</p>

        <a href="/ui/providers/add" class="btn">Add Provider</a>
        <a href="/ui/provider-courses" class="btn">Courses</a>
        <a href="/ui/review-replies" class="btn">Review Replies</a>
    </div>

    <!-- PROVIDER LIST -->
    <div class="panel">
        <h2 style="margin-top:0;">All Providers</h2>

        <#if providers?has_content>
            <#list providers as p>
                <div class="provider-card">
                    <h4 style="margin:0;">${p.username}</h4>
                    <p class="muted">${p.email}</p>
                </div>
            </#list>
        <#else>
            <p class="muted">No providers created yet.</p>
        </#if>
    </div>

</div>

</body>
</html>