package com.jcx.controller;

import com.jcx.domain.User;
import com.jcx.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class mybatisController {
    @Autowired
    private UserMapper userMapper;
    @RequestMapping("/users")
    @ResponseBody
    public List<User> queryUserList() {
        List<User> users = userMapper.queryUserList();
        return users;
    }
}

