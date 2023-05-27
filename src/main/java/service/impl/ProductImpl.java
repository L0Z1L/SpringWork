package service.impl;

import entity.Product;
import mapper.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.IProductService;


import java.util.List;
@Service
public class ProductImpl implements IProductService {
    @Autowired
    private ProductDao productDao;
    @Override
    public List<Product> findProductByName(String name) {
        return this.productDao.findProductByName(name);
    }

    @Override
    public List<Product> findProductByCategory(String category) {
        return this.productDao.findProductByCategoty(category);
    }

    @Override
    public List<Product> findProductByPrice(int startprice, int endprice) {
        return this.productDao.findProductByPrice(startprice,endprice);
    }

    @Override
    public List<Product> selectProduct(String product_category) {
        return this.productDao.selectProduct(product_category);
    }


//    public Integer buyProduct(Product product, int num) {
//        return null;
//    }

//    @Override
//    public Integer buyProduct(Product product, int num) {
//        return this.productDao.buyProduct(product,num);
//    }
}
