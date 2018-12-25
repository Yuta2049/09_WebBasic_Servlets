<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Авторизация</title>
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function () {
            $("#header").load("header.html");
        });
        $(function () {
            $("#footer").load("footer.html");
        });
    </script>

</head>

<body>

    <div id="header">
    </div>

    <div class="middle">
        <H1>Авторизация</H1>
        <form>
            <label>Логин:</label>
            <input class="login" required><br />
            <label>Пароль:</label>
            <input type="password" class="password" required>
            <br />
            <input type="button" class="button" value="Вход" onClick="checkLoginAuthorization();">

        </form>
        <a href="registration.html">Зарегистрироваться</a>
    </div>

    <div id="footer">
    </div>

    <script type="text/javascript" src="js/users.js"></script>

    <script type="text/javascript" src="js/cart.js"></script>

    <script type="text/javascript" src="js/search.js"></script>

</body>

</html>