package service.impl;

import entity.Cart;
import entity.Order;
import entity.Product;
import mapper.CartDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ICartService;

import java.util.List;

@Service
public class CartImpl implements ICartService {
    @Autowired
    private CartDao cartDao;

    @Override
    public void addProduct(int user_id, int product_id, int quantity) {
        this.cartDao.addProduct(user_id,product_id,quantity);
    }

    @Override
    public List<Cart> findCartByUserId(int userid) {
        return this.cartDao.findCartByUserId(userid);
    }

    public List<Product> findCartByCartId(int cart_id){
        return this.cartDao.findCartByCartId(cart_id);
    }

    public int find_CartByUserId(int user_id,int product_id){return this.cartDao.find_CartByUserId(user_id,product_id);}

    @Override
    public void deleteProductByCart_id(int cat_id) {
        this.cartDao.deleteProductByCart_id( cat_id);
    }


}
