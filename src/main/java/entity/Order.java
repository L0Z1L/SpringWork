package entity;

import lombok.Data;

import java.beans.Transient;
import java.util.Date;

@Data
public class Order {
    private int order_id;



    private int quantity;

    private float amount;

    private String order_time;

    private int user_id;

    private int product_id;



    private User orderuser;

    private Product orderproduct;

    @Transient
    public User getOrderuser() {
        return orderuser;
    }

    public void setOrderuser(User orderuser) {
        this.orderuser = orderuser;
    }
    @Transient
    public Product getOrderproduct() {
        return orderproduct;
    }

    public void setOrderproduct(Product orderproduct) {
        this.orderproduct = orderproduct;
    }
}
