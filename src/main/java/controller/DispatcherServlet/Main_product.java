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
import java.util.ArrayList;
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

    @RequestMapping("/GetProducts")
    public  ModelAndView GetProducts( HttpSession session,ModelAndView model) {
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        ProductController productController=context.getBean("productController", ProductController.class);

        List<Product> products = productController.selectProduct("clothes");
        List<Product> products_clothes = productController.selectProduct("book");
        List<Product> products_Recommend = productController.selectProduct("Recommend");

        List<List<Product>> productList= new ArrayList<List<Product>>();
        productList.add(products);
        productList.add(products_clothes);
        productList.add(products_Recommend);

        List<Product> lists=productController.findProductByPrice(100,500);

        model.addObject("show_products",lists);
        model.addObject("products_Book",productList);
        model.setViewName("WEB-INF/Page/Main_after");
        return model;
    }


}

