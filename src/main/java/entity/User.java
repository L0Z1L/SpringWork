package entity;

import lombok.Data;

@Data
public class User {
    private Integer userid;
    private String username;
    private String password;
    private String gender;
    private String email;
    private String phone;
}
