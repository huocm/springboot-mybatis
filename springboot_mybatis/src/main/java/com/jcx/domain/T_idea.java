package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import common.utils.BaseDoamin;

public class T_idea extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private long orderid;
    private String checker;
    private String rolename;
    private java.sql.Timestamp createtime;
    private String result;
    private String idea;
    private String memo;
    private String memo2;

    /****************************** default construct**************************/

    public T_idea() {
    }

    /*********************************** method *******************************/

    /**
     * get id
     *
     * @return id
     */
    public long getId() {
        return id;
    }

    /**
     * set id
     *
     * @param id
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * get orderid
     *
     * @return orderid
     */
    public long getOrderid() {
        return orderid;
    }

    /**
     * set orderid
     *
     * @param orderid
     */
    public void setOrderid(long orderid) {
        this.orderid = orderid;
    }

    /**
     * get checker
     *
     * @return checker
     */
    public String getChecker() {
        return checker;
    }

    /**
     * set checker
     *
     * @param checker
     */
    public void setChecker(String checker) {
        this.checker = checker;
    }

    /**
     * get rolename
     *
     * @return rolename
     */
    public String getRolename() {
        return rolename;
    }

    /**
     * set rolename
     *
     * @param rolename
     */
    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    /**
     * get createtime
     *
     * @return createtime
     */
    public java.sql.Timestamp getCreatetime() {
        return createtime;
    }

    /**
     * set createtime
     *
     * @param createtime
     */
    public void setCreatetime(java.sql.Timestamp createtime) {
        this.createtime = createtime;
    }

    /**
     * get result
     *
     * @return result
     */
    public String getResult() {
        return result;
    }

    /**
     * set result
     *
     * @param result
     */
    public void setResult(String result) {
        this.result = result;
    }

    /**
     * get idea
     *
     * @return idea
     */
    public String getIdea() {
        return idea;
    }

    /**
     * set idea
     *
     * @param idea
     */
    public void setIdea(String idea) {
        this.idea = idea;
    }

    /**
     * get memo
     *
     * @return memo
     */
    public String getMemo() {
        return memo;
    }

    /**
     * set memo
     *
     * @param memo
     */
    public void setMemo(String memo) {
        this.memo = memo;
    }

    /**
     * get memo2
     *
     * @return memo2
     */
    public String getMemo2() {
        return memo2;
    }

    /**
     * set memo2
     *
     * @param memo2
     */
    public void setMemo2(String memo2) {
        this.memo2 = memo2;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
