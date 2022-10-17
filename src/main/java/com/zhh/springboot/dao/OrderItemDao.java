package com.zhh.springboot.dao;

import com.zhh.springboot.model.User;
import com.zhh.springboot.model.Order;
import com.zhh.springboot.model.OrderItem;
import com.zhh.springboot.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface OrderItemDao extends JpaRepository<OrderItem,Integer> {

    Optional<OrderItem> findById(int id);
    List<OrderItem> findByOrderOrderByIdDesc(Order order);
    List<OrderItem> findByProduct(Product product);
    //查询该用户下的，还有没有没支付的订单项
    List<OrderItem> findByUserAndOrderIsNull(User user);


}


