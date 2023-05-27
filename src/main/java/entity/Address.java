package entity;

import lombok.Data;

@Data
public class Address {
    private int addressid;
    private String recipient_name;
    private String recipient_phone;
    private String province;
    private String city;
    private String district;
    private String details;
}
