<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Fredoka', cursive;
            background-color: #1e2129;
            color: white;
        }

        .profile-container {
            position: relative;
            max-width: 600px;
            margin: 80px auto;
            background-color: #2a2f3a;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
        }

        .profile-container h2 {
            margin-bottom: 25px;
        }

        .profile-section {
            margin-bottom: 25px;
        }

        input,
        textarea {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: none;
            margin-top: 8px;
            background-color: #1e2129;
            color: white;
        }

        input[type="file"] {
            padding: 10px;
            background-color: #1e2129;
            color: white;
            border: 2px dashed #444;
            cursor: pointer;
        }

        button {
            margin-top: 10px;
            padding: 10px 20px;
            border-radius: 20px;
            border: none;
            cursor: pointer;
        }

        .save-btn {
            background-color: #5f91c6;
            color: white;
        }

        .delete-btn {
            background-color: #bd0a0a;
            color: white;
        }

        .top-right {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 1.5rem;
            color: #52affc;
        }

         .profile-preview {
            margin-top: 12px;
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid #444;
            display: block;
        }

        .profile-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
        }

        .header-right {
        display: flex;
        align-items: center;
        gap: 12px;
        }

        .level-display {
        background-color: #1e2129;
        padding: 8px 16px;
        border-radius: 20px;
        border: 2px solid #33363a;
        color: #5f91c6;
        font-weight: bold;
        }

        .return-btn {
        padding: 10px 18px;
        border-radius: 25px;
        background-color: #1e2129;
        color: #5f91c6;
        border: 2px solid #33363a;
        text-decoration: none;
        font-weight: bold;
        }
        

    </style>
</head>

<body>

    <div class="profile-container">
        <div class="header-right">
            <h2>Edit Profile</h2>
            <div class="level-display">Level ${customer.level}</div>
        </div>
        <div class="top-right">
            <a href="/dashboard/${customer.customerId}" class="return-btn">Return</a>
        </div>
       
        
        <form action="/profile/update/${customer.customerId}" method="post">
        <div class="profile-section">
            <label>Username</label>
            <input type="text" id="username" name="username" placeholder="${customer.username}">
        </div>

        <div class="profile-section">
            <label>Email</label>
            <input type="email" id="email" name="email" placeholder="${customer.email}">
        </div>

        <button type="submit" class="save-btn" >Save Changes</button>
        

        <hr style="margin:30px 0; opacity:0.2;">

        <div class="profile-section">
            <label>Change Password</label>
            <input type="password" id="newPassword" name="password" placeholder="Enter new password">
            <button type="submit" class="save-btn">Update Password</button>
        </div>
        </form>
        
        <hr style="margin:30px 0; opacity:0.2;">

        <form action="/profile/delete/${customer.customerId}" method="post">
            <button class="delete-btn" type="submit" onclick="return confirm('Are you sure you want to delete your profile?');">Delete Profile</button>
        </form>

    </div>
</body>

</html>