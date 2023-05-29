package mapper;


import entity.Cart;
import entity.Product;

import java.util.List;

public interface CartDao {
    void addProduct(int user_id,int product_id,int quantity);
    void deleteProductByCart_id(int cart_id);
    List<Cart> findCartByUserId(int userid);
    List<Product> findCartByCartId(int cart_id);
    void updateProductQuantity(int cart_id,int num);
    int find_CartByUserId(int user_id,int product_id);
    void updateProductQuantity1(int user_id,int product_id);

}
