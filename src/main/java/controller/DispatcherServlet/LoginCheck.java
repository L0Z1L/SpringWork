package controller.DispatcherServlet;

import controller.ProductController;
import controller.UserController;
import entity.Product;
import entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


@Component
@RequestMapping("/LoginCheck")
@SessionAttributes(value={"user"})
public class LoginCheck {
    @RequestMapping("/check")
    public String  Logincheck(String username, String password, Model model) {

        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        UserController userController=context.getBean("userController",UserController.class);
        User user= userController.login(username,password);
        if(password.equals(user.getPassword())){
            model.addAttribute("user",user);
            return "redirect:/Main_products/GetProducts";

        }

            return "Page/login";

    }


}
