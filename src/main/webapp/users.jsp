<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Список пользователей</title>
</head>
<body>


Наш найденный пользователь:

<table>
<tr>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.login}</td>
            <td>${user.password}</td>
            </tr>
            </table>

<%--
<table>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.login}</td>
            <td>${user.password}</td>
        </tr>
    </c:forEach>
</table>
--%>

</body>
</html>