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
    <title>Student Progress</title>
    <link rel="stylesheet" href="../resources/fonts/fonts.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
<body>
<div id="container">
    <header>
        <nav class="head">
            <h1 class="title">Система управления студентами и их успеваемостью</h1>
            <div class="login">
                <c:choose>
                    <c:when test="${isLogin eq 1}">
                        <div><p>Привет, ${login}!</p></div>
                        <div><a href="/logout">Logout</a></div>
                    </c:when>
                    <c:otherwise>
                        <div><a href="/login">Login</a></div>
                    </c:otherwise>
                </c:choose>
            </div>
        </nav>
    </header>
    <main>
        <section class="content">
            <div class="side_menu">
                <div><a href="/home">На главную</a></div>
                <div><a href="/students">Назад</a></div>
            </div>
            <div class="main">
                <h2>Отображена успеваемость для следующего студента:</h2>
                <div class="progress">
                    <input type="hidden" name="idStudent" value="${student.id}">
                    <table class="list">
                        <tr>
                            <th class="lp_col0">Фамилия</th>
                            <th class="lp_col1">Имя</th>
                            <th class="lp_col2">Группа</th>
                            <th class="lp_col3">Дата поступления</th>
                        </tr>
                        <tr>
                            <td class="lp_col0">${student.surname}</td>
                            <td class="lp_col1">${student.name}</td>
                            <td class="lp_col2">${student.group}</td>
                            <td class="lp_col3"><fmt:formatDate pattern="dd/MM/yyyy" value="${student.date}"/></td>
                        </tr>
                    </table>
                </div>
                <div class="progress_section">
                    <div class="marks">
                        <table class="list">
                            <tr>
                                <th class="lm_col0">Дисциплина</th>
                                <c:if test="${haveMarks eq 1}">
                                    <th class="lm_col1">Оценка</th>
                                </c:if>
                            </tr>
                            <c:forEach items="${marks}" var="m" varStatus="loop">
                                <tr>
                                    <td class="lm_col0">${m.discipline.discipline}</td>
                                    <c:if test="${m.mark ne -1}">
                                        <td class="lm_col1">${m.mark}</td>
                                    </c:if>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <div class="term_average_mark">
                        <div class="term">
                            Выбрать семестр
                            <form action="/student_progress" method="get">
                                <label>
                                    <input type="hidden" name="progressHidden" value="${student.id}">
                                    <select name="idSelectedTerm">
                                        <c:forEach items="${terms}" var="t">
                                            <c:choose>
                                                <c:when test="${t.id eq selectedTerm.id}">
                                                    <option selected value="${t.id}">${t.name}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${t.id}">${t.name}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>
                                </label>
                                <input class="button_term" type="submit" value="Выбрать">
                            </form>
                        </div>
                        <div class="average_mark">
                            Средняя оценка за семестр:
                            <h3><fmt:formatNumber pattern="#,##0.00 " value="${average}"/>балла</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div>&copy; 2022 Alexander Shirdin</div>
    </footer>
</div>
</body>
</html>