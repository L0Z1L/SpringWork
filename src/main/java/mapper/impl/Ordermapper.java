package mapper.impl;

import entity.Order;
import mapper.OrderDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.List;


@Repository
public class Ordermapper implements OrderDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public List<Order> findOrderByUserId(int user_id) {
        List<Order> list=jdbcTemplate.query("select * from order o inner join user u on " +
                "o.user_id=u.user_id where u.user_id=?",new BeanPropertyRowMapper<Order>(Order.class),user_id);
        return list;

    }

    @Override
    public List<Order> findOrderByStatus(int status) {
        List<Order> list1=jdbcTemplate.query("select * from order where status=?",new BeanPropertyRowMapper<Order>(Order.class),status);
        return list1;
    }


    @Override
    public Integer deleteOrder(int orderId) {
        int num=jdbcTemplate.update("delete from order where  order_id=?",orderId);
        return num;
    }


    @Override
    public Integer insertOrder(Order order) {
        int num=jdbcTemplate.update("insert into order values (?,?,?,?,?,?,?)",null,order.getUserid(),order.getProductid(),
                order.getQuantity(),order.getAmount(),null,order.getStatus());
        return num;
    }




}
