package com.jcx.domain;
import common.utils.BaseDoamin;

import java.io.Serializable;

//import java.util.Date;

public class T_buy extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private int id;
    private int pid;
    private int productid;
    private String name;
    private String company;
    private float price;
    private float amount;
    private int num;
    private String type;
    private java.sql.Timestamp createdate;
    private java.sql.Timestamp buydate;
    private String standard;
    private String user;
    private String memo;
    private String memo2;
    private int buynum;


    public int getBuynum() {
        return buynum;
    }

    public void setBuynum(int buynum) {
        this.buynum = buynum;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    /****************************** default construct**************************/

    public T_buy() {
    }

    /*********************************** method *******************************/

    /**
     * get id
     *
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * set id
     *
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * get productid
     *
     * @return productid
     */
    public int getProductid() {
        return productid;
    }

    /**
     * set productid
     *
     * @param productid
     */
    public void setProductid(int productid) {
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
    public float getPrice() {
        return price;
    }

    /**
     * set price
     *
     * @param price
     */
    public void setPrice(float price) {
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
     * get buydate
     *
     * @return buydate
     */
    public java.sql.Timestamp getBuydate() {
        return buydate;
    }

    /**
     * set buydate
     *
     * @param buydate
     */
    public void setBuydate(java.sql.Timestamp buydate) {
        this.buydate = buydate;
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

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
