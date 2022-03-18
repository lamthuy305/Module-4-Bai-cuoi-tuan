package com.codegym.service.product;

import com.codegym.model.Product;
import com.codegym.service.IProductService;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    private static List<Product> products;

    static {
        products = new ArrayList<>();
        products.add(new Product(0, "Iphone 13", 25000000, "new", "anhip13"));
        products.add(new Product(1, "Iphone 12", 20000000, "new", "anhip12"));
        products.add(new Product(2, "Iphone 11", 15000000, "new", "anhip11"));
        products.add(new Product(3, "SamSung", 25000000, "new", "anhSS"));
        products.add(new Product(4, "Huawei", 10000000, "new", "anhhw"));
    }


    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public Product findOne(int id) {
        return products.get(id);
    }

    @Override
    public void create(Product product) {
        products.add(product);
    }

    @Override
    public void delete(int id) {
        products.remove(id);
    }

    @Override
    public void update(int id, Product product) {
        products.set(id, product);
    }
}
