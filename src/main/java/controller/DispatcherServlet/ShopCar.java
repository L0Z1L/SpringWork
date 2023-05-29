package controller.DispatcherServlet;

import controller.CartController;
import controller.OrderController;
import controller.ProductController;
import entity.Cart;
import entity.Product;
import entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLDocument;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Component
@RequestMapping("/Shopcar")
@SessionAttributes("")
public class ShopCar {

    @RequestMapping("/car")
    public  ModelAndView showCar(ModelAndView modelAndView, HttpSession session){
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        User user = (User) session.getAttribute("user");
        CartController cartController=context.getBean("cartController", CartController.class);
        List<Cart> carts=cartController.findProductInfo(user.getUserid());
        modelAndView.addObject("carts",carts);
        modelAndView.setViewName("WEB-INF/Page/ShopCart");
        return modelAndView;
    }

    @RequestMapping("/update/{cart_id}/{num}")
    public  String updateCar(@PathVariable(value = "cart_id") int cart_id,@PathVariable(value ="num" ) int num){
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        CartController cartController=context.getBean("cartController", CartController.class);
        System.out.println("cart_id");
        cartController.updateProductQuantity1(cart_id, num);

        return "redirect:/Shopcar/car";
    }
    @PostMapping("/test")
    public String add_order(@RequestParam (value="cart_id") List<String> cart_id,HttpSession session)  {
        User user = (User) session.getAttribute("user");

        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        CartController cartController=context.getBean("cartController", CartController.class);

        OrderController orderController=context.getBean("orderController", OrderController.class);

        Iterator iterator=cart_id.iterator();
        while(iterator.hasNext()){
            orderController.addorder(Integer.parseInt((String)iterator.next()),user.getUserid());


        }

        iterator=cart_id.iterator();
        while(iterator.hasNext()){
            cartController.deleteProductByCart_id(Integer.parseInt((String)iterator.next()));


        }

        return "/Order/orders";
    }
}
