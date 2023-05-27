package service;



import entity.User;

import java.util.List;

public interface IUserService {
    List<User> findUserByname(String name);
    Integer addUser(User user);
    Integer updateUser(User user);
}
