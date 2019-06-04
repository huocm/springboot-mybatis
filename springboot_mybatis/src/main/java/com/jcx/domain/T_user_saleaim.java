package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;


import common.utils.BaseDoamin;

public class T_user_saleaim extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private long dealerno;
    private double sszb;
    private String current_year;
    private String status;
    private double one;
    private double two;
    private double three;
    private double four;
    private double five;
    private double six;
    private double seven;
    private double eight;
    private double nine;
    private double ten;
    private double eleven;
    private double twelve;
    private String memo;
    private String memo2;
    private int creater;
    private java.sql.Timestamp createtime;
    private java.sql.Timestamp updatetime;
    private String username;

    /****************************** default construct**************************/

    public T_user_saleaim() {
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
     * get dealerno
     *
     * @return dealerno
     */
    public long getDealerno() {
        return dealerno;
    }

    /**
     * set dealerno
     *
     * @param dealerno
     */
    public void setDealerno(long dealerno) {
        this.dealerno = dealerno;
    }

    /**
     * get sszb
     *
     * @return sszb
     */
    public double getSszb() {
        return sszb;
    }

    /**
     * set sszb
     *
     * @param sszb
     */
    public void setSszb(double sszb) {
        this.sszb = sszb;
    }

    /**
     * get current_year
     *
     * @return current_year
     */
    public String getCurrent_year() {
        return current_year;
    }

    /**
     * set current_year
     *
     * @param current_year
     */
    public void setCurrent_year(String current_year) {
        this.current_year = current_year;
    }

    /**
     * get status
     *
     * @return status
     */
    public String getStatus() {
        return status;
    }

    /**
     * set status
     *
     * @param status
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * get one
     *
     * @return one
     */
    public double getOne() {
        return one;
    }

    /**
     * set one
     *
     * @param one
     */
    public void setOne(double one) {
        this.one = one;
    }

    /**
     * get two
     *
     * @return two
     */
    public double getTwo() {
        return two;
    }

    /**
     * set two
     *
     * @param two
     */
    public void setTwo(double two) {
        this.two = two;
    }

    /**
     * get three
     *
     * @return three
     */
    public double getThree() {
        return three;
    }

    /**
     * set three
     *
     * @param three
     */
    public void setThree(double three) {
        this.three = three;
    }

    /**
     * get four
     *
     * @return four
     */
    public double getFour() {
        return four;
    }

    /**
     * set four
     *
     * @param four
     */
    public void setFour(double four) {
        this.four = four;
    }

    /**
     * get five
     *
     * @return five
     */
    public double getFive() {
        return five;
    }

    /**
     * set five
     *
     * @param five
     */
    public void setFive(double five) {
        this.five = five;
    }

    /**
     * get six
     *
     * @return six
     */
    public double getSix() {
        return six;
    }

    /**
     * set six
     *
     * @param six
     */
    public void setSix(double six) {
        this.six = six;
    }

    /**
     * get seven
     *
     * @return seven
     */
    public double getSeven() {
        return seven;
    }

    /**
     * set seven
     *
     * @param seven
     */
    public void setSeven(double seven) {
        this.seven = seven;
    }

    /**
     * get eight
     *
     * @return eight
     */
    public double getEight() {
        return eight;
    }

    /**
     * set eight
     *
     * @param eight
     */
    public void setEight(double eight) {
        this.eight = eight;
    }

    /**
     * get nine
     *
     * @return nine
     */
    public double getNine() {
        return nine;
    }

    /**
     * set nine
     *
     * @param nine
     */
    public void setNine(double nine) {
        this.nine = nine;
    }

    /**
     * get ten
     *
     * @return ten
     */
    public double getTen() {
        return ten;
    }

    /**
     * set ten
     *
     * @param ten
     */
    public void setTen(double ten) {
        this.ten = ten;
    }

    /**
     * get eleven
     *
     * @return eleven
     */
    public double getEleven() {
        return eleven;
    }

    /**
     * set eleven
     *
     * @param eleven
     */
    public void setEleven(double eleven) {
        this.eleven = eleven;
    }

    /**
     * get twelve
     *
     * @return twelve
     */
    public double getTwelve() {
        return twelve;
    }

    /**
     * set twelve
     *
     * @param twelve
     */
    public void setTwelve(double twelve) {
        this.twelve = twelve;
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

    /**
     * get creater
     *
     * @return creater
     */
    public int getCreater() {
        return creater;
    }

    /**
     * set creater
     *
     * @param creater
     */
    public void setCreater(int creater) {
        this.creater = creater;
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
     * get updatetime
     *
     * @return updatetime
     */
    public java.sql.Timestamp getUpdatetime() {
        return updatetime;
    }

    /**
     * set updatetime
     *
     * @param updatetime
     */
    public void setUpdatetime(java.sql.Timestamp updatetime) {
        this.updatetime = updatetime;
    }

    /**
     * get username
     *
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * set username
     *
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
