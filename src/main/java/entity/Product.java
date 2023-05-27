package entity;

import lombok.Data;

import java.beans.Transient;

@Data
public class Product {
    private int product_id;
    private String product_name;
    private String product_description;
    private float product_price;
    private int product_quantity;
    private String product_category;
    private String  img_path;

}


