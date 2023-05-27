package mapper;


import entity.Cart;
import entity.Product;

import java.util.List;

public interface CartDao {
    void addProduct(int user_id,int product_id,int quantity);
    void deleteProductByProductId(int product_id);
    List<Cart> findCartByUserId(int userid);
    List<Product> findCartByCartId(int cart_id);
    void updateProductQuantity(int cart_id,int num);
}
