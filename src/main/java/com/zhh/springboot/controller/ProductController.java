package com.zhh.springboot.controller;

import com.zhh.springboot.model.Product;
import com.zhh.springboot.service.CategoryService;
import com.zhh.springboot.service.ProductImageService;
import com.zhh.springboot.service.ProductService;
import com.zhh.springboot.utils.Page4Navigator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@RestController
public class ProductController {
    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    ProductImageService productImageService;


    //通过cid查询部分数据。
    @GetMapping("/categories/{cid}/products")
    public Page4Navigator<Product> list(@PathVariable("cid") int cid, @RequestParam(value = "start", defaultValue = "0") int start,
                                        @RequestParam(value = "size", defaultValue = "5") int size) {

        start = start < 0 ? 0 : start;
        //通过cid 查询，start,size ，navigatePages设置分页参数。
        Page4Navigator<Product> list = productService.list(cid, start, size, 5);

        //设置图片。
        productImageService.setFirstProductImages(list.getContent());
        return list;
    }


    //通过id 获取 product
    @GetMapping("/products/{id}")
    public Product get(@PathVariable("id") int id) {
        Product product = productService.get(id);
        return product;
    }
    //

    //添加产品
    @PostMapping("/products")
    public Object add(@Valid @RequestBody Product product) {
        product.setCreateDate(new Date());
        productService.add(product);
        return product;
    }

    //删除产品
    @DeleteMapping("/products/{id}")
    public Object delete(@PathVariable("id") int id, HttpServletRequest httpServletRequest) {
        productService.delete(id);
        return null;
    }

    //修改产品
    @PutMapping("/products")
    public Object Update(@RequestBody Product product) {
        productService.update(product);
        return product;
    }

}
