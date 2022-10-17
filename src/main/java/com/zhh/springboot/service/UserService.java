package com.zhh.springboot.service;

import com.zhh.springboot.dao.UserDao;
import com.zhh.springboot.model.User;
import com.zhh.springboot.utils.Page4Navigator;
//import com.zhh.springboot.service.base.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service("userService")
@CacheConfig(cacheNames="users")
public class UserService /*extends BaseService*/ {


    @Autowired
    UserDao userDao;

    //显示用户
    @Cacheable(key="'users-page-'+#p0+ '-' + #p1")
    public Page4Navigator<User> list(int start, int size, int navigatePages) {
        Sort sort =  Sort.by(Sort.Direction.DESC, "id");
        Pageable pageable =  PageRequest.of(start, size, sort);
        Page all = userDao.findAll(pageable);

        return new Page4Navigator<>(all, navigatePages);

    }

    //保存user
    @CacheEvict(allEntries = true)
    public void add(User user){
        userDao.save(user);
    } //执行缓存与数据库同步

    //通过用户名称查到用户
    @Cacheable(key="'users-one-name-'+ #p0")
    public User getByUsername(String name){
        return userDao.findByUsername(name);
    }

    //判断该用户是否存在
    public Boolean isExist(String name){
        User byName = getByUsername(name);
        return null!=byName;

    }

    //通过name/password判断进行登录
    @Cacheable(key="'users-one-name-'+ #p0 +'-password-'+ #p1")
    public User getByUsernameAndPassword(String name, String password){
        User user = userDao.getByUsernameAndPassword(name, password);
        return user;

    }


}

