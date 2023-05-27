package mapper.impl;

import entity.User;
import mapper.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;
@Repository()
public class UserImplmapper implements UserDao {


     @Autowired
     JdbcTemplate jdbcTemplate;

    @Override
    public List<User> findUserByName(String name) {

        List<User> list=jdbcTemplate.query("select * from user where username=?",new BeanPropertyRowMapper<User>(User.class),name);

        return list;
    }
    public Integer addUser(User user){

        int num=jdbcTemplate.update("insert into user (user_id,username,password,gender," +
                "email,phone) values (?,?,?,?,?,?)",null,user.getUsername(),user.getPassword(),user.getGender(),
                user.getEmail(),user.getPhone());
        return num;

    }
    public Integer updateUser(User user){
        int num= jdbcTemplate.update("update user set username=? and password=? and gender=?" +
                "email=? and phone=?,user.getUsername(),user.getPassword(),user.getGender()" +
                "user.getEmail(),user.getPhone()");
        return num;
    }

    @Override
    public User selectById(int userid) {
        User user=jdbcTemplate.queryForObject("select * from user where user_id=?",new Object[]{userid},User.class);
        return user;
    }
}
