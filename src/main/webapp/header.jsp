<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<ul id="menu">
    <li>
        <a href="index.jsp"><img src="images/Aurora_logo.png" style="width: 180px;"></a>
    </li>
    <li id="login">
        <a href="login.jsp">Авторизация</a>
    </li>
    <li id="userName"></li>
    <li id="logout">
        <a href="login.jsp">Выход</a>
    </li>
    <li id="registration">
        <a href="registration.jsp">Регистрация</a>
    </li>
</ul>

<script>
    setMenuItemsVisibility();
</script>

<div id="cart-container">
    <img src="images/spa-constellation@3x.png" style="width:40px; height: 40px;">
    <button id="openCloseCart" onclick="openClose()">Корзина</button>
    <span id="itemCount"></span>
</div>

<div id="search-container">
    <button id="openCloseSearch" onclick="openCloseSearch()">Поиск...</button>
</div>

<script type="text/javascript" src="js/users.js"></script>