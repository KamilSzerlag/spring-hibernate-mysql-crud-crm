package kamilszerlag.services;

import kamilszerlag.entity.Product;

import java.util.List;

public interface ProductService {

    List<Product> getProductList();
    void saveProduct(Product product);
    void deleteProduct(int id);
    Product getProduct(int id);
}
