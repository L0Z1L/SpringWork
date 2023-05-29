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
        List<Order> list=jdbcTemplate.query("select * from orders o inner join user u on " +
                "   o.user_id=u.userid  inner join product as p on p.product_id = o.product_id where u.userid=?",new BeanPropertyRowMapper<Order>(Order.class),user_id);
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
        int num=jdbcTemplate.update("insert into order values (?,?,?,?,?,?)",null,order.getUser_id(),order.getProduct_id(),
                order.getQuantity(),order.getAmount(),null);
        return num;
    }

//    @Override
//    public List<Order> findorder(int card_id) {
//        List<Order> list=jdbcTemplate.query("select orders.*,product.* from orders " +
//                "inner join product on orders.product_id=product.product_id" +
//                "  inner join cart on orders.product_id=cart.product_id where cart.cart_id=?",new BeanPropertyRowMapper<Order>(Order.class),card_id);
//        return list;
//    }
    public void addorder(int card_id,int user_id) {
        jdbcTemplate.update("call inserorder(?, ?)",card_id,user_id);
    }



}
