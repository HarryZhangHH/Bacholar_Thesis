package com.zhh.springboot.comparator;

import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.ProductES;

import java.util.Comparator;

//产品价格比较器。把价格低的产品放在前面
public class ProductPriceComparator implements Comparator<ProductES> {
    @Override
    public int compare(ProductES p1, ProductES p2) {
        return (int)(p1.getPromotePrice()-p2.getPromotePrice());
    }
}
