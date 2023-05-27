package service;


import entity.Order;

import java.util.List;

public interface IOrderService {
    List<Order> findOrderByUserId(int user_id);
    List<Order> findOrderByStatus(int status);
    String deleteOrder(int orderId);
}
