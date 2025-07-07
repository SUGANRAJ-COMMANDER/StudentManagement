<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management Dashboard</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
    <header class="title">
        <h1>Student Management System</h1>
    </header>

    <main class="dashboard">
        <nav class="sidebar">
            <a href="#Add">Add</a>
            <a href="#Update">Update</a>
            <a href="#Delete">Delete</a>
            <a href="#Search">Search</a>
            <a href="/vieww">View All</a>
        </nav>

        <section class="content">

            <div id="Add" class="card">
                <h2>Add Student</h2>
                <form action="addStudent" method="post" class="form-grid">

                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>

                    <label for="age">Age</label>
                    <input type="number" id="age" name="age" required>

                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>

                    <label for="course">Course</label>
                    <input type="text" id="course" name="course" required>

                    <button type="submit">Add</button>
                </form>
                <p>Result:</p>
            </div>
            <div id="Update" class="card">
    <h2>Update Student</h2>

    <!-- Search Form -->
    <form action="/searchi" method="get" class="form-grid">
    	<label for="id">Student ID</label>
    	<input type="text" id="id" name="id" required>

    	<div class="full-width-right">
        	<button type="submit">Search</button>
    	</div>
	</form>

    <!-- Update Form -->
    <form action="/update" method="post" class="form-grid">
        <input type="hidden" id="id" name="id" value="${searchedStudent.id}">

        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="${searchedStudent.name}" required>

        <label for="age">Age</label>
        <input type="number" id="age" name="age" value="${searchedStudent.age}" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="${searchedStudent.email}" required>

        <label for="course">Course</label>
        <input type="text" id="course" name="course" value="${searchedStudent.course}" required>

        <button type="submit">Update</button>
    </form>

    <p>Result: ${message}</p>
</div>


            <div id="Delete" class="card">
                <h2>Delete Student</h2>
                <form action="delete" method="post" class="form-grid">
                    <label for="deleteId">Student ID</label>
                    <input type="text" id="deleteId" name="id" required>

                    <button type="submit" class="delete-btn">Delete</button>
                </form>
                <p><%= request.getAttribute("message") %></p>
            </div>


            <div id="Search" class="card">
                <h2>Search Student</h2>
                <form action="search" method="get" class="form-grid">
                    <label for="searchId">Student ID</label>
                    <input type="text" id="searchId" name="id" required>

                    <button type="submit">Search</button>
                </form>
                    <p>Result:</p>
            </div>

        </section>
    </main>
<script>
    window.onload = function () {
        const scrollToUpdate = "${scrollToUpdate}";
        if (scrollToUpdate === "true") {
            location.hash = "#Update";
        }
    };
</script>
</body>
</html>
