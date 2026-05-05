<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Courses</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Fredoka', cursive;
            background-color: #1e2129;
            color: white;
        }

        .page {
            max-width: 1000px;
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

        .course-card {
            background: #1e2129;
            border: 1px solid #3a4150;
            border-radius: 16px;
            padding: 16px;
            margin-top: 14px;
        }

        .btn {
            background-color: #5f91c6;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 1rem;
            margin-top: 15px;
            margin-right: 8px;
            border-radius: 25px;
            border: none;
            cursor: pointer;
            font-weight: 700;
        }

        .btn:hover {
            filter: brightness(1.05);
        }

        .muted {
            color: #b8c0d0;
            font-size: 0.9rem;
        }

        .badge {
            display: inline-block;
            background: #3a4150;
            color: #b8c0d0;
            padding: 6px 10px;
            border-radius: 999px;
            margin-top: 6px;
            margin-right: 6px;
            font-size: 0.85rem;
        }

        .course-top {
            display: flex;
            justify-content: space-between;
            gap: 10px;
            flex-wrap: wrap;
            align-items: center;
        }
    </style>
</head>

<body>
<div class="page">

    <div class="panel">
        <#if provider??>
            <h1>${provider.username!"Instructor"}'s Courses</h1>
            <p class="muted">
                Instructor ID: ${provider.providerId} |
                Teaches: ${provider.exerciseType!"Not listed"} |
                Certifications: ${provider.certifications!"Not listed"}
            </p>
            <a href="/ui/providers/dashboard/${provider.providerId}" class="btn">Back to Dashboard</a>
            <a href="/ui/provider-courses/add?providerId=${provider.providerId}" class="btn">+ Create New Course</a>
        <#else>
            <h1>Provider Courses</h1>
            <p class="muted">View courses by course ID and instructor/provider ID.</p>
            <a href="/ui/providers" class="btn">Back to Providers</a>
            <a href="/ui/provider-courses/add" class="btn">+ Create New Course</a>
        </#if>
    </div>

    <div class="panel">
        <h2 style="margin-top:0;">Courses</h2>

        <#if courses?? && courses?has_content>
            <#list courses as c>
                <#if !providerId?? || c.providerId == providerId>
                    <div class="course-card">
                        <div class="course-top">
                            <h3 style="margin:0;">${c.title!"Untitled Course"}</h3>
                            <span class="badge">Course ID: ${c.courseId}</span>
                        </div>

                        <p class="muted">
                            Provider ID: ${c.providerId}
                        </p>

                        <p>
                            <strong>Category:</strong> ${c.category!"Not listed"}
                        </p>

                        <#assign teacherName = "Unknown Instructor">
                        <#assign teacherType = "Not listed">
                        <#if providers??>
                            <#list providers as p>
                                <#if p.providerId == c.providerId>
                                    <#assign teacherName = p.username!"Unknown Instructor">
                                    <#assign teacherType = p.exerciseType!"Not listed">
                                </#if>
                            </#list>
                        </#if>

                        <p>
                            <strong>Instructor:</strong> ${teacherName}
                        </p>

                        <p>
                            <strong>Exercise Type:</strong> ${teacherType}
                        </p>
                    </div>
                </#if>
            </#list>
        <#else>
            <p class="muted">No courses available yet.</p>
        </#if>
    </div>

</div>
</body>
</html>
