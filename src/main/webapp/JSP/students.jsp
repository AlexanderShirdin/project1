<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Students List</title>
    <link rel="stylesheet" href="../resources/fonts/fonts.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
    <script src="../resources/js/function.js"></script>
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
        <section class="content">
            <div class="side_menu">
                <div><a href="/home">На главную</a></div>
            </div>
            <div class="main">
                <div class="button_group1">
                        <input class="button_student1" type="submit"
                               value="Просмотреть успеваемость выбранных студентов" onclick="progressStudents()">
                   <c:if test="${role eq 1}">
                    <form action="/student_creating">
                        <input class="button_student2" type="submit" value="Создать студента…">
                    </form>
                        <input class="button_student1" type="submit" value="Модифицировать выбранного студента…" onclick="modifyStudents()">
                    <input class="button_student2" type="submit" value="Удалить выбранных студентов" onclick="deleteStudents()">
                </div>
                </c:if>
                <div class="students">
                    <table class="list">
                        <caption>Список студентов</caption>
                        <tr>
                            <th class="l_col0"></th>
                            <th class="l_col1">Фамилия</th>
                            <th class="l_col2">Имя</th>
                            <th class="l_col3">Группа</th>
                            <th class="l_col4">Дата поступления</th>
                        </tr>
                        <c:forEach items="${students}" var="st">
                            <tr>
                                <td class="l_col0"><label><input name="idStudent" type="checkbox" value="${st.id}"></label></td>
                                <td class="l_col1">${st.surname}</td>
                                <td class="l_col2">${st.name}</td>
                                <td class="l_col3">${st.group}</td>
                                <td class="l_col4"><fmt:formatDate pattern="dd/MM/yyyy" value="${st.date}"/></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div>&copy; 2022 Alex Black</div>
    </footer>
</div>
</body>
<form action="/student_deleting" method="post" id="deleteForm">
    <input type="hidden" id="deleteHidden" name="deleteHidden">
</form>
<form action="/student_modifying" method="get" id="modifyForm">
    <input type="hidden" id="modifyHidden" name="modifyHidden">
</form>
<form action="/student_progress" method="get" id="progressForm">
<input type="hidden" id="progressHidden" name="progressHidden">
</form>
</html>