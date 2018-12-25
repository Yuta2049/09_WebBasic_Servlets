// Выход пользователя
$('#logout').click(function () {
  localStorage.removeItem('userName');
  setMenuItemsVisibility();
});

// Вход пользователя
function loginUser(userName) {
  localStorage.setItem('userName', userName);
  setMenuItemsVisibility();
}

function setMenuItemsVisibility() {
  var userName = localStorage.getItem('userName');
  if (userName == null) {
    $('#login').show();
    $('#userName').hide();
    $('#logout').hide();
  } else {
    $('#userName').html(userName);
    $('#login').hide();
    $('#userName').show();
    $('#logout').show();
  }

}

function checkLoginAuthorization() {
  var login = $('.login').val();
  var password = $('.password').val();

  if (login == "" || password == "") {
    alert('Логин и пароль не должны быть пустыми!');
  } else {
    if (login == "admin" && password == "123") {
      loginUser("admin");
    } else {
      alert('Данные не верные. Верные логин "admin", пароль "123"');
    }
  }
};

function checkLoginRegistration() {
  var userLogin = $('#userLogin').val();
  var userName = $('#userNameForm').val();
  var userSurname = $('#userSurnameForm').val();
  var password = $('#password').val();
  var password2 = $('#password2').val();

  if (userLogin == "" || userName == "" || userSurname == "" || password == "" || password2 == "") {
    alert("Все поля формы должны быть заполнены!");
  } else {
    if (password != password2) {
      alert('Пароль и подтверждение пароля не совпадают!');
    } else {
      if (userLogin == "admin") {
        alert('Логин "admin" уже занят')
      } else {
        alert('Логин свободен. А вот логин "admin" уже занят');
      }
    }
  }
};
