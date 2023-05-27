package controller;

import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.IUserService;


import java.util.List;
@Controller
public class UserController {
    @Autowired
    private IUserService iUserService;

    public String register(User user){
        List<User> list=this.iUserService.findUserByname(user.getUsername());
        if(list.size()>0){
            return "fail";
        }else {
            this.iUserService.addUser(user);
            return  "success";
        }
    }

    public User login(String username,String password){
        User user = this.iUserService.findUserByname(username).get(0);
        return user;

    }
    public String update(User user){
        Integer num=this.iUserService.updateUser(user);
        if(num>0)
            return "success";
        else
            return "fail";
    }

}
