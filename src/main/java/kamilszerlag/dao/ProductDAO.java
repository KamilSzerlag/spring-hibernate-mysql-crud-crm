package kamilszerlag.dao;

import kamilszerlag.entity.Product;

import java.util.List;

public interface ProductDAO {

    List<Product> getProductList();
    void saveProduct(Product product);
    void deleteProduct(int id);
    Product getProduct(int id);
}
