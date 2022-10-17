package com.zhh.springboot.service;


import com.zhh.springboot.dao.PropertyDao;
import com.zhh.springboot.model.Category;
import com.zhh.springboot.model.Property;
import com.zhh.springboot.utils.Page4Navigator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@CacheConfig(cacheNames="properties")
public class PropertyService {
    @Autowired
    PropertyDao propertyDao;
    @Autowired
    CategoryService categoryService;

    @CacheEvict(allEntries=true)
    public void add(Property bean) {
        propertyDao.save(bean);
    }

    @CacheEvict(allEntries=true)
    public void delete(int id) {

        propertyDao.deleteById(id);
    }

    @Cacheable(key="'properties-one-'+ #p0")
    public Property get(int id) {
        return propertyDao.getOne(id);
    }

    @CacheEvict(allEntries=true)
    public void update(Property bean) {
        propertyDao.save(bean);
    }
    @Cacheable(key="'properties-cid-'+ #p0.id")
    public List<Property> listByCategory(Category category){
        return propertyDao.findByCategory(category);
    }


    @Cacheable(key="'properties-cid-'+#p0+'-page-'+#p1 + '-' + #p2 ")
    public Page4Navigator<Property> list(int cid, int start, int size, int navigatePages) {
        Category category = categoryService.get(cid);

        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        Pageable pageable = PageRequest.of(start, size, sort);

        Page<Property> pageFromJPA =propertyDao.findByCategory(category,pageable);

        //	RestPage<Property> Propertys = new RestPage<>(pageFromJPA);
        return new Page4Navigator<>(pageFromJPA,navigatePages);


    }

}