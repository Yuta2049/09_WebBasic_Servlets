package service;

import dto.ProductDAO;
import model.Product;

import java.util.List;

public class ProductService {

    private ProductDAO productDAO = new ProductDAO();

    public ProductService() {}

    public List<Product> findAll() {
        return productDAO.findAll();
    }

}
