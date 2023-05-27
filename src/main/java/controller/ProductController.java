package controller;

import entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.IProductService;


import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private IProductService iProductService;

    public List<Product> findProductByName(String product_name) {
        return this.iProductService.findProductByName(product_name);
    }

    public List<Product> findProductByCategory(String product_category) {
        return this.iProductService.findProductByCategory(product_category);
    }


    public List<Product> findProductByPrice(int startprice, int endprice) {
        return this.iProductService.findProductByPrice(startprice,endprice);
    }

    public List<Product> selectProduct(String product_category) {
        return this.iProductService.selectProduct(product_category);
    }

}
