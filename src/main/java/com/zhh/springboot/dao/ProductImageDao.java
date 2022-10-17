package com.zhh.springboot.dao;

import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.ProductES;
import com.zhh.springboot.model.ProductImage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductImageDao extends JpaRepository<ProductImage,Integer> {
    public List<ProductImage> findByProductAndTypeOrderByIdDesc(Product product, String type);
    public List<ProductImage> findByProductAndTypeOrderByIdAsc(Product product, String type);

    public List<ProductImage> findByProductAndTypeOrderByIdDesc(ProductES product, String type);
    ProductImage deleteById(int id);
}
