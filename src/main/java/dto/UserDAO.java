package dto;

import model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class UserDAO {

    public List<User> findAll() {
        List<User> users = new ArrayList<User>();

        users.add(new User("Админ", "Админов", "admin", "123", "admin@admin.com"));
        users.add(new User("Иван", "Иванов", "ivan", "123", "ivan@ivan.com"));
        users.add(new User("Агафья", "Агафонова", "agafia", "123", "agafia@agafia.com"));

        return users;
    }

//    public User findByLogin(String login) {
//        List<User> users = findAll();
//
//        User user = users.stream().filter(o -> o.getLogin().equals(login)).findFirst().get();
//
//        return user;
//    }

    public User findByLoginAndPassword(String login, String password) {
        List<User> users = findAll();

        return users.stream().filter(o -> o.getLogin().equals(login) && o.getPassword().equals(password)).findFirst().orElse(null);
    }

}
