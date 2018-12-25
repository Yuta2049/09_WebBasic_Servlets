package dto;

import model.Product;
import model.User;

import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    List<User> getAll() {

        List<User> users = new ArrayList<User>();

        users.add(new User("Админ", "Админов", "Admin", "123", "admin@admin.com"));
        users.add(new User("Иван", "Иванов", "Ivan", "123", "ivan@ivan.com"));
        users.add(new User("Агафья", "Агафонова", "Agafia", "123", "agafia@agafia.com"));

        return users;

    }
}
