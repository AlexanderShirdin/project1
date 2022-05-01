<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title page</title>
    <link rel="stylesheet" href="../resources/fonts/fonts.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
<body>
<div id="container">
    <header>
        <nav class="head">
            <h1 class="title">Система управления студентами и их успеваемостью</h1>
            <c:choose>
                <c:when test="${isLogin eq 1}">
                    <div><a href="/logout">${login}, Logout</a></div>
                </c:when>
                <c:otherwise>
                    <div><a href="/login">Logout</a></div>
                </c:otherwise>
            </c:choose>
        </nav>
    </header>
    <main>
        <section class="menu_title">
            <a href="/students">Студенты</a>
            <a href="/disciplines">Дисциплины</a>
            <a href="/terms">Семестры</a>
        </section>
    </main>
    <footer>
        <div>&copy; 2022 Alex Black</div>
    </footer>
</div>
</body>
</html>