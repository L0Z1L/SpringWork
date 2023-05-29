package mapper;



import entity.Order;

import java.util.List;

public interface OrderDao {
    List<Order> findOrderByUserId(int user_id);
    List<Order> findOrderByStatus(int status);
    Integer deleteOrder(int OrderId);
    Integer insertOrder(Order order);
    void addorder(int card_id,int user_id);


}
