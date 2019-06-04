package com.jcx.controller;

import com.jcx.mapper.T_bookMapper;
import org.omg.CORBA.OBJ_ADAPTER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/jsp/t_book" )
public class T_bookController {
    @Autowired
    private T_bookMapper t_bookMapper;
    @RequestMapping("/t_bookAdd.jsp")
    public int insert(Object obj){
        Object t_book = t_bookMapper.insert(obj);
        return (int) t_book;
    }
    @RequestMapping("/t_bookEdit.jsp")
    public int update(Object obj){
        Object t_book = t_bookMapper.update(obj);
        return (int) t_book;
    }

}
