<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Review Replies</title>

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

        .review-card, .reply {
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
            border: none;
        }

        .muted {
            color: #b8c0d0;
            font-size: 0.9rem;
        }

        .stars {
            color: #ffd166;
        }
    </style>
</head>

<body>
<div class="page">

    <div class="panel">
        <h1>Course Reviews and Instructor Replies</h1>
        <p class="muted">View customer reviews first, then post or view instructor replies.</p>

        <#if providerId??>
            <a href="/ui/providers/dashboard/${providerId}" class="btn">Back to My Dashboard</a>
            <a href="/ui/review-replies/add?providerId=${providerId}" class="btn">Add Reply</a>
            <a href="/ui/provider-courses?providerId=${providerId}" class="btn">Courses</a>
        <#else>
            <a href="/ui/providers" class="btn">Back to Providers</a>
            <a href="/ui/review-replies/add" class="btn">Add Reply</a>
            <a href="/ui/provider-courses" class="btn">Courses</a>
        </#if>
    </div>

    <div class="panel">
        <h2 style="margin-top:0;">Customer Reviews</h2>

        <#if reviews?? && reviews?has_content>
            <#list reviews as review>
                <div class="review-card">
                    <p><strong>Review ID:</strong> ${review.reviewId}</p>
                    <p><strong>Course ID:</strong> ${review.courseId}</p>
                    <p><strong>Customer:</strong> ${review.username}</p>
                    <p><strong>Rating:</strong> <span class="stars">${review.rating}/5 ⭐</span></p>
                    <p>${review.review}</p>

                    <#if providerId??>
                        <a href="/ui/review-replies/add?providerId=${providerId}" class="btn">Reply to Review</a>
                    <#else>
                        <a href="/ui/review-replies/add" class="btn">Reply to Review</a>
                    </#if>
                </div>
            </#list>
        <#else>
            <p class="muted">No customer reviews found.</p>
        </#if>
    </div>

    <div class="panel">
        <h2 style="margin-top:0;">Instructor Replies</h2>

        <#if replies?? && replies?has_content>
            <#list replies as r>
                <div class="reply">
                    <p><strong>Reply ID:</strong> ${r.replyId!"N/A"}</p>
                    <p><strong>Review ID:</strong> ${r.reviewId!"N/A"}</p>
                    <p><strong>Message:</strong> ${r.message!"No message"}</p>
                </div>
            </#list>
        <#else>
            <p class="muted">No replies yet.</p>
        </#if>
    </div>

</div>
</body>
</html>
