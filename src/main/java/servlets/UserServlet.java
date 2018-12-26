package servlets;

import model.Product;
import model.User;
import service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UserServlet extends HttpServlet {

    private UserService userService = new UserService();

    public void init(ServletConfig servletConfig) {
        try {
            super.init(servletConfig);
        } catch (ServletException e) {
            e.printStackTrace();        // УБРАТЬ ДЛЯ ТИМУРА !!!
        }
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doGet(req, resp);
        List<User> users = userService.findAll();
        req.setAttribute("users", users);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/users.jsp");
        dispatcher.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //String name = req.getParameter("name");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        //int age = Integer.parseInt(req.getParameter("age"));
        //User user = new User(name, age);
        //service.saveUser(user);
        User user = userService.findByLoginAndPassword(login, password);
        //resp.sendRedirect("/users");

        req.getSession().setAttribute("user", user);

        req.getRequestDispatcher("login.jsp").forward(req, resp);

        //resp.sendRedirect("/users");


    }

}
