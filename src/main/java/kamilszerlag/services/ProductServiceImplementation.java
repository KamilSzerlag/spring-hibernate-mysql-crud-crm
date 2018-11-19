package kamilszerlag.services;

import kamilszerlag.dao.ProductDAO;
import kamilszerlag.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductServiceImplementation implements ProductService {

    @Autowired
    private ProductDAO productDAO;

    @Override
    @Transactional(readOnly = true, propagation = Propagation.NOT_SUPPORTED)
    public List<Product> getProductList() {
        return productDAO.getProductList();
    }

    @Override
    @Transactional(readOnly = true)
    public void saveProduct(Product product) {
        productDAO.saveProduct(product);
    }

    @Override
    @Transactional
    public void deleteProduct(int id){
        productDAO.deleteProduct(id);
    }

    @Override
    @Transactional
    public Product getProduct(int id) {
       return productDAO.getProduct(id);
    }
}
