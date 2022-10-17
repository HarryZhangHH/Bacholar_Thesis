package com.zhh.springboot.controller;

import com.zhh.springboot.model.User;
import com.zhh.springboot.service.UserService;
import com.zhh.springboot.utils.Page4Navigator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    UserService userService;

    //显示所有
    @GetMapping("/users")
    public Page4Navigator<User> list(@RequestParam(name = "start", defaultValue = "0") int start,
                                     @RequestParam(name = "size", defaultValue = "5") int size) {
        start = start > 0 ? start : 0;
        Page4Navigator<User> list = userService.list(start, size, 5);
        return list;

    }
}
