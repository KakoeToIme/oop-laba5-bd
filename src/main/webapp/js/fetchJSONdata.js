console.log("Script is loaded");

document.getElementById('saveBooksBtn').addEventListener('click', function() {
    fetch('books.json')
        .then(response => {
            if (!response.ok) {
                throw new Error('Ошибка загрузки данных');
            }
            return response.json();
        })
        .then(data => {
            const books = data;
            console.log('Загруженные книги:', books);

            saveBooks(books);
        })
        .catch(error => {
            console.error('Произошла ошибка:', error);
        });
});

document.getElementById('showBooksBtn').addEventListener('click', function() {
    fetch('getBooks', {
        method: 'GET'
    })
        .then(response => response.json())
        .then(data => {
            localStorage.setItem('storedBooks', JSON.stringify(data));
            window.location.href = 'JSONTable.jsp';
        })
        .catch(error => {
            console.error('Ошибка при получении данных:', error);
        });
});

document.getElementById('showBooksFromBdBtn').addEventListener('click', function() {
    fetch('addbookbd', {
        method: 'GET'
    })
        .then(response => response.json())
        .then(data => {
            localStorage.setItem('storedBooks', JSON.stringify(data));
            window.location.href = 'ShowBooksFromBd.jsp';
        })
        .catch(error => {
            console.error('Ошибка при получении данных:', error);
        });
});

document.getElementById('addBooksBtn').addEventListener('click', function() {
    window.location.href = 'AddBookForm.jsp';
});

document.getElementById('addBooksBtnMVC').addEventListener('click', function() {
    window.location.href = 'AddBookFormMVC.jsp';
});

document.getElementById('addBooksToBdBtn').addEventListener('click', function() {
    window.location.href = 'AddBookToDb.jsp';
});

document.getElementById('showBooksFromBdBtn').addEventListener('click', function() {
    window.location.href = 'ShowBooksFromBd.jsp';
});

document.getElementById('updateBookInBdBtn').addEventListener('click', function() {
    window.location.href = 'UpdateBookInBd.jsp';
});

document.getElementById('deleteBookFromBdBtn').addEventListener('click', function() {
    window.location.href = 'DeleteBookFromBd.jsp';
});

function loadBooks() {
    console.log("Loading books...");
    return fetch('/OOP_Website_war_exploded/bookServer.json')
        .then(response => response.json())
        .catch(error => {
            console.error('Ошибка загрузки данных:', error);
        });
}

function showBookDetails(bookId) {
    loadBooks().then(data => {

        if (!data || data.length === 0) {
            console.error('Книги не загружены или список книг пуст');
            return;
        }

        const book = data.find(book => book.id === bookId);

        if (book) {
            const container = document.querySelector('.container');
            container.innerHTML = `
                <div class="row">
                    <div class="col-md-4">
                        <img src="${book.imageURL || ''}" alt="Обложка книги" class="img-fluid mb-4">
                    </div>
                    <div class="col-md-8">
                        <h2 class="mb-4">${book.bookTitle}</h2>
                        <p class="text-left"><strong>Автор:</strong> ${book.author}</p>
                        <p class="text-left"><strong>Количество страниц:</strong> ${book.pageCount}</p>
                        <p class="text-left"><strong>Издательство:</strong> ${book.publisher}</p>
                        <p class="text-left"><strong>ISBN:</strong> ${book.isbn}</p>
                        <p class="text-left"><strong>Год публикации:</strong> ${book.publicationYear}</p>
                        <p class="text-left"><strong>Описание:</strong></p>
                        <p class="text-justify">${book.description}</p>
                    </div>
                </div>
            `;

            const imgElement = document.querySelector('.img-fluid');
            if (imgElement) {
                imgElement.src = book.imageURL || '';
            }
        } else {
            console.error('Книга не найдена');
        }
    });
}

function saveBooks(data) {
    fetch('saveBooks', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })
        .then(response => response.text())
        .then(message => console.log(message))
        .catch(error => console.error('Error saving data:', error));
}