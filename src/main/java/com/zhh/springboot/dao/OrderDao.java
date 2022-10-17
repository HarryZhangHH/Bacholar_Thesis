package com.zhh.springboot.dao;

import com.zhh.springboot.model.OrderItem;
import com.zhh.springboot.model.User;
import com.zhh.springboot.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface OrderDao extends JpaRepository<Order,Integer> {

    Optional<Order> findById(int id);
    //通过user显示订单状态不为delete的订单。
    public List<Order> findByUserAndStatusNotOrderByIdDesc(User user, String status);
}
