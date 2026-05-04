<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Review Replies</title>

    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
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
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.35);
            margin-bottom: 20px;
        }

        .reply {
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
            font-weight: 700;
        }

        .btn:hover {
            filter: brightness(1.05);
        }

        .muted {
            color: #b8c0d0;
            font-size: 0.9rem;
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

    <!-- HEADER -->
    <div class="panel">
        <div class="top-right">
            <a href="/ui/providers" class="return-btn">Back</a>
        </div>

        <h1>Review Replies</h1>
        <p class="muted">Respond to customer feedback on courses.</p>

        <a href="/ui/review-replies/add" class="btn">Add Reply</a>
        <a href="/ui/provider-courses" class="btn">Courses</a>
    </div>

    <!-- REPLIES LIST -->
    <div class="panel">
        <h2 style="margin-top:0;">All Replies</h2>

        <#if replies?has_content>
            <#list replies as r>
                <div class="reply">
                    <p><strong>Review ID:</strong> ${r.reviewId}</p>
                    <p>${r.message!"No message"}</p>
                </div>
            </#list>
        <#else>
            <p class="muted">No replies yet.</p>
        </#if>
    </div>

</div>

</body>
</html>
