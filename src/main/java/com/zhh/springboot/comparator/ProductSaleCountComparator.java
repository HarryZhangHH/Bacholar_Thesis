package com.zhh.springboot.comparator;

import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.ProductES;

import java.util.Comparator;

//产品销售比较器。把销售数量多的产品放在前面
public class ProductSaleCountComparator implements Comparator<ProductES> {
    @Override
    public int compare(ProductES p1, ProductES p2) {
        return p2.getSaleCount()-p1.getSaleCount();
    }
}