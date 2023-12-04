package com.example.productmanager.service.impl;

import com.example.productmanager.model.Product;
import com.example.productmanager.service.IProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Samsung Note 20 Ultra", "2k UltraHD", 25000000));
        products.put(2, new Product(2, "Iphone 15 ProMax", "Titan", 30000000));
        products.put(3, new Product(3, "Sony Xperia XIII", "7nm", 23000000));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findByName(String name) {
        return products.get(name);
    }
}
