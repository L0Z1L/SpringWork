package controller.DispatcherServlet;

import controller.UserController;
import entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Register")
public class Register {
    @RequestMapping("/User")
    public String register(User user){
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        UserController userController=context.getBean("userController",UserController.class);
        String trun = userController.register(user);
        if(trun =="success"){
            return "Page/login";
        }else{
            return "Page/register";
        }


    }
}
