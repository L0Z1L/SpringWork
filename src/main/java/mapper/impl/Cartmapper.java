package mapper.impl;

import entity.Address;
import entity.Cart;
import entity.Product;
import mapper.CartDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class Cartmapper implements CartDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;


    @Override
    public void addProduct(int user_id, int product_id, int quantity) {
        jdbcTemplate.update("insert into cart values(?,?,?,?)", null, user_id, product_id, quantity);
    }

    @Override
    public void deleteProductByCart_id(int cart_id) {
        jdbcTemplate.update("delete from cart where cart_id=?", cart_id);
    }

    @Override
    public List<Cart> findCartByUserId(int userid) {
        List<Cart> cart = jdbcTemplate.query("select * from cart where user_id=?", new BeanPropertyRowMapper<Cart>(Cart.class), userid);
        return cart;
    }
    public List<Product> findCartByCartId(int cart_id) {
        List<Product> product=jdbcTemplate.query("select * from product inner join cart on product.product_id=cart.product_id where cart_id=?",new BeanPropertyRowMapper<Product>(Product.class),cart_id);
        return product;
    }
    public void updateProductQuantity(int cart_id,int num){
        jdbcTemplate.update("update cart set quantity=quantity+? where cart_id=?",num,cart_id);
    }
    public int find_CartByUserId(int user_id,int product_id) {
        int car_id;
        try{
             car_id =jdbcTemplate.queryForObject("select cart_id from  cart where user_id=? and product_id=?",new Object[]{user_id,product_id},Integer.class);
        }catch (Exception e){
            car_id =0;
        }

        return car_id;
    }
    public void updateProductQuantity1(int cart_id,int num){
        jdbcTemplate.update("update cart set quantity=? where cart_id=?",num,cart_id);
    }
}