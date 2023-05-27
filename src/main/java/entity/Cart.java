package entity;

import lombok.Data;

import java.beans.Transient;

@Data
public class Cart {
    private int cart_id;
    private int user_id;
    private int product_id;
    private int quantity;

//    private User Cartuser;
    private Product Cartproduct;
//    @Transient
//    public User getCartuser() {
//        return Cartuser;
//    }
//
//    public void setCartuser(User cartuser) {
//        Cartuser = cartuser;
//    }
    @Transient
    public Product getCartproduct() {
        return Cartproduct;
    }

    public void setCartproduct(Product cartproduct) {
        Cartproduct = cartproduct;
    }
}
