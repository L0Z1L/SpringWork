package service.impl;

import entity.User;
import mapper.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.IUserService;


import java.util.List;
@Service
public class UserImpl implements IUserService {

  @Autowired
  private UserDao userDao;
    @Override
    public List<User> findUserByname(String name) {
        return this.userDao.findUserByName(name);
    }
    public Integer addUser(User user){ return this.userDao.addUser(user); }
    public Integer updateUser(User user) {
        return this.userDao.updateUser(user);
    }
}

