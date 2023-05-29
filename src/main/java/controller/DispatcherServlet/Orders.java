package controller.DispatcherServlet;

import controller.OrderController;
import controller.ProductController;
import entity.Order;
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
@RequestMapping("/Order")
public class Orders {

    @RequestMapping("/orders")
    public ModelAndView GetProduct(ModelAndView modelAndView, HttpSession session){
        User user= (User) session.getAttribute("user");
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        OrderController orderController=context.getBean("orderController", OrderController.class);
        List<Order> order = orderController.findOrderByUserId(user.getUserid());


        modelAndView.addObject("orders",order);
        modelAndView.setViewName("Page/Order");
        return modelAndView;
    }
}
