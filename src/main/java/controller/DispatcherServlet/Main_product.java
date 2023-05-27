package controller.DispatcherServlet;


import controller.ProductController;
import controller.UserController;
import entity.Product;
import entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import service.impl.ProductImpl;

import javax.servlet.http.HttpSession;
import java.util.List;

@Component
@RequestMapping("/Main_products")
public class Main_product {
    @RequestMapping("/Product")
    public  ModelAndView GetMain( HttpSession session){
        ModelAndView model=new ModelAndView();
        User user= (User) session.getAttribute("user");

        if (user == null){
            model.setViewName("Page/login");
            return model;


        }
        model.setViewName("WEB-INF/Page/Main_after");
        return model;

    }
}

