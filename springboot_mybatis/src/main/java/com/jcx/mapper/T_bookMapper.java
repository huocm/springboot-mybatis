package com.jcx.mapper;




public interface T_bookMapper {

    public int insert(Object obj);

    public int update(Object obj);

    public int deleteByPrimaryKey(Object pk);

    public Object findByPrimaryKey(Object pk);

}
