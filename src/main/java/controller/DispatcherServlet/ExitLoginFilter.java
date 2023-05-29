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
@WebFilter(filterName = "Exitlogin",urlPatterns = {"/Page/catalog.jsp"})
public class ExitLoginFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("ExitFilter初始化");
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request= (HttpServletRequest) servletRequest;
        request.getSession().invalidate();
        filterChain.doFilter(request,servletResponse);
    }

    @Override
    public void destroy() {
        System.out.println("Filter销毁");
    }
}