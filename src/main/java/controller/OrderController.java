package controller;

import entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.IOrderService;


import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private IOrderService iOrderService;

    public List<Order> findOrderByUserId(int user_id){
        return this.iOrderService.findOrderByUserId(user_id);
    }


    public List<Order> findOrderByStatus(int status){
        return this.iOrderService.findOrderByStatus(status);
    }


    public String deleteOrder(int order_id){
        return this.iOrderService.deleteOrder(order_id);
    }

    public void insertOrder(Order order){
        this.iOrderService.insert(order);
    }

    public void addorder(int card_id,int user_id){
       this.iOrderService.addorder(card_id, user_id);
    }
}
