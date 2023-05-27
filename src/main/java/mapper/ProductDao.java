package mapper;



import entity.Product;

import java.util.List;

public interface ProductDao {
    List<Product> findProductByName(String name);
    List<Product> findProductByCategoty(String category);
    List<Product> findProductByPrice(int startprice,int endprice);
//    Integer buyProduct(Product product,int num);
    List<Product> findAllProduct();
    Product selectByProductId(int productid);
    List<Product> selectProduct(String product_category);
}
