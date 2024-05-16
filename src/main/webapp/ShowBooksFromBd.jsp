<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Saved Books</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
    <style>
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 0 15px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
        }

        table, th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        table tbody tr:hover {
            background-color: #f5f5f5;
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


<header class="jumbotron">
    <div class="container text-center">
        <h1>Добро пожаловать в нашу библиотеку</h1>
        <p>Здесь вы найдете широкий выбор книг по различным темам.</p>
    </div>
</header>

<div class="container">
    <table id="booksTable">
        <thead>
        <tr>
            <th>Book Title</th>
            <th>Author</th>
            <th>Page Count</th>
            <th>Publisher</th>
            <th>ISBN</th>
            <th>Publication Year</th>
            <th>Description</th>
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>

<footer class="bg-dark text-light py-4">
    <div class="container text-center">
        <p>&copy; 2024 Онлайн-библиотека для всех любителей ООП</p>
        <p>Rusanov Industry Online Lib</p>
    </div>
</footer>

<script>
    const storedBooks = JSON.parse(localStorage.getItem('storedBooks'));
    console.log('Stored Books:', storedBooks);

    const booksTable = document.getElementById('booksTable').getElementsByTagName('tbody')[0];

    if (storedBooks && storedBooks.length > 0) {
        storedBooks.forEach(book => {
            console.log('Adding book:', book);

            const row = booksTable.insertRow();

            const cell1 = row.insertCell(0);
            cell1.innerHTML = book.bookTitle;

            const cell2 = row.insertCell(1);
            cell2.innerHTML = book.author;

            const cell3 = row.insertCell(2);
            cell3.innerHTML = book.pageCount;

            const cell4 = row.insertCell(3);
            cell4.innerHTML = book.publisher;

            const cell5 = row.insertCell(4);
            cell5.innerHTML = book.isbn;

            const cell6 = row.insertCell(5);
            cell6.innerHTML = book.publicationYear;

            const cell7 = row.insertCell(6);
            cell7.innerHTML = book.description;
        });
    } else {
        console.log('No stored books found.');
    }

</script>
</body>
</html>
