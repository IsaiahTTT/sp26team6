<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Review Reply</title>

    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
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
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.35);
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 12px 0 6px;
        }

        input, textarea {
            width: 100%;
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
            <a href="/ui/review-replies" class="return-btn">Back</a>
        </div>

        <h1>Add Review Reply</h1>
        <p class="muted">Respond to a customer review.</p>
    </div>

    <!-- FORM -->
    <div class="panel">
        <form action="/ui/review-replies" method="post">

            <label>Review ID</label>
            <input type="number" name="reviewId" required>

            <label>Reply Message</label>
            <textarea name="message" placeholder="Write your response..." required></textarea>

            <button class="btn" type="submit">Submit Reply</button>
        </form>
    </div>

</div>

</body>
</html>
