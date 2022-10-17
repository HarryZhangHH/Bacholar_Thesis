package com.zhh.springboot.dao;

import com.zhh.springboot.model.Category;
import com.zhh.springboot.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProductDao extends JpaRepository<Product, Integer> {

    Optional<Product> findById(int id);

    Page<Product> findByCategory(Category category, Pageable pageable);
    //--------------------前端------------
    //通过category获取相应的产品
    List<Product> findByCategoryOrderById(Category category);

    //模糊查询
    public List<Product> findByNameLike(String name, Pageable pageable);


}
