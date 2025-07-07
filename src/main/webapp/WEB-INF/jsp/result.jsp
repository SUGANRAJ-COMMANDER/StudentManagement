<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.Sm.Model.Student" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Student List</title>
  <link rel="stylesheet" href="css/style.css" />
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
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 2rem;
    }

    h1 {
      margin-bottom: 2rem;
      color: var(--primary);
    }

    table {
      width: 90%;
      max-width: 1000px;
      border-collapse: collapse;
      background-color: white;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
      border-radius: 12px;
      overflow: hidden;
    }

    th, td {
      padding: 1rem;
      border-bottom: 1px solid var(--gray);
      text-align: center;
    }

    th {
      background-color: var(--highlight);
      font-weight: 600;
    }

    tr:last-child td {
      border-bottom: none;
    }

    .button {
      display: inline-block;
      margin: 1.5rem 1rem 0;
      padding: 0.75rem 1.5rem;
      background-color: var(--accent);
      color: white;
      text-decoration: none;
      border-radius: 8px;
      font-weight: bold;
      transition: background 0.3s ease;
    }

    .button:hover {
      background-color: #1c6ea4;
    }

    .no-data {
      text-align: center;
      padding: 2rem;
      color: #888;
    }
  </style>
</head>
<body>

<h1>All Students</h1>

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Age</th>
      <th>Email</th>
      <th>Course</th>
    </tr>
  </thead>
  <tbody>
    <%
      List<?> rawList = (List<?>) request.getAttribute("students");
      List<Student> students = new ArrayList<>();

      if (rawList != null) {
        for (Object obj : rawList) {
          if (obj instanceof Student) {
            students.add((Student) obj);
          }
        }
      }

      if (!students.isEmpty()) {
        for (Student student : students) {
    %>
    <tr>
      <td><%= student.getId() %></td>
      <td><%= student.getName() %></td>
      <td><%= student.getAge() %></td>
      <td><%= student.getEmail() %></td>
      <td><%= student.getCourse() %></td>
    </tr>
    <%
        }
      } else {
    %>
    <tr>
      <td colspan="5" class="no-data">No student records found.</td>
    </tr>
    <% } %>
  </tbody>
</table>

<a href="/index" class="button">➕ Add New Student</a>
<a href="/" class="button">🔒 Log Out</a>

</body>
</html>