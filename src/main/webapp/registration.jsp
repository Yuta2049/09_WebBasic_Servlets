<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Регистрация</title>
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script>
		$(function () {
			$("#header").load("header.jsp");
		});
        $(function () {
            $("#footer").load("footer.jsp");
        });
	</script>
</head>

<body>

	<div id="header">
	</div>

	<div class="middle">
        <H1>Регистрация</H1>
		<form>
			<label>Имя:</label>
				<input id="userNameForm">
			<br />
			<label>Фамилия:</label>
				<input id="userSurnameForm">
			<br />
			<label>Логин:</label>
				<input id="userLogin">
			<br />
			<label>Пароль:</label>
				<input type="password" id="password">
			<br />
			<label>Повторить пароль:</label>
				<input type="password" id="password2">
			<br />
			<input type="button" class="button" value="Регистрация" onClick="checkLoginRegistration();">
		</form>
	</div>

	<div id="footer">
	</div>

	<script type="text/javascript" src="js/users.js"></script>

    <script type="text/javascript" src="js/cart.js"></script>

    <script type="text/javascript" src="js/search.js"></script>

</body>

</html>