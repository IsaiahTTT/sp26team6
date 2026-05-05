<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Review Reply</title>

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
            max-width: 700px;
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

        label {
            display: block;
            margin: 12px 0 6px;
        }

        input, select, textarea {
            width: 100%;
            max-width: 100%;
            padding: 12px;
            border-radius: 12px;
            border: 1px solid #3a4150;
            background: #1e2129;
            color: white;
            outline: none;
        }

        textarea {
            resize: vertical;
            min-height: 120px;
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
            cursor: pointer;
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
        <h1>Add Review Reply</h1>
        <p class="muted">Choose a customer review and write an instructor response.</p>

        <#if providerId??>
            <a href="/ui/review-replies?providerId=${providerId}" class="btn">Back</a>
        <#else>
            <a href="/ui/review-replies" class="btn">Back</a>
        </#if>
    </div>

    <div class="panel">
        <form action="/ui/review-replies" method="post">

            <#if providerId??>
                <input type="hidden" name="providerId" value="${providerId}">
            </#if>

            <label>Customer Review</label>
            <select name="reviewId" required>
                <option value="">Select a review</option>
                <#list reviews as review>
                    <option value="${review.reviewId}">
                        Review ${review.reviewId} | Course ${review.courseId} | ${review.username} | ${review.rating}/5
                    </option>
                </#list>
            </select>

            <label>Reply Message</label>
            <textarea name="message" placeholder="Write your response..." required></textarea>

            <button class="btn" type="submit">Submit Reply</button>
        </form>
    </div>

</div>
</body>
</html>
