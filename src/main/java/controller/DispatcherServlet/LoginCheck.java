package controller.DispatcherServlet;

import controller.ProductController;
import controller.UserController;
import entity.Product;
import entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Component
@RequestMapping("/LoginCheck")
@SessionAttributes(value={"user","products_Book"})
public class LoginCheck {
    @RequestMapping("/check")
    public ModelAndView  Logincheck(String username, String password) {
        ModelAndView model=new ModelAndView();
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        UserController userController=context.getBean("userController",UserController.class);
        User user= userController.login(username,password);
        if(password.equals(user.getPassword())){
            ProductController productController=context.getBean("productController", ProductController.class);

            List<Product> products = productController.selectProduct("clothes");

            List<Product> products_clothes = productController.selectProduct("book");
            List<Product> products_Recommend = productController.selectProduct("Recommend");

            List<List<Product>> productList= new ArrayList<List<Product>>();
            productList.add(products);
            productList.add(products_clothes);
            productList.add(products_Recommend);
            model.addObject("products_Book",productList);
            model.addObject("user",user);
            model.setViewName("WEB-INF/Page/Main_after");

            return model;
        }
          model.setViewName("Page/login");
            return model;

    }


}
