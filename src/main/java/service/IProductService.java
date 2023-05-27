package service;



import entity.Product;

import java.util.List;

public interface IProductService {
    List<Product> findProductByName(String name);
    List<Product> findProductByCategory(String category);
    List<Product> findProductByPrice(int startprice,int endprice);
    List<Product> selectProduct(String product_category);
}
