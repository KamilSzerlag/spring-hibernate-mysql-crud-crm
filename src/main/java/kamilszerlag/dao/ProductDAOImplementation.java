package kamilszerlag.dao;

import kamilszerlag.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.List;


@Repository
public class ProductDAOImplementation implements ProductDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<Product> getProductList() {
        Session currentSession = sessionFactory.getCurrentSession();

        Query<Product> queries = currentSession.createQuery("from Product",Product.class );

         List<Product> productList = queries.getResultList();

         return productList;
    }

    @Override
    public void saveProduct(Product product) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(product);
    }


    @Override
    public void deleteProduct(int id) {

        Session currentSession = sessionFactory.getCurrentSession();

        Product product = currentSession.get(Product.class,id);

        currentSession.delete(product);

    }

    public Product getProduct(int id) {
        Session currentSession = sessionFactory.getCurrentSession();

        Product product = currentSession.get(Product.class,id);


        return product;

    }
}
