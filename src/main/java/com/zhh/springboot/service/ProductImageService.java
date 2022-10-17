package com.zhh.springboot.service;

import com.zhh.springboot.dao.ProductImageDao;
import com.zhh.springboot.model.OrderItem;
import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.ProductES;
import com.zhh.springboot.model.ProductImage;
import com.zhh.springboot.utils.SpringContextUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@CacheConfig(cacheNames="productImages")
public class ProductImageService  {

    public static final String type_single = "single";
    public static final String type_detail = "detail";

    @Autowired
    ProductImageDao productImageDao;
    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;

    @Cacheable(key="'productImages-one-'+ #p0")
    public ProductImage get(int id) {
        return productImageDao.getOne(id);
    }

    public void setFirstProductImage(Product product) {
//        System.out.println(product.getId());
        ProductImageService productImageService = SpringContextUtil.getBean(ProductImageService.class);
        List<ProductImage> singleImages = productImageService.listSingleProductImages(product);
        if(!singleImages.isEmpty()) {
            product.setFirstProductImage(singleImages.get(0));
//            System.out.println("Not empty "+product.getFirstProductImage() + " xxxxxx " +product.getFirstProductImage().getId());
        }
        else{
            product.setFirstProductImage(new ProductImage()); //这样做是考虑到产品还没有来得及设置图片，但是在订单后台管理里查看订单项的对应产品图片。
            System.out.println("Empty");}
    }
    @CacheEvict(allEntries=true)
    public void add(ProductImage bean) {
        productImageDao.save(bean);

    }
    @CacheEvict(allEntries=true)
    public void delete(int id) {
        productImageDao.deleteById(id);
    }

    @Cacheable(key="'productImages-single-pid-'+ #p0.id")
    public List<ProductImage> listSingleProductImages(Product product) {
        return productImageDao.findByProductAndTypeOrderByIdDesc(product, type_single);
    }
    @Cacheable(key="'productImages-detail-pid-'+ #p0.id")
    public List<ProductImage> listDetailProductImages(Product product) {
        return productImageDao.findByProductAndTypeOrderByIdAsc(product, type_detail);
    }

    public void setFirstProductImages(List<Product> products) {
        for (Product product : products)
            setFirstProductImage(product);
    }

    public void setFirstProductImagesOnOrderItems(List<OrderItem> ois) {
        for (OrderItem orderItem : ois) {
            System.out.println("hhhhhhhhhhhhhhhhhh "+ orderItem.getProduct());
            setFirstProductImage(orderItem.getProduct());
        }
    }
    //获取es图片
    public void setFirstProductESImages(List<ProductES> products) {
        for (ProductES product : products)
            setFirstProductESImage(product);
    }
    public void setFirstProductESImage(ProductES product) {
//        System.out.println(product.getId());
        ProductImageService productImageService = SpringContextUtil.getBean(ProductImageService.class);
        List<ProductImage> singleImages = productImageService.listSingleProductESImages(product);
        if(!singleImages.isEmpty()) {
            product.setFirstProductImage(singleImages.get(0));
//            System.out.println("Not empty "+product.getFirstProductImage() + " xxxxxx " +product.getFirstProductImage().getId());
        }
        else{
            product.setFirstProductImage(new ProductImage()); //这样做是考虑到产品还没有来得及设置图片，但是在订单后台管理里查看订单项的对应产品图片。
            System.out.println("Empty");}
    }
    @Cacheable(key="'productImages-single-pid-'+ #p0.id")
    public List<ProductImage> listSingleProductESImages(ProductES product) {
        return productImageDao.findByProductAndTypeOrderByIdDesc(product, type_single);
    }

}