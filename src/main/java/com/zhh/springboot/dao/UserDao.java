package com.zhh.springboot.dao;

import com.zhh.springboot.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao extends JpaRepository<User,Integer> {

    //通过用户名查到用户信息。
    User findByUsername(String name);

    //通过用户名/密码进行查找登录。
    User getByUsernameAndPassword(String name, String password);

}
