package com.jcx.domain;

import common.utils.BaseDoamin;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;


public class T_sale extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private long productid;
    private String name;
    private String company;
    private double price;
    private float amount;
    private int num;
    private String type;
    private java.sql.Timestamp createdate;
    private java.sql.Timestamp saledate;
    private String standard;
    private String user;
    private String memo;
    private String memo2;
    private int operatetype;
    private int customerid;
    private double saleprice;
    private int salenum;
    private int pid;
    private String tradeno;
    private String pici; //����
    private double money;
    private double costs;
    private double saleamount;
    private double profits;


    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getTradeno() {
        return tradeno;
    }

    public void setTradeno(String tradeno) {
        this.tradeno = tradeno;
    }

    public String getPici() {
        return pici;
    }

    public void setPici(String pici) {
        this.pici = pici;
    }

    public int getSalenum() {
        return salenum;
    }

    public void setSalenum(int salenum) {
        this.salenum = salenum;
    }

    /****************************** default construct**************************/

    public T_sale() {
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
     * get productid
     *
     * @return productid
     */
    public long getProductid() {
        return productid;
    }

    /**
     * set productid
     *
     * @param productid
     */
    public void setProductid(long productid) {
        this.productid = productid;
    }

    /**
     * get name
     *
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * set name
     *
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * get company
     *
     * @return company
     */
    public String getCompany() {
        return company;
    }

    /**
     * set company
     *
     * @param company
     */
    public void setCompany(String company) {
        this.company = company;
    }

    /**
     * get price
     *
     * @return price
     */
    public double getPrice() {
        return price;
    }

    /**
     * set price
     *
     * @param price
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * get amount
     *
     * @return amount
     */
    public float getAmount() {
        return amount;
    }

    /**
     * set amount
     *
     * @param amount
     */
    public void setAmount(float amount) {
        this.amount = amount;
    }

    /**
     * get num
     *
     * @return num
     */
    public int getNum() {
        return num;
    }

    /**
     * set num
     *
     * @param num
     */
    public void setNum(int num) {
        this.num = num;
    }

    /**
     * get type
     *
     * @return type
     */
    public String getType() {
        return type;
    }

    /**
     * set type
     *
     * @param type
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * get createdate
     *
     * @return createdate
     */
    public java.sql.Timestamp getCreatedate() {
        return createdate;
    }

    /**
     * set createdate
     *
     * @param createdate
     */
    public void setCreatedate(java.sql.Timestamp createdate) {
        this.createdate = createdate;
    }

    /**
     * get saledate
     *
     * @return saledate
     */
    public java.sql.Timestamp getSaledate() {
        return saledate;
    }

    /**
     * set saledate
     *
     * @param saledate
     */
    public void setSaledate(java.sql.Timestamp saledate) {
        this.saledate = saledate;
    }

    /**
     * get standard
     *
     * @return standard
     */
    public String getStandard() {
        return standard;
    }

    /**
     * set standard
     *
     * @param standard
     */
    public void setStandard(String standard) {
        this.standard = standard;
    }

    /**
     * get user
     *
     * @return user
     */
    public String getUser() {
        return user;
    }

    /**
     * set user
     *
     * @param user
     */
    public void setUser(String user) {
        this.user = user;
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
     * get operatetype
     *
     * @return operatetype
     */
    public int getOperatetype() {
        return operatetype;
    }

    /**
     * set operatetype
     *
     * @param operatetype
     */
    public void setOperatetype(int operatetype) {
        this.operatetype = operatetype;
    }

    /**
     * get customerid
     *
     * @return customerid
     */
    public int getCustomerid() {
        return customerid;
    }

    /**
     * set customerid
     *
     * @param customerid
     */
    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    public double getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(double saleprice) {
        this.saleprice = saleprice;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
