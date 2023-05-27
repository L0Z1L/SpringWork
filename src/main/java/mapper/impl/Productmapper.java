package mapper.impl;

import entity.Product;
import mapper.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository
public class Productmapper implements ProductDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public List<Product> findProductByName(String name) {
        List<Product> list=jdbcTemplate.query("select * from product where product_name=?", new BeanPropertyRowMapper<Product>(Product.class),name);
        return list;
    }

    @Override
    public List<Product> findProductByCategoty(String category) {
        List<Product> list=jdbcTemplate.query("select * from product where category=?", new BeanPropertyRowMapper<Product>(Product.class),category);
        return list;
    }

    @Override
    public List<Product> findProductByPrice(int startprice, int endprice) {
        List<Product> list=jdbcTemplate.query("select * from product where price between ? and ?", new BeanPropertyRowMapper<Product>(Product.class),startprice,endprice);
        return list;
    }

    @Override
    public List<Product> findAllProduct() {
        List<Product> list=jdbcTemplate.query("select * from product",new BeanPropertyRowMapper<Product>(Product.class));
        return list;
    }

    @Override
    public Product selectByProductId(int productid) {
       Product product=jdbcTemplate.queryForObject("select * from product where product_id=?",new Object[]{productid},Product.class);
        return product;
    }


    public List<Product> selectProduct(String  product_category){
        List<Product> list=jdbcTemplate.query("select * from product where product_category=? order by product_quantity desc limit 3",new BeanPropertyRowMapper<Product>(Product.class),product_category);
        return list;
    }
//    }
}
