package service;


import entity.Order;

import java.util.List;

public interface IOrderService {
    List<Order> findOrderByUserId(int user_id);
    List<Order> findOrderByStatus(int status);
    String deleteOrder(int orderId);
    String insert(Order order);
   void addorder(int card_id,int user_id);
}
