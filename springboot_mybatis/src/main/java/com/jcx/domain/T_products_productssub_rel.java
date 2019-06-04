package com.jcx.domain;

import common.utils.BaseDoamin;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;


public class T_products_productssub_rel extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private long productid;
    private long productssubid;
    private long companyid;
    private String company;
    private String memo;
    private String memo2;

    private String name;
    //private String company;
    //private double price;
    //private double amount;
    //private double num;
    private String type;
    private java.sql.Timestamp createdate;
    //private String standard;
    //private String memo;
    //private String memo2;
    private String male;
    private String married;
    private String unmarried;
    private double maleprice;
    private double marriedprice;
    private double unmarriedprice;
    //private long companyid;

    /****************************** default construct**************************/

    public T_products_productssub_rel() {
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
     * get productssubid
     *
     * @return productssubid
     */
    public long getProductssubid() {
        return productssubid;
    }

    /**
     * set productssubid
     *
     * @param productssubid
     */
    public void setProductssubid(long productssubid) {
        this.productssubid = productssubid;
    }

    /**
     * get companyid
     *
     * @return companyid
     */
    public long getCompanyid() {
        return companyid;
    }

    /**
     * set companyid
     *
     * @param companyid
     */
    public void setCompanyid(long companyid) {
        this.companyid = companyid;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public java.sql.Timestamp getCreatedate() {
        return createdate;
    }

    public void setCreatedate(java.sql.Timestamp createdate) {
        this.createdate = createdate;
    }

    public String getMale() {
        return male;
    }

    public void setMale(String male) {
        this.male = male;
    }

    public String getMarried() {
        return married;
    }

    public void setMarried(String married) {
        this.married = married;
    }

    public String getUnmarried() {
        return unmarried;
    }

    public void setUnmarried(String unmarried) {
        this.unmarried = unmarried;
    }

    public double getMaleprice() {
        return maleprice;
    }

    public void setMaleprice(double maleprice) {
        this.maleprice = maleprice;
    }

    public double getMarriedprice() {
        return marriedprice;
    }

    public void setMarriedprice(double marriedprice) {
        this.marriedprice = marriedprice;
    }

    public double getUnmarriedprice() {
        return unmarriedprice;
    }

    public void setUnmarriedprice(double unmarriedprice) {
        this.unmarriedprice = unmarriedprice;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
