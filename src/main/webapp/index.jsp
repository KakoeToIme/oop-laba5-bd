<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rusanov Industry Online Lib</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
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

    <section class="container">
        <h2 class="text-center mb-4">Популярные книги</h2>
        <div class="row">
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="https://i.ibb.co/sbdgv7R/image.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">Анна Каренина: Роман</h5>
                        <p class="card-text text-left">«Анна Каренина» — лучший роман о женщине, написанный в XIX веке.
                            По словам Ф. М. Достоевского, «Анна Каренина» поразила современников «не только
                            вседневностью содержания, но и огромной психологической разработкой души человеческой,
                            страшной глубиной и силой». Уже к началу 1900-х годов роман Толстого был переведен на многие
                            языки мира, а в настоящее время входит в золотой фонд мировой литературы.</p>
                        <a href="#" class="btn btn-primary d-inline-block mx-auto" onclick="showBookDetails('2459099')" data-id="2459099">Подробнее</a>
                    </div>
                </div>
            </div>


            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="https://i.ibb.co/cN2sq8g/image.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">Сиддхартха. Путешествие к земле Востока</h5>
                        <p class="card-text text-left">«Сиддхартха» — жемчужина прозы Германа Гессе, на страницах
                            которой нашли свое отражение путешествия писателя по Индии, а также его интерес к восточным
                            религиям.
                            Местом действия является Индия времен Сиддхартхи Гаутамы — основателя одной из наиболее
                            глубоких и мудрых религий человечества — буддизма. В этой небольшой книге Гессе удалось
                            объяснить европейцам ее суть, создать идеальную систему — некий свод взаимосвязанных правил
                            — как нужно жить, как следует исправлять свои ошибки, как найти свое истинное «я».
                            Эту притчу стоит читать и перечитывать не из-за сюжета и в поиске новых знаний, а из-за того
                            глубинного понимания мира, ощущения единения с окружающими, которое она дает.
                            В издание также включена аллегорическая повесть «Путешествие в страну Востока».</p>
                        <a href="#" class="btn btn-primary d-inline-block mx-auto" onclick="showBookDetails('2477326')" data-id="2477326">Подробнее</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="https://i.ibb.co/Vpx0PhB/image.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">Титан</h5>
                        <p class="card-text text-left">В романе «Титан», второй части «Трилогии желания», Фрэнк
                            Каупервуд прибывает в Чикаго, испытывая неуемную жажду наживы. Он движется к своей цели,
                            пренебрегая другими людьми, исповедуя правило «все средства хороши». Привыкший добиваться
                            своего, он действует по одной схеме в политике, финансах и любви, и ничто, казалось бы, не в
                            силах его остановить.</p>
                        <a href="#" class="btn btn-primary d-inline-block mx-auto" onclick="showBookDetails('7379135')" data-id="7379135">Подробнее</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="https://i.ibb.co/0X55rRf/image.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">Убийства на улице Морг</h5>
                        <p class="card-text text-left">Эдгар Аллан По — знаменитый американский поэт, прозаик, критик,
                            журналист. Человек ослепительного таланта и горестной судьбы. Ненавистники и почитатели,
                            подражатели и последователи — всем им, и уже не один век, не дает покоя наследие По.
                            «Золотой жук», «Убийства на улице Морг», «Тайна Мари Роже», «Похищенное письмо», «Заживо
                            погребенные», «Сердце-обличитель» и другие рассказы, представленные в настоящем сборнике,
                            являются ярчайшими образцами «малоформатной» прозы По, в которой писатель обнаружил
                            блистательное мастерство и достиг вершины художественного совершенства.</p>
                        <a href="#" class="btn btn-primary d-inline-block mx-auto" onclick="showBookDetails('2141859')" data-id="2141859">Подробнее</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="https://i.ibb.co/bBrgZYY/image.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">Униженные и оскорбленные</h5>
                        <p class="card-text text-left">«Униженные и оскорбленные» (1860–1861) — первый большой роман
                            Достоевского, созданный после возвращения из сибирской ссылки.
                            Написанное в эпоху необычайного подъема общественной жизни, произведение обратило внимание
                            читателя на новую проблему — проблему эгоизма и оторванности русской интеллигенции от
                            простого народа — «униженных и оскорбленных», чье достоинство писатель страстно защищал и
                            отстаивал.
                            Свойственная прозе Достоевского необычайная психологическая глубина и знание сокровенных
                            тайн человеческой души соседствуют в этом романе с лиризмом и увлекательным, интригующим
                            сюжетом, в котором главный персонаж — князь Валковский — развивает свою аморальную,
                            эгоистическую «философию жизни».</p>
                        <a href="#" class="btn btn-primary d-inline-block mx-auto" onclick="showBookDetails('7145798')" data-id="7145798">Подробнее</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="https://i.ibb.co/BcCQwTJ/image.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">Судьба человека. Донские рассказы</h5>
                        <p class="card-text text-left">В этой книге вы прочтете новеллу «Судьба человека» и «Донские
                            рассказы». «Судьба человека» (1956-1957 гг.) - пронзительный рассказ о временах Великой
                            Отечественной войны. Одно из первых произведений советской литературы, в котором война
                            показана правдиво и наглядно. Плен, немецкие концлагеря, побег, возвращение на фронт, потеря
                            близких, тяжелое послевоенное время, попытка найти родную душу, спастись от одиночества.
                            Рассказ экранизировал Сергей Бондарчук, он же и исполнил в нем главную роль - фильм
                            начинающего режиссера получил главный приз Московского кинофестиваля в 1959 году.
                            «Донские рассказы» (1924-1926 гг.) - это сборник из 6 рассказов, описывающих события
                            Гражданской войны. Хотя местом действия остается Дон, с его особым колоритом и специфическим
                            казачьим духом, очевидно, что события в этих новеллах могут быть спроецированы на всю Россию
                            – война обнажает чувства, именно в такое кровавое время, когда стираются границы
                            дозволенного, яснее становится, кто смог сохранить достоинство и остаться Человеком, а кто
                            нет.</p>
                        <a href="#" class="btn btn-primary d-inline-block mx-auto" onclick="showBookDetails('2523432')" data-id="2523432">Подробнее</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="https://i.ibb.co/6BgnxnH/image.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">Хорошие жены</h5>
                        <p class="card-text text-left">Прежде чем стать всемирно известным автором литературы для
                            юношества, Луиза Мэй Олкотт (1832—1888) работала медсестрой во время Гражданской войны,
                            боролась с рабством, была одной из первых участниц движения за предоставление женщинам
                            избирательных прав. Начав писать детские книги, достигла небывалой славы и богатства. Она
                            смотрела на мир и писала о нем так же, как жила, — с верой в будущее, с любовью и
                            состраданием к людям. Верность жизненной правде и высоким идеалам, юмор и неугасимый
                            оптимизм, присущие ее творчеству, всегда будут привлекать к ее книгам юных и взрослых
                            читателей.
                            "Хорошие жены" — продолжение "Маленьких женщин", искреннего и трогательного романа о детстве
                            и юности четырех сестер. Маргарет, Джо, Бесс и Эми такие разные, такие неповторимые. Они
                            сообща справляются с трудностями, испытывают горести и радости, мечтают о будущем и проходят
                            непростой путь взросления. А уже став взрослыми девушками, сталкиваются с новыми заботами.
                            Живо и увлекательно описывая их судьбу, Олкотт снова вселяет веру в людей и человеческие
                            чувства.</p>
                        <a href="#" class="btn btn-primary d-inline-block mx-auto" onclick="showBookDetails('2777151')" data-id="2777151">Подробнее</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="https://i.ibb.co/LdrtS2j/image.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">Аэропорт</h5>
                        <p class="card-text text-left">"Аэропорт" - роман-бестселлер Артура Хейли, вышедший в 1968 году.
                            Вымышленный город, где находится крупнейший аэропорт, неожиданно накрывает снежный буран,
                            поэтому все службы работают в экстренном режиме. На сотрудников аэропорта обрушивается одна
                            проблема за другой, начиная от сгинувшей непонятно где машины с продуктами до страшной
                            аварии на борту одного из самолетов. А ко всему прочему добавляются обострившиеся личные
                            проблемы героев, их сложные душевные драмы - вот в такой запутанный клубок сюжетных линий
                            завяжется действие романа, уместившееся в один пятничный вечер. По роману "Аэропорт" в 1970
                            году был снят фильм с ведущими голливудскими актерами - десять номинаций на премию "Оскар"!
                            После этой экранизации вышли еще три сиквела.</p>
                        <a href="#" class="btn btn-primary d-inline-block mx-auto" onclick="showBookDetails('2426506')" data-id="2426506">Подробнее</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <button style="width: 250px" id="saveBooksBtn" class="btn btn-primary">Сохранить книги</button>

    <div style="height: 30px;"></div>

    <button style="width: 250px" id="showBooksBtn" class="btn btn-primary">Показать сохраненные книги</button>

    <div style="height: 30px;"></div>

    <button style="width: 250px" id="addBooksBtn" class="btn btn-primary">Добавить книгу</button>

    <div style="height: 30px;"></div>

    <button style="width: 250px" id="addBooksBtnMVC" class="btn btn-primary">Добавить книгу MVC</button>

    <div style="height: 30px;"></div>

    <button style="width: 250px" id="showBooksFromBdBtn" class="btn btn-primary">Показать книги из БД</button>

    <div style="height: 30px;"></div>

    <button style="width: 250px" id="addBooksToBdBtn" class="btn btn-primary">Добавить книгу в БД</button>

    <div style="height: 30px;"></div>

    <button style="width: 250px" id="updateBookInBdBtn" class="btn btn-primary">Изменить книгу в БД</button>

    <div style="height: 30px;"></div>

    <button style="width: 250px" id="deleteBookFromBdBtn" class="btn btn-primary">Удалить книгу из БД</button>

    <div style="height: 30px;"></div>

    <footer class="bg-dark text-light py-4">
        <div class="container text-center">
            <p>&copy; 2024 Онлайн-библиотека для всех любителей ООП</p>
            <p>Rusanov Industry Online Lib</p>
        </div>
    </footer>

    <script>
        window.onload = function () {
            var cards = document.querySelectorAll('.card');

            cards.forEach(function (card) {
                var title = card.querySelector('.card-title');
                var text = card.querySelector('.card-text');

                title.style.height = 'auto';
                var titleHeight = title.offsetHeight;

                text.style.height = 'auto';
                var textHeight = text.offsetHeight;

                var maxHeight = Math.max(titleHeight, textHeight);
                title.style.height = maxHeight + 'px';
                text.style.height = maxHeight + 'px';
            });
        };
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/script.js" type="text/javascript"></script>
    <script src="js/fetchJSONdata.js" type="text/javascript"></script>

</body>

</html>