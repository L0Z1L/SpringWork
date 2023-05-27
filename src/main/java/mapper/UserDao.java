package mapper;



import entity.User;

import java.util.List;

public interface UserDao {
    List<User> findUserByName(String name);
    Integer addUser(User user);
    Integer updateUser(User user);
    User selectById(int userid);
}

