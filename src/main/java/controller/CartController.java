package controller;

import entity.Cart;
import entity.Product;
import entity.User;
import mapper.CartDao;
import mapper.ProductDao;
import mapper.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import service.ICartService;

import java.util.List;

@Controller
public class CartController {
    @Autowired
    private CartDao cartDao;
    @Autowired
    private ProductDao productDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private ICartService iCartService;

    public void addProduct(int user_id, int product_id, int quantity) {
        this.iCartService.addProduct(user_id,product_id,quantity);

    }

    public void deleteProductByCart_id(int cart_id){
        this.cartDao.deleteProductByCart_id(cart_id);
    }

    public List<Cart> findProductByUserId(int userid){
        return this.iCartService.findCartByUserId(userid);
    }
    public List<Product> findCartByCartId(int cart_id){
        return this.iCartService.findCartByCartId(cart_id);
    }
    public List<Cart> findProductInfo(int userid){
        List<Cart> list=this.iCartService.findCartByUserId(userid);
        for(Cart cart:list){
            List<Product> list2=this.iCartService.findCartByCartId(cart.getCart_id());
            for(Product product:list2) {
                cart.setCartproduct(product);
            }
        }
        return list;
    }
    public void updateProductQuantity(int cart_id,int num){
        this.cartDao.updateProductQuantity(cart_id,num);
    }
    public void updateProductQuantity1(int cart_id,int num){
        this.cartDao.updateProductQuantity(cart_id,num);
    }


    public int find_CartByUserId(int user_id,int product_id){
        return  this.iCartService.find_CartByUserId(user_id,product_id);
    }

}
