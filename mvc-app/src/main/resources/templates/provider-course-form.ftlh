<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Course</title>
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
            box-shadow: 0 10px 30px rgba(0,0,0,0.35);
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 12px 0 6px;
        }

        input, select {
            width: 100%;
            box-sizing: border-box;
            padding: 12px;
            border-radius: 12px;
            border: 1px solid #3a4150;
            background: #1e2129;
            color: white;
            outline: none;
            margin-bottom: 10px;
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
    </style>
</head>

<body>
<div class="page">

    <div class="panel">
        <h1>Create Course</h1>

        <#if provider??>
            <p class="muted">
                Creating course for ${provider.username!"Instructor"}.
                Provider ID: ${provider.providerId}
            </p>
        <#else>
            <p class="muted">Create a new course and assign it to a provider.</p>
        </#if>
    </div>

    <div class="panel">
        <form action="/ui/provider-courses" method="post">

            <label>Course Title</label>
            <input type="text" name="title" placeholder="Example: Strength Training" required>

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

            <label>Category</label>
            <input type="text" name="category" placeholder="Example: Cardio, Weightlifting, Yoga">

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
