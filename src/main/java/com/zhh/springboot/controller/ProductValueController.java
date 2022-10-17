package com.zhh.springboot.controller;


import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.PropertyValue;
import com.zhh.springboot.service.ProductService;
import com.zhh.springboot.service.PropertyService;
import com.zhh.springboot.service.PropertyValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ProductValueController {
    @Autowired
    PropertyValueService propertyValueService;

    @Autowired
    PropertyService propertyService;
    @Autowired
    ProductService productService;


    //通过pid 获取该产品下的 所有的属性值
    @GetMapping("/products/{pid}/propertyValues")
    public List<PropertyValue> list(@PathVariable("pid") int pid) {
        Product product = productService.get(pid);
        //初始化，如果不存在propertyValue ,则创建一个
        propertyValueService.init(product);

        List<PropertyValue> propertyValues = propertyValueService.list(product);

        return propertyValues;

    }

    //更新属性值。
    @PutMapping("/propertyValues")
    public Object Update(@RequestBody PropertyValue bean) {
        propertyValueService.update(bean);
        return bean;

    }

}
