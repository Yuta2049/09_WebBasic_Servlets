package dto;

import model.Category;

import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {

    public List<Category> findAll() {

        List<Category> categories = new ArrayList<>();

        categories.add(new Category(1, "Планетарные станции и корабли поколений"));
        categories.add(new Category(2, "Звездолеты среднего размера"));
        categories.add(new Category(3, "Малые звездолеты"));

        return categories;
    }
}