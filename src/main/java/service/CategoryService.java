package service;

import dto.CategoryDAO;
import model.Category;

import java.util.List;

public class CategoryService {

    private CategoryDAO productDAO = new CategoryDAO();

    public CategoryService() {}

    public List<Category> findAll() {
        return productDAO.findAll();
    }

}
