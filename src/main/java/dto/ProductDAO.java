package dto;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    List<Product> getAll() {

        List<Product> products = new ArrayList<Product>();

        products.add(new Product(0, "Elysium (Pandorum)", 1,300000, "elysium_pandorum.jpg"));
        products.add(new Product(0, "Death star (Star wars)", 1,300000, "death_star.jpg"));
        products.add(new Product(0, "Ещё большой корабль", 1,300000, "elysium_pandorum.jpg"));
        products.add(new Product(0, "Avalon (Passengers)", 1,300000, "axiom_wall_e.jpg"));
        products.add(new Product(0, "Axiom (WALL-E)", 1,300000, "elysium_pandorum.jpg"));
        products.add(new Product(0, "Tet (Oblivion)", 1,300000, "tet_oblivion.jpg"));
        products.add(new Product(0, "Ещё большой корабль", 1,300000, "elysium_pandorum.jpg"));
        products.add(new Product(0, "Ещё большой корабль", 1,300000, "elysium_pandorum.jpg"));
        products.add(new Product(0, "Ещё большой корабль", 1,300000, "elysium_pandorum.jpg"));

        products.add(new Product(0, "Alien ship (Prometheus)", 2,300000, "alien_prometheus.jpg"));
        products.add(new Product(0, "Rocinante (Expanse)", 2,300000, "rocinante_expanse.jpg"));
        products.add(new Product(0, "Alien ship (Prometheus)", 2,300000, "alien_prometheus.jpg"));
        products.add(new Product(0, "Alien ship (Prometheus)", 2,300000, "alien_prometheus.jpg"));

        products.add(new Product(0, "Восток-1 (Юрий Гагарин)", 3,300000, "vostok_1_gagarin.jpg"));
        products.add(new Product(0, "Пепелац (Кин-Дза-Дза)", 3,300000, "pepelaz_kin_dza_dza.jpg"));
        products.add(new Product(0, "BubbleShip (Oblivion)", 3,300000, "bubbleship_oblivion.jpg"));
        products.add(new Product(0, "Пепелац (Кин-Дза-Дза)", 3,300000, "pepelaz_kin_dza_dza.jpg"));

        return products;
}

    Product findById(long id) {
        return null;
    }

}
