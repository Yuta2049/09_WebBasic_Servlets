<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Список пользователей</title>
</head>
<body>


1111
<table>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.name}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
</table>

22222

<table>
    <c:forEach var="productIterator" items="${products}">
        <tr>
            <td>${productIterator.name}</td>
            <td>${productIterator.price}</td>
        </tr>
    </c:forEach>
</table>

3333

<table>
   <c:forEach items="${products}" var = "product">
        <tr>
            <td>${product.name}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
</table>




</body>
</html>