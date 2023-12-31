<%--
  Created by IntelliJ IDEA.
  User: Богдан Васильєв
  Date: 27.11.2023
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Витрачено!</title>
    <link rel="stylesheet" href="<c:url value='../styles/defeat-style.css'/>">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="<c:url value='../scripts/script.js'/>"></script>
</head>
<body>
<div class="red-main-block">
    <c:choose>
        <c:when test="${Steps eq 1}">
            <h1 class="main-text">Ви відхилили виклик!</h1>
        </c:when>

        <c:when test="${Steps eq 2}">
            <h1 class="main-text">Ви не пішли на переговори!</h1>
        </c:when>

        <c:when test="${Steps eq 3}">
            <h1 class="main-text">Ваша брехня була викрита!</h1>
        </c:when>
    </c:choose>

    <h1 class="support-text">Поразка!</h1>

    <div class="background-box">
        <button class="button-restart1" onclick="restart()">Спробувати ще раз!</button>
    </div>
</div>
</body>
</html>
