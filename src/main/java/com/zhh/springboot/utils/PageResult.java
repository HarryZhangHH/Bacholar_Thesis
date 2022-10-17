package com.zhh.springboot.utils;

import com.zhh.springboot.model.ProductES;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class PageResult {
    private List<ProductES> productES;
    private long total;

    public PageResult(List<ProductES> productES, long total) {
        this.productES = productES;
        this.total = total;
    }

    public static PageResult success(List<ProductES> productES, long total){
        return new PageResult(productES, total);
    }

    public static PageResult error(String message){
        return new PageResult(null,0);
    }

}
