package com.zhh.springboot.dao;

import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.Property;
import com.zhh.springboot.model.PropertyValue;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

//属性值表 dao
@Repository
public interface PropertyValueDao extends JpaRepository<PropertyValue, Integer> {
    //通过产品id 查找
    List<PropertyValue> findByProductOrderByIdDesc(Product product);

    //通过产品id和属性id查找
    PropertyValue getByPropertyAndProduct(Property property, Product product);

    //通过ptid 属性id进行删除 属性值。
    void deleteByProperty(Property property);

    // void deletePropertyValueByPropertyId(int id);
    List<PropertyValue> findByProperty(Property property);


}