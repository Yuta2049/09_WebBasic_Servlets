package servlets;

import model.Product;
import service.ProductService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//@WebServlet("/")
public class ProductServlet extends HttpServlet {

    private ProductService productService = new ProductService();

    public void init(ServletConfig servletConfig) {
        try {
            super.init(servletConfig);
        } catch (ServletException e) {
            e.printStackTrace();        // УБРАТЬ ДЛЯ ТИМУРА !!!
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = productService.findAll();
        req.setAttribute("products", products);


        //RequestDispatcher dispatcher = req.getRequestDispatcher("/products.jsp");
        //RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
        //dispatcher.forward(req, resp);


        //req.getSession().setAttribute("products", products);

        //getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);

        //req.getRequestDispatcher("login.jsp").forward(req, resp);


        ServletContext selvletContext = getServletContext();
        selvletContext.setAttribute("products", products);

        //getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        //getServletContext().getRequestDispatcher("").forward(req, resp);
        getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);


    }




}
