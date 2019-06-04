package com.jcx.mapper;

import com.jcx.domain.User;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

public interface UserMapper {
    public abstract List<User> queryUserList();


}
