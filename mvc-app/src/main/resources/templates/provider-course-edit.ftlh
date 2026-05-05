<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Course</title>
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
            max-width: 750px;
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

        input, textarea {
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
            min-height: 110px;
            resize: vertical;
        }

        .row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 12px;
        }

        .btn {
            background-color: #5f91c6;
            color: white;
            padding: 10px 20px;
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

        .danger {
            background-color: #bd0a0a;
        }

        .muted {
            color: #b8c0d0;
            font-size: 0.9rem;
        }

        form.delete-form {
            margin-top: 10px;
        }

        @media (max-width: 650px) {
            .row {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>
<div class="page">

    <div class="panel">
        <h1>Edit Course</h1>
        <p class="muted">
            Update the workout course details, instructions, and point reward.
        </p>
    </div>

    <div class="panel">
        <form action="/ui/provider-courses/update/${course.courseId}" method="post">

            <label>Course Title</label>
            <input type="text" name="title" value="${course.title!""}" required>

            <label>Provider ID</label>
            <input type="number" name="providerId" value="${course.providerId}" readonly required>

            <div class="row">
                <div>
                    <label>Category</label>
                    <input type="text" name="category" value="${course.category!""}" placeholder="Strength, Cardio, Yoga">
                </div>

                <div>
                    <label>Exercise Type</label>
                    <input type="text" name="exerciseType" value="${course.exerciseType!""}" placeholder="Deadlifts, Running, Stretching">
                </div>
            </div>

            <label>Description</label>
            <textarea name="description">${course.description!""}</textarea>

            <label>Workout Instructions</label>
            <textarea name="instructions">${course.instructions!""}</textarea>

            <div class="row">
                <div>
                    <label>Sets</label>
                    <input type="number" name="sets" value="${course.sets!""}">
                </div>

                <div>
                    <label>Reps</label>
                    <input type="number" name="reps" value="${course.reps!""}">
                </div>
            </div>

            <div class="row">
                <div>
                    <label>Duration Minutes</label>
                    <input type="number" name="durationMinutes" value="${course.durationMinutes!""}">
                </div>

                <div>
                    <label>Points Reward</label>
                    <input type="number" name="pointsReward" value="${course.pointsReward!""}">
                </div>
            </div>

            <button class="btn" type="submit">Save Changes</button>
            <a href="/ui/provider-courses?providerId=${course.providerId}" class="btn">Back</a>
        </form>

        <form class="delete-form" action="/ui/provider-courses/delete/${course.courseId}" method="post">
            <input type="hidden" name="providerId" value="${course.providerId}">
            <button class="btn danger" type="submit" onclick="return confirm('Delete this course?');">
                Delete Course
            </button>
        </form>
    </div>

</div>
</body>
</html>