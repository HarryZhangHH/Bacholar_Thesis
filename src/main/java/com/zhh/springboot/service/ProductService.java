package com.zhh.springboot.service;

import com.zhh.springboot.dao.ProductDao;
import com.zhh.springboot.es.ProductESDao;
import com.zhh.springboot.model.Category;
import com.zhh.springboot.model.Product;
import com.zhh.springboot.model.ProductES;
import com.zhh.springboot.utils.Page4Navigator;
import com.zhh.springboot.utils.PageResult;
import com.zhh.springboot.utils.SpringContextUtil;
import org.elasticsearch.index.query.QueryBuilders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
//import org.elasticsearch.index.query.QueryBuilders;
import org.springframework.data.elasticsearch.core.ElasticsearchRestTemplate;
import org.springframework.data.elasticsearch.core.SearchHit;
import org.springframework.data.elasticsearch.core.SearchHits;
import org.springframework.data.elasticsearch.core.query.NativeSearchQuery;
import org.springframework.data.elasticsearch.core.query.NativeSearchQueryBuilder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

//import org.elasticsearch.index.query.QueryBuilders;
//import org.elasticsearch.index.query.functionscore.FunctionScoreQueryBuilder;
//import org.elasticsearch.index.query.functionscore.ScoreFunctionBuilders;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.cache.annotation.CacheConfig;
//import org.springframework.cache.annotation.CacheEvict;
//import org.springframework.cache.annotation.Cacheable;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.PageRequest;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
//import org.springframework.data.elasticsearch.core.query.NativeSearchQueryBuilder;
//import org.springframework.data.elasticsearch.core.query.SearchQuery;
//import org.springframework.stereotype.Service;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Optional;


@Service
@CacheConfig(cacheNames="products")
public class ProductService  {

    @Autowired ProductDao productDao;
    @Autowired ProductImageService productImageService;
    @Autowired CategoryService categoryService;
    @Autowired OrderItemService orderItemService;
    @Autowired ReviewService reviewService;
    @Autowired ProductESDao productESDao;

    @CacheEvict(allEntries=true)
    public void add(Product bean) {
        productDao.save(bean);
//        productESDao.save(bean);
    }

    @CacheEvict(allEntries=true)
    public void add(ProductES bean) {
        productESDao.save(bean);
//        productESDao.save(bean);
    }

    @CacheEvict(allEntries=true)
    public void delete(int id) {
        Product product = productDao.getOne(id);
        productDao.delete(product);
//        productESDao.delete(product);

    }

    @Cacheable(key="'products-one-'+ #p0")
    public Product get(int id) {
        System.out.println("1111111111111111");
        Optional<Product> byId = productDao.findById(id);
        System.out.println(byId.get());
        return byId.get();
    }

    @CacheEvict(allEntries=true)
    public void update(Product bean) {
        productDao.save(bean);
//        productESDao.save(bean);
    }

    @CacheEvict(allEntries=true)
    public void update(ProductES bean) {
        productESDao.save(bean);
//        productESDao.save(bean);
    }

    @Cacheable(key="'products-cid-'+#p0+'-page-'+#p1 + '-' + #p2 ")
    public Page4Navigator<Product> list(int cid, int start, int size, int navigatePages) {
        Category category = categoryService.get(cid);
        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        Pageable pageable = PageRequest.of(start, size, sort);

        Page<Product> pageFromJPA =productDao.findByCategory(category,pageable);
        //RestPage<Product> products = new RestPage<>(pageFromJPA);

        return new Page4Navigator<>(pageFromJPA,navigatePages);
        // pageFromJPA,navigatePages
    }

    //————————————————————————————前端---------------
    public void fill(List<Category> categorys) {
        for (Category category : categorys) {
            fill(category);
        }
    }


    @Cacheable(key="'products-cid-'+ #p0.id")
    public List<Product> listByCategory(Category category){
        return productDao.findByCategoryOrderById(category);
    }
    // 这个 listByCategory 方法本来就是 ProductService 的方法，却不能直接调用。
    // 为什么呢？因为 springboot 的缓存机制是通过切面编程 aop来实现的。
    // 从fill方法里直接调用 listByCategory 方法， aop 是拦截不到的，也就不会走缓存了。
    // 所以要通过这种 绕一绕 的方式故意诱发 aop, 这样才会想我们期望的那样走redis缓存。

    public void fill(Category category) {
        ProductService productService = SpringContextUtil.getBean(ProductService.class);
        List<Product> products = productService.listByCategory(category);
        productImageService.setFirstProductImages(products);
        category.setProducts(products);
    }


    public void fillByRow(List<Category> categorys) {
        int productNumberEachRow = 8;
        for (Category category : categorys) {
            List<Product> products =  category.getProducts();
            List<List<Product>> productsByRow =  new ArrayList<>();
            for (int i = 0; i < products.size(); i+=productNumberEachRow) {
                int size = i+productNumberEachRow;
                size= size>products.size()?products.size():size;
                List<Product> productsOfEachRow =products.subList(i, size);
                productsByRow.add(productsOfEachRow);
            }
            category.setProductsByRow(productsByRow);
        }
    }


    public void setSaleAndReviewNumber(Product product) {
        int saleCount = orderItemService.getSaleCount(product);
        product.setSaleCount(saleCount);


        int reviewCount = reviewService.getCount(product);
        product.setReviewCount(reviewCount);

    }


    public void setSaleAndReviewNumber(List<Product> products) {
        for (Product product : products)
            setSaleAndReviewNumber(product);
    }


    public void setSaleAndReviewNumber(Product product, ProductES productES) {
        int saleCount = orderItemService.getSaleCount(product);
        productES.setSaleCount(saleCount);


        int reviewCount = reviewService.getCount(product);
        productES.setReviewCount(reviewCount);

    }


    @Autowired
    private ElasticsearchRestTemplate elasticsearchRestTemplate;

    public PageResult search(String keyword, int start, int size) {

//        initDatabase2ES();

        String searchs = "";
        // 构建查询条件
        NativeSearchQueryBuilder queryBuilder = new NativeSearchQueryBuilder();
        if (!StringUtils.isEmpty(keyword)) {
            // keyword must not null
            queryBuilder.withQuery(QueryBuilders.queryStringQuery(keyword));
        }

        NativeSearchQuery searchQuery = queryBuilder.build();

        // page search
        SearchHits<ProductES> searchHits = elasticsearchRestTemplate.search(searchQuery, ProductES.class);

        long totalHits = searchHits.getTotalHits();
        System.out.println(totalHits);
        List<ProductES> list = null;
        for(SearchHit<ProductES> searchHit : searchHits){
            System.out.println(searchHit.getScore());
            System.out.println(searchHit.getContent().getName());
            if(searchHit.getScore()>=1){
                list = searchHits.get().map(SearchHit::getContent).collect(Collectors.toList());
            }
        }

//        // 添加基本分词查询
//        queryBuilder.withQuery(QueryBuilders.matchQuery("name", keyword));
//        System.out.println(queryBuilder);
//        // 搜索，获取结果
//        Page<ProductES> items = productESDao.search(queryBuilder.build());
        // 总条数
//        long total = items.getTotalElements();
        //long total = response.getHits().getTotalHits().value;
        //	System.out.println("total: "+total);

        return PageResult.success(list,totalHits);
    }

//    private void initDatabase2ES() {
//        Sort sort = Sort.by(Sort.Direction.DESC,"id");
//        Pageable pageable = PageRequest.of(0, 5,sort);
//        System.out.println("2222222222222222222");
//        Page<ProductES> page =productESDao.findAll(pageable);
//        System.out.println("333333333333333333");
//        if(page.getContent().isEmpty()) {
//            Iterable<ProductES> products= productESDao.findAll();
//            System.out.println(" ---initDatabase2ES: null ----");
//            for (ProductES product : products) {
//                System.out.println("product :"+product);
//                productESDao.save(product);
//            }
//        }
//    }


}



