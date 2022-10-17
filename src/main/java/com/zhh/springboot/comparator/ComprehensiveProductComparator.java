package com.zhh.springboot.comparator;

import com.zhh.springboot.model.Product;
import java.util.Comparator;

//产品综合比较器。把product 的 销售量*评价量 最高的放在前面
public class ComprehensiveProductComparator implements Comparator<Product> {
    @Override
    public int compare(Product p1, Product p2) {
        return  p2.getSaleCount()*p2.getReviewCount()-p1.getSaleCount()*p1.getReviewCount();
    }
}
