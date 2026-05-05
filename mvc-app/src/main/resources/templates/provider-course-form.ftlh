<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Course</title>
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

        .muted {
            color: #b8c0d0;
            font-size: 0.9rem;
        }

        @media (max-width: 650px) {
            .row { grid-template-columns: 1fr; }
        }
    </style>
</head>

<body>
<div class="page">

    <div class="panel">
        <h1>Create Course</h1>

        <#if provider??>
            <p class="muted">Creating course for ${provider.username!"Instructor"} | Provider ID: ${provider.providerId}</p>
        <#else>
            <p class="muted">Create a workout course and assign it to an instructor.</p>
        </#if>
    </div>

    <div class="panel">
        <form action="/ui/provider-courses" method="post">

            <label>Course Title</label>
            <input type="text" name="title" placeholder="Example: Deadlift Strength Builder" required>

            <label>Provider</label>
            <#if providerId??>
                <input type="number" name="providerId" value="${providerId}" readonly required>
            <#else>
                <select name="providerId" required>
                    <option value="">Select provider</option>
                    <#list providers as p>
                        <option value="${p.providerId}">
                            ${p.username!"Provider"} - ID ${p.providerId}
                        </option>
                    </#list>
                </select>
            </#if>

            <div class="row">
                <div>
                    <label>Category</label>
                    <input type="text" name="category" placeholder="Strength, Cardio, Flexibility">
                </div>

                <div>
                    <label>Exercise Type</label>
                    <input type="text" name="exerciseType" placeholder="Deadlifts, Running, Yoga">
                </div>
            </div>

            <label>Description</label>
            <textarea name="description" placeholder="Short summary of the course."></textarea>

            <label>Workout Instructions</label>
            <textarea name="instructions" placeholder="Example: Warm up, complete 4 sets of deadlifts, rest 90 seconds between sets."></textarea>

            <div class="row">
                <div>
                    <label>Sets</label>
                    <input type="number" name="sets" placeholder="4">
                </div>

                <div>
                    <label>Reps</label>
                    <input type="number" name="reps" placeholder="8">
                </div>
            </div>

            <div class="row">
                <div>
                    <label>Duration Minutes</label>
                    <input type="number" name="durationMinutes" placeholder="45">
                </div>

                <div>
                    <label>Points Reward</label>
                    <input type="number" name="pointsReward" placeholder="100">
                </div>
            </div>

            <button type="submit" class="btn">Create Course</button>

            <#if providerId??>
                <a href="/ui/provider-courses?providerId=${providerId}" class="btn">Back</a>
            <#else>
                <a href="/ui/provider-courses" class="btn">Back</a>
            </#if>

        </form>
    </div>

</div>
</body>
</html>