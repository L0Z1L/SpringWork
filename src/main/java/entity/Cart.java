package entity;

import lombok.Data;

import java.beans.Transient;

@Data
public class Cart {
    private int cart_id;
    private int user_id;
    private int product_id;
    private int quantity;
    private Product Cartproduct;


}
