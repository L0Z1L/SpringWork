package controller.DispatcherServlet;

import controller.CartController;
import controller.UserController;
import entity.Cart;
import entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebFilter(filterName = "CartFilter",value={"/WEB-INF/Page/ShopCart.jsp"})
public class CarFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("CartFilter初始化");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("123456");
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        User user = (User) req.getSession().getAttribute("user");

        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        CartController cartController=context.getBean("cartController", CartController.class);
        List<Cart> carts=cartController.findProductByUserId(user.getUserid());
        System.out.println(carts);
        req.setAttribute("carts",carts);
        filterChain.doFilter(req,servletResponse);

    }
}
