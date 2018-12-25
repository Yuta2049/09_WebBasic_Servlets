<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">

    <title>Интернет-магазин "АВРОРА". Самый большой выбор звездолетов и планетарных станций в 9 вселенных. В наличии и под заказ</title>

    <link rel="stylesheet" href="css/style.css">

    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>

    <script type="text/javascript" src="js/products.js"></script>

    <link rel="shortcut icon" href="images/favicon.ico" />

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

    <div id="main" class="main">

        <div id="shoppingCart">
            <div id="cartItemsContainer">
                <h1>Корзина</h1>
                <b class="openCloseCart" aria-hidden="true">x</b>
                <div id="cartItems"></div>
                <div>Сумма товаров:
                    <span id="productsAmount"></span>
                </div>
                <div>Скидка:
                    <span id="discountSize"></span>%
                    <span id="discountAmount"></span>
                </div>
                <div>Итого:
                    <span id="productsTotal"></span>
                </div>
                <button id="registerOrder">Оформить заказ</button>
            </div>
        </div>

        <div id="searchWindow">
            <div id="searchItemsContainer">
                <h1>Поиск</h1>
                <b class="openCloseSearch" aria-hidden="true">x</b>
                Найти:
                <input id="findText">
                <button id="findProducts" onclick="findProducts()">Найти</button>
                <div id="searchItems"></div>
            </div>
        </div>

<h2>Hello World!</h2>

<a href="servlet">Click here to see servlet</a>


        <script type="text/javascript">

            var products = generateProducts();

            for (iCat = 1; iCat < 4; iCat++) {

                var textCat = '<div class="category">';
                switch (iCat) {
                    case 1:
                        textCat += '<H2>Планетарные станции и корабли поколений</H2>';
                        break;
                    case 2:
                        textCat += '<H2>Звездолеты среднего размера</H2>';
                        break;
                    case 3:
                        textCat += '<H2>Малые звездолеты</H2>';
                }

                textCat += '<hr>';
                textCat += '</div>';

                textCat += '<ul id="category' + iCat + '" class="products">';

                var mainDiv = document.getElementById('main');

                //productsDiv.insertAdjacentHTML('beforeEnd', text);
                mainDiv.insertAdjacentHTML('beforeEnd', textCat);

                var filteredProducts = $.grep(products, function (n, ind) {
                    return (n.category == iCat);
                });

                for (var i in filteredProducts) {

                    //var text = '<li class="product" id="b' + iCat + i + '" onclick="openTab3(\'b' + iCat + i + '\', \'c' + iCat + i + '\');">';
                    var text = '<li class="product" id="a' + iCat + i + '">';

                    //text += '<div class="visibleSection">';
                    text += '<div class="visibleSection" id="b' + iCat + i + '"onclick="showHiddenTab(\'a' + iCat + i + '\', \'b' + iCat + i + '\', \'c' + iCat + i + '\');">';


                    text += '<div class="image">';
                    text += '<img src="images/' + filteredProducts[i].image + '">';
                    text += '</div>';
                    text += '<div class="productName">';
                    text += filteredProducts[i].name;
                    text += '</div>';
                    text += '</div>';
                    //text += '<div id="c1" class="hiddenSection">';
                    text += '<div class="hiddenSection" id="c' + iCat + i + '" onclick="hideHiddenTab(\'a' + iCat + i + '\', \'b' + iCat + i + '\', \'c' + iCat + i + '\');">';

                    text += '<div class="image">';
                    text += '<img src="images/' + filteredProducts[i].image + '">';
                    text += '</div>';

                    text += '<div class="productName">';
                    text += filteredProducts[i].name;
                    text += '</div>';
                    text += '<div class="price">';
                    text += filteredProducts[i].price;
                    text += '</div>';

                    text += '<button class="add">Да, я хочу этот корабль!</button>';

                    text += '</div>';
                    text += '</li>';

                    var productsDiv = document.getElementById('category' + iCat);
                    productsDiv.insertAdjacentHTML('beforeEnd', text);

                }

                textCat = '</ul>';

                main.insertAdjacentHTML('beforeEnd', textCat);

            }
        </script>

    </div>

	<div id="footer">
	</div>

    <script>

        function openClose() {
            $('#shoppingCart').toggle();
        }

    </script>

    <script type="text/javascript" src="js/cart.js"></script>

    <script type="text/javascript" src="js/search.js"></script>

    <script type="text/javascript" src="js/users.js"></script>

</body>

</html>