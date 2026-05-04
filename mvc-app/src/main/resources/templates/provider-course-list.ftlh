<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Courses</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body {
            background-color: #1e2129;
            font-family: 'Fredoka', cursive;
            color: white;
            padding: 40px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .btn {
            background: #52affc;
            color: white;
            padding: 12px 18px;
            border-radius: 25px;
            text-decoration: none;
        }

        .card {
            background: #2a2f3a;
            padding: 20px;
            border-radius: 18px;
            margin-top: 20px;
        }

        .muted {
            color: #b8c0d0;
        }
    </style>
</head>

<body>

<div class="header">
    <h1>Provider Courses</h1>
    <a href="/ui/provider-courses/add" class="btn">Add Course</a>
</div>

<hr style="opacity:0.2;">

<#if courses?has_content>
    <#list courses as c>
        <div class="card">
            <h3>${c.title!"Untitled Course"}</h3>

            <p class="muted">
                Course ID: ${c.courseId}
            </p>

            <p class="muted">
                Provider ID: ${c.providerId}
            </p>
        </div>
    </#list>
<#else>
    <p>No courses available yet.</p>
</#if>

</body>
</html>