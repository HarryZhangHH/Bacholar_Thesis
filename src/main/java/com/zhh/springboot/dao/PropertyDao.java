package com.zhh.springboot.dao;

import com.zhh.springboot.model.Category;
import com.zhh.springboot.model.Property;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Repository
public interface PropertyDao extends JpaRepository<Property,Integer> {

    //通过category 查询 property。pageable 支持分页。
    Page<Property> findByCategory(Category category, Pageable pageable);
    //通过category获取相应的property
    List<Property> findByCategory(Category category);
}