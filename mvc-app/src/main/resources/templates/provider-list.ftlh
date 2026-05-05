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

        .page {
            max-width: 900px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .panel {
            background: #2a2f3a;
            border-radius: 18px;
            padding: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.35);
            margin-bottom: 20px;
        }

        .provider-card {
            background: #1e2129;
            border: 1px solid #3a4150;
            border-radius: 16px;
            padding: 14px;
            margin-top: 12px;
        }

        .btn {
            background-color: #5f91c6;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            display: inline-block;
            margin-top: 15px;
            margin-right: 8px;
            border-radius: 25px;
            border: none;
            font-weight: 700;
        }

        .muted {
            color: #b8c0d0;
            font-size: 0.9rem;
        }
    </style>
</head>

<body>
<div class="page">

    <div class="panel">
        <h1>All Providers</h1>

        <#if currentProvider??>
            <p class="muted">Viewing providers as ${currentProvider.username!"Instructor"}.</p>
            <a href="/ui/providers/dashboard/${currentProvider.providerId}" class="btn">Back to My Dashboard</a>
        <#else>
            <a href="/" class="btn">Home</a>
        </#if>

        <a href="/ui/providers/add" class="btn">Add Provider</a>
        <a href="/ui/provider-courses<#if providerId??>?providerId=${providerId}</#if>" class="btn">Courses</a>
        <a href="/ui/review-replies<#if providerId??>?providerId=${providerId}</#if>" class="btn">Review Replies</a>
    </div>

    <div class="panel">
        <h2>Providers</h2>

        <#if providers?? && providers?has_content>
            <#list providers as p>
                <div class="provider-card">
                    <h4 style="margin:0;">${p.username!"No username"}</h4>
                    <p class="muted">${p.email!"No email"}</p>
                    <p><strong>Certifications:</strong> ${p.certifications!"Not listed"}</p>
                    <p><strong>Teaches:</strong> ${p.exerciseType!"Not listed"}</p>
                    <a href="/ui/providers/dashboard/${p.providerId}" class="btn">View Instructor Profile</a>
                </div>
            </#list>
        <#else>
            <p class="muted">No providers created yet.</p>
        </#if>
    </div>

</div>
</body>
</html>