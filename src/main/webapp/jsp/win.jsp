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
    <title>Перемога!</title>
    <link rel="stylesheet" href="<c:url value='../styles/win-style.css'/>">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="<c:url value='../scripts/script.js'/>"></script>
</head>
<body>
<div class="green-main-block">
    <h1 class="main-text">Вас повернули додому!</h1>
    <h1 class="support-text">Перемога!</h1>

    <div class="background-box">
        <button class="button-restart2" onclick="restart()">Розпочати наново!</button>
    </div>
</div>
</body>
</html>
