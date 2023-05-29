package controller.DispatcherServlet;

import controller.ProductController;
import entity.Product;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebFilter(filterName = "catlog",urlPatterns = {"/Page/catalog.jsp"})
public class catlog_Filter implements Filter
{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter初始化");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
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

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        request.setAttribute("show_products",lists);
        request.setAttribute("products_Books",productList);

        filterChain.doFilter(request,servletResponse);

    }

    @Override
    public void destroy() {
        System.out.println("Filter销毁");
    }
}
