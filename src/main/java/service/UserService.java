package service;

import dto.UserDAO;
import model.User;

import java.util.List;

public class UserService {

    private UserDAO userDAO = new UserDAO();

    public UserService() {}

    public List<User> findAll() {
        return userDAO.findAll();
    }

//    public User findByLogin(String login) {
//        return userDAO.findByLogin(login);
//    }

    public User findByLoginAndPassword(String login, String password) {
        return userDAO.findByLoginAndPassword(login, password);
    }

}
