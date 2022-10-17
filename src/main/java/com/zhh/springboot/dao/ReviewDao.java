package com.zhh.springboot.dao;

import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewDao extends JpaRepository<Review,Integer> {

    //通过pid查找数据
    List<Review> findByProductOrderByIdDesc(Product product);


    //计算该产品有多少评价数量。
    int  countByProduct(Product product);

}
