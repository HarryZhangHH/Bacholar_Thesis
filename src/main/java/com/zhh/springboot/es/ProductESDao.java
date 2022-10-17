package com.zhh.springboot.es;

import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.ProductES;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductESDao extends ElasticsearchRepository<ProductES, Integer> {
}

