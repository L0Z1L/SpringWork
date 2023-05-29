import configs.JdbcConfig;
import controller.CartController;
import controller.OrderController;
import controller.UserController;
import entity.Cart;
import entity.Order;
import entity.Product;
import entity.User;
import mapper.impl.Ordermapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import java.util.List;

public class test {


    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        OrderController orderController=context.getBean("orderController", OrderController.class);
        List<Order> order = orderController.findOrderByUserId(36);
        System.out.println(order);

//


    }
}
