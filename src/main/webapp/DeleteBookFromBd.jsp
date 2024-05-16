<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Добавление книги</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            overflow-x: hidden;
            scrollbar-width: none;
            -ms-overflow-style: none;
        }

        .container1 {
            width: 50%;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"], input[type="number"], textarea {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 5px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Онлайн-библиотека</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Главная</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Categories.jsp">Категории</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AboutUs.jsp">О нас</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Feedback.jsp">Обратная связь</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="FAQ.jsp">FAQ</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
        </form>
    </div>
</nav>

<div style="height: 30px;"></div>

<div class="container1">
    <h1>Удаление книги</h1>
    <form id="deleteBookForm">
        <div class="form-group">
            <label for="id">Id:</label>
            <input type="number" id="id" name="id" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Delete Book">
        </div>
    </form>
</div>

<footer class="bg-dark text-light py-4">
    <div class="container text-center">
        <p>&copy; 2024 Онлайн-библиотека для всех любителей ООП</p>
        <p>Rusanov Industry Online Lib</p>
    </div>
</footer>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const form = document.getElementById('deleteBookForm');

        form.addEventListener('submit', function (event) {
            event.preventDefault();

            const formData = new FormData(form);
            const book = {};
            formData.forEach(function (value, key) {
                book[key] = value;
            });

            const xhr = new XMLHttpRequest();
            xhr.open('POST', 'http://localhost:8081/OOP_Website_war_exploded/deletebook', true);
            xhr.setRequestHeader('Content-Type', 'application/json');

            xhr.onload = function () {
                if (xhr.status === 200) {
                    console.log('Все прошло успешно');
                } else {
                    console.error('Произошла ошибка при обработке запроса:', xhr.statusText);
                }
            };

            xhr.send(JSON.stringify(book));
        });
    });
</script>
</body>
</html>
