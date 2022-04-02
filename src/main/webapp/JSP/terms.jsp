<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Terms List</title>
    <link rel="stylesheet" href="../resources/fonts/fonts.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
<body>
<div id="container">
    <header>
        <nav class="head">
            <h1 class="title">Система управления студентами и их успеваемостью</h1>
            <div><a href="/index.jsp">Logout</a></div>
        </nav>
    </header>
    <main>
        <section class="content">
            <div class="side_menu">
                <div><a href="/home">На главную</a></div>
            </div>
            <div class="main">
                <div class="terms_section1">
                    <div class="terms_title">
                        <div class="line4">
                            <div>Выбрать семестр</div>
                            <label>
                                <select>
                                    <option value="">Семестр 1</option>
                                </select>
                            </label>
                        </div>
                        <form action="">
                            <input class="button_term" type="submit" value="Выбрать">
                        </form>
                    </div>
                    <div class="term_duration">
                        <h2>Длительность семестра:</h2>
                        <h2>24 недели</h2>
                    </div>
                    <h2 class="list_dt">Список дисциплин семестра</h2>
                    <div class="terms_section2">
                        <div class="terms">
                            <table class="list">
                                <tr>
                                    <th class="lt_col0">Наименование дисциплины</th>
                                </tr>
                                <tr>
                                    <td class="lt_col0">Высшая математика</td>
                                </tr>
                            </table>
                        </div>
                        <div class="root_terms">
                            <div class="button_group3">
                                <form action="./term_creating.html">
                                    <input class="button_terms" type="submit" value="Создать семестр…">
                                </form>
                                <form action="./term_modifying.html">
                                    <input class="button_terms" type="submit" value="Модифицировать текущий семестр…">
                                </form>
                                <form action="">
                                    <input class="button_terms" type="submit" value="Удалить текущий семестр…">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div>&copy; 2022 Alex Black</div>
    </footer>
</div>
</body>
</html>