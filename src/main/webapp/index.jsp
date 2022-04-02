<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login page</title>
    <link rel="stylesheet" href="./resources/fonts/fonts.css">
    <link rel="stylesheet" type="text/css" href="./resources/css/style.css">
</head>
<body>
<div id="container">
    <header>
        <h1>Система управления студентами и их успеваемостью</h1>
    </header>
    <main>
        <section class="form_log">
            <h2 class="log_title">Вход в систему</h2>
            <div class="line">
                <div>Логин</div>
                <label>
                    <input type="text">
                </label>
            </div>
            <div class="line">
                <div>Пароль</div>
                <label>
                    <input type="text">
                </label>
            </div>
            <form action="">
                <input class="button_enter" type="submit" value="Войти">
            </form>
        </section>
    </main>
    <footer>
        <div>&copy; 2022 Alex Black</div>
    </footer>
</div>
</body>
</html>