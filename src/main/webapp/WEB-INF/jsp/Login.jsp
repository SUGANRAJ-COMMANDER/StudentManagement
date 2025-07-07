<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
  <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
  <style>
    :root {
      --primary: #2c3e50;
      --accent: #2980b9;
      --light: #f4f4f4;
      --gray: #e0e0e0;
      --highlight: #ecf0f1;
      --text: #333;
    }

    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background-color: var(--light);
      color: var(--text);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-container {
      background-color: white;
      padding: 2.5rem 3rem;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 400px;
    }

    .login-container h2 {
      text-align: center;
      margin-bottom: 2rem;
      color: var(--accent);
    }

    .form-group {
      margin-bottom: 1.5rem;
    }

    .form-group label {
      display: block;
      margin-bottom: 0.5rem;
      font-weight: 600;
    }

    .form-group input {
      width: 100%;
      padding: 0.75rem;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 1rem;
    }

    .login-button {
      width: 100%;
      padding: 0.75rem;
      background-color: var(--accent);
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 1rem;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .login-button:hover {
      background-color: #1c6ea4;
    }

    @media (max-width: 480px) {
      .login-container {
        padding: 2rem;
      }
    }
  </style>
</head>
<body>

  <div class="login-container">
    <h2>Login</h2>
    <form action="login" method="post">
      <div class="form-group">
        <label for="uname">User Name</label>
        <input type="text" id="uname" name="uname" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
      </div>
      <button type="submit" class="login-button">Login</button>
    </form>
  </div>

</body>
</html>