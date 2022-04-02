<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Disciplines List</title>
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
                <h2 class="discipline_title">Список дисциплин</h2>
                <div class="discipline_section">
                    <div class="discipline">
                        <table class="list">
                            <tr>
                                <th class="ld_col0"></th>
                                <th class="ld_col1">Наименование дисциплины</th>
                            </tr>
                            <tr>
                                <td class="ld_col0"><label><input type="checkbox" name=""></label></td>
                                <td class="ld_col1">Высшая математика</td>
                            </tr>
                        </table>
                    </div>
                    <div class="root_discipline">
                        <div class="button_group2">
                            <form action="./discipline_creating.html">
                                <input class="button_discipline" type="submit" value="Создать дисциплину…">
                            </form>
                            <form action="./discipline_modifying.html">
                                <input class="button_discipline" type="submit"
                                       value="Модифицировать выбранную дисциплину…">
                            </form>
                            <form action="">
                                <input class="button_discipline" type="submit" value="Удалить выбранную дисциплину…">
                            </form>
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