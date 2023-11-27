<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Таємниці Всесвіту</title>
    <link rel="stylesheet" href="<c:url value='styles/style.css'/>">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="<c:url value='scripts/script.js'/>"></script>
</head>
<body>
<div class="background">
    <div class="header-block">
        <h1>Таємниці Всесвіту</h1>
    </div>
    <div class="main-text-block">
        <p class="main-text"> У тихому провінційному місті мешкав звичайний хлопець
            на ім'я Джордж. Він вів спокійне життя і працював у невеликій місцевій
            крамниці. Однак, його світ перекинувся одного дня, коли він випадково
            знайшов дивну металеву платівку в лісі поблизу. Інтерес захопив Джорджа,
            і почав досліджувати загадковий об'єкт. Несподівано, платівка зайнялася
            яскравим світлом, оточивши його. В той же час він відчув, що щось
            відбувається з його свідомістю. Сплеск яскравого світла засліпив його,
            і коли світло розвіялося, Джордж виявив себе лежачим у незнайомому коридорі
            з металевими стінами. </p>
    </div>
    <div class="support-text-block">
        <p class="support-text"> *Допоможи Джорджу зрозуміти
            що трапилось і повернутись додому... </p>
    </div>
</div>
<div class="background-2">
    <button class="button-start" onclick="init()"> Почати квест! </button>
</div>
</body>
</html>