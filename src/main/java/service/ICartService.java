package service;


import entity.Cart;
import entity.Product;

import java.util.List;

public interface ICartService {
    void addProduct(int user_id, int product_id, int quantity);
    List<Cart> findCartByUserId(int cart_id);
    List<Product> findCartByCartId(int cart_id);
}
