package com.jcx.mapper;

import com.jcx.domain.T_item;

import java.util.List;

public interface T_itemMapper {
    List<T_item> selectByExample(T_item example);
}
