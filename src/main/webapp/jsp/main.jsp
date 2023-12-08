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
    <title>Квест почався!</title>
    <link rel="stylesheet" href="<c:url value='../styles/main-style.css'/>">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="<c:url value='../scripts/script.js'/>"></script>
</head>
<body>
<div class="main-background">
    <form class="form_toggle" onsubmit="sendAnswer(); return false">
        <c:choose>

            <c:when test="${Steps eq 1}">
                <h1>Ви втрачаєте пам'ять! Прийняти виклик НЛО?</h1>

                <div class="form_toggle-item item-1">
                    <input id="var-1" type="radio" name="radio" value="var-1" checked>
                    <label for="var-1">
                        <span class="text">Прийняти виклик!</span>
                    </label>
                </div>

                <div class="form_toggle-item item-2">
                    <input id="var-2" type="radio" name="radio" value="var-2">
                    <label for="var-2">
                        <span class="text">Відхилити виклик!</span>
                    </label>
                </div>

                <button class="answer" type="submit" name="radio">Відповісти</button>
            </c:when>

            <c:when test="${Steps eq 2}">
                <h1>Ви прийняли виклик! Піднятись на капітанський місток?</h1>

                <div class="form_toggle-item item-1">
                    <input id="var-3" type="radio" name="radio" value="var-3" checked>
                    <label for="var-3">
                        <span class="text">Піднятись на місток!</span>
                    </label>
                </div>
                <div class="form_toggle-item item-2">
                    <input id="var-4" type="radio" name="radio" value="var-4">
                    <label for="var-4">
                        <span class="text">Відмовитися підніматися!</span>
                    </label>
                </div>
                <button class="answer" type="submit" name="radio">Відповісти</button>
            </c:when>

            <c:when test="${Steps eq 3}">
                <h1>Ви піднялися на місток! Вас питають прибульці: -Хто ви?</h1>

                <div class="form_toggle-item item-1">
                    <input id="var-5" type="radio" name="radio" value="var-5" checked>
                    <label for="var-5">
                        <span class="text">Розповісти правду!</span>
                    </label>
                </div>
                <div class="form_toggle-item item-2">
                    <input id="var-6" type="radio" name="radio" value="var-6">
                    <label for="var-6">
                        <span class="text">Збрехати!</span>
                    </label>
                </div>
                <button class="answer" type="submit" name="radio">Відповісти</button>
            </c:when>

        </c:choose>
    </form>
</div>

<c:choose>
    <c:when test="${Steps eq 1}">
        <div class="value">
            <div class="value-box" style="width: 30%;"></div>
        </div>
    </c:when>

    <c:when test="${Steps eq 2}">
        <div class="value">
            <div class="value-box" style="width: 60%;"></div>
        </div>
    </c:when>

    <c:when test="${Steps eq 3}">
        <div class="value">
            <div class="value-box" style="width: 90%;"></div>
        </div>
    </c:when>
</c:choose>

</body>
</html>
