package controller.DispatcherServlet;

import controller.CartController;
import controller.ProductController;
import entity.Cart;
import entity.Product;
import entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Component
@RequestMapping("/Shopcar")
@SessionAttributes("")
public class ShopCar {
    @RequestMapping("/car")
    public  ModelAndView showCar(ModelAndView modelAndView, HttpSession session){
        User user = (User) session.getAttribute("user");
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        CartController cartController=context.getBean("cartController", CartController.class);

        List<Cart> carts=cartController.findProductByUserId(user.getUserid());
        modelAndView.addObject("carts",carts);
        modelAndView.setViewName("WEB-INF/Page/ShopCart");
        return modelAndView;
    }
}
