package com.zhh.springboot.service;

import com.zhh.springboot.dao.PropertyValueDao;
import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.Property;
import com.zhh.springboot.model.PropertyValue;
import com.zhh.springboot.utils.SpringContextUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@CacheConfig(cacheNames="propertyValues")
public class PropertyValueService {

    @Autowired
    PropertyValueDao propertyValueDao;
    @Autowired
    PropertyService propertyService;

    @CacheEvict(allEntries=true)
    public void update(PropertyValue bean) {
        propertyValueDao.save(bean);
    }

    public void init(Product product) {
        PropertyValueService propertyValueService = SpringContextUtil.getBean(PropertyValueService.class);

        List<Property> propertys= propertyService.listByCategory(product.getCategory());
        for (Property property: propertys) {
            PropertyValue propertyValue = propertyValueService.getByPropertyAndProduct(product, property);
            if(null==propertyValue){
                propertyValue = new PropertyValue();
                propertyValue.setProduct(product);
                propertyValue.setProperty(property);
                propertyValueDao.save(propertyValue);
            }
        }
    }

    @Cacheable(key="'propertyValues-one-pid-'+#p0.id+ '-ptid-' + #p1.id")
    public PropertyValue getByPropertyAndProduct(Product product, Property property) {
        return propertyValueDao.getByPropertyAndProduct(property,product);
    }

    @Cacheable(key="'propertyValues-pid-'+ #p0.id")
    public List<PropertyValue> list(Product product) {
        return propertyValueDao.findByProductOrderByIdDesc(product);
    }


}
