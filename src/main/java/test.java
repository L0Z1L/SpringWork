import controller.CartController;
import controller.UserController;
import entity.Cart;
import entity.Product;
import entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.impl.ProductImpl;

import java.util.List;

public class test {


    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        CartController cartController=context.getBean("cartController", CartController.class);
//        List<Cart> carts=cartController.findProductInfo(36);
//        System.out.println(carts);
        cartController.updateProductQuantity(53,3);


    }
}
