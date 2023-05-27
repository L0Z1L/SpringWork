package controller.DispatcherServlet;

import controller.CartController;
import controller.ProductController;
import controller.UserController;
import entity.Cart;
import entity.Product;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Component
@RequestMapping("/Products")
@SessionAttributes("product")
public class Products {
    @RequestMapping("/product")
    public  String GetProduct(@RequestParam(value = "name")String name, ModelMap model){

        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        ProductController productController=context.getBean("productController", ProductController.class);
        Product product = productController.findProductByName(name).get(0);


        model.addAttribute("product",product);

        return "Page/Product";
    }
    @RequestMapping("/addproduct")
    public ModelAndView addproduct(String name,int userid, int product_id, int quantity, ModelAndView modelAndView){
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        CartController cartController=context.getBean("cartController", CartController.class);
        cartController.findCartByCartId(product_id,userid);
        cartController.addProduct(userid,product_id,quantity);

        modelAndView.setViewName("redirect:/Page/Product.jsp");
        return modelAndView;
    }




}
