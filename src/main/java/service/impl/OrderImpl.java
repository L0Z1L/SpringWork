package service.impl;

import entity.Order;
import entity.Product;
import entity.User;
import mapper.OrderDao;
import mapper.ProductDao;
import mapper.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.IOrderService;


import javax.annotation.Resource;
import java.util.List;
@Service
public class OrderImpl implements IOrderService {
    @Autowired
    private OrderDao orderDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private ProductDao productDao;
    @Override
    public List<Order> findOrderByUserId(int user_id) {
        List<Order> list=this.orderDao.findOrderByUserId(user_id);
        for(Order order:list){
            User user=this.userDao.selectById(order.getUser_id());
            Product product=this.productDao.selectByProductId(order.getProduct_id());
            order.setOrderproduct(product);
            order.setOrderuser(user);
        }
        return list;
    }

    @Override
    public List<Order> findOrderByStatus(int status) {
        List<Order> list=this.orderDao.findOrderByStatus(status);
        for(Order order:list){
            User user=this.userDao.selectById(order.getUser_id());
            Product product=this.productDao.selectByProductId(order.getProduct_id());
            order.setOrderproduct(product);
            order.setOrderuser(user);
        }
        return list;
    }
    public String insert(Order order) {
       int num=this.orderDao.insertOrder(order);
       if(num>0)
           return "success";
       else
           return "fail";
    }

    @Override
    public void addorder(int card_id, int user_id) {
        this.orderDao.addorder(card_id,user_id);
    }


    public String deleteOrder(int orderId) {
        int num=this.orderDao.deleteOrder(orderId);
        if(num>0)
            return "success";
        else
            return "fail";
    }
//    public List<Order> addorder(int card_id){
//        List<Order> list=orderDao.addorder(card_id);
//        for(Order order:list){
//
//            Product product=this.productDao.selectByProductId(order.getProduct_id());
//            order.setOrderproduct(product);
//
//        }
//        return list;
//    }
}
