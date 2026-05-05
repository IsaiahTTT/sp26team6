<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Courses</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        * {
            box-sizing: border-box;
        }

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

        .danger {
            background-color: #bd0a0a;
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

        .detail-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px 20px;
            margin-top: 12px;
        }

        .detail-box {
            background: #2a2f3a;
            border: 1px solid #3a4150;
            border-radius: 12px;
            padding: 12px;
        }

        .instructions {
            margin-top: 12px;
            background: #2a2f3a;
            border: 1px solid #3a4150;
            border-radius: 12px;
            padding: 12px;
        }

        form {
            display: inline;
        }

        @media (max-width: 650px) {
            .detail-grid {
                grid-template-columns: 1fr;
            }
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

                        <#assign teacherName = "Unknown Instructor">
                        <#assign teacherType = "Not listed">
                        <#assign teacherCerts = "Not listed">

                        <#if providers??>
                            <#list providers as p>
                                <#if p.providerId == c.providerId>
                                    <#assign teacherName = p.username!"Unknown Instructor">
                                    <#assign teacherType = p.exerciseType!"Not listed">
                                    <#assign teacherCerts = p.certifications!"Not listed">
                                </#if>
                            </#list>
                        </#if>

                        <p class="muted">
                            Provider ID: ${c.providerId} | Instructor: ${teacherName}
                        </p>

                        <div class="detail-grid">
                            <div class="detail-box">
                                <strong>Category:</strong>
                                <p>${c.category!"Not listed"}</p>
                            </div>

                            <div class="detail-box">
                                <strong>Exercise Type:</strong>
                                <p>${c.exerciseType!teacherType}</p>
                            </div>

                            <div class="detail-box">
                                <strong>Sets:</strong>
                                <p>${c.sets!"N/A"}</p>
                            </div>

                            <div class="detail-box">
                                <strong>Reps:</strong>
                                <p>${c.reps!"N/A"}</p>
                            </div>

                            <div class="detail-box">
                                <strong>Duration:</strong>
                                <p>${c.durationMinutes!"N/A"} minutes</p>
                            </div>

                            <div class="detail-box">
                                <strong>Points Reward:</strong>
                                <p>${c.pointsReward!"N/A"}</p>
                            </div>
                        </div>

                        <div class="instructions">
                            <strong>Description</strong>
                            <p>${c.description!"No description listed."}</p>

                            <strong>Workout Instructions</strong>
                            <p>${c.instructions!"No workout instructions listed."}</p>
                        </div>

                        <p class="muted">
                            Instructor Certifications: ${teacherCerts}
                        </p>

                        <a href="/ui/provider-courses/edit/${c.courseId}" class="btn">Edit Course</a>

                        <form action="/ui/provider-courses/delete/${c.courseId}" method="post">
                            <input type="hidden" name="providerId" value="${c.providerId}">
                            <button class="btn danger" type="submit" onclick="return confirm('Delete this course?');">
                                Delete Course
                            </button>
                        </form>

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