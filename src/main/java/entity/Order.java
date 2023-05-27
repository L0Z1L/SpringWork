package entity;

import lombok.Data;

import java.beans.Transient;
import java.util.Date;

@Data
public class Order {
    private int orderid;
    private int quantity;
    private float amount;
    private Date order_time;
    private int status;
    private int userid;
    private int productid;
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
