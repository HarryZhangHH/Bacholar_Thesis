package com.zhh.springboot.comparator;

import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.ProductES;

import java.util.Comparator;

//产品人气比较器。把评论数量多的产品放在前面
public class ProductReviewComparator implements Comparator<ProductES> {
    @Override
    public int compare(ProductES p1, ProductES p2) {
        return p2.getReviewCount()-p1.getReviewCount();
    }
}


