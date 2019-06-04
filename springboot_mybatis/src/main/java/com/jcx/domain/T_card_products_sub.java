package com.jcx.domain;


import common.utils.BaseDoamin;

import java.io.Serializable;

//import java.util.Date;

public class T_card_products_sub extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private long subid;
    private long tcid;
    private String name;
    private String company;
    private long companyid;
    private double price;
    private double amount;
    private double num;
    private String type;
    private java.sql.Timestamp createdate;
    private String standard;
    private String memo;
    private String memo2;
    private String male;
    private String married;
    private String unmarried;
    private double maleprice;
    private double marriedprice;
    private double unmarriedprice;
    private double malecost;
    private double marriedcost;
    private double unmarriedcost;

    /****************************** default construct**************************/

    public T_card_products_sub() {
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
     * get subid
     *
     * @return subid
     */
    public long getSubid() {
        return subid;
    }

    /**
     * set subid
     *
     * @param subid
     */
    public void setSubid(long subid) {
        this.subid = subid;
    }

    /**
     * get tcid
     *
     * @return tcid
     */
    public long getTcid() {
        return tcid;
    }

    /**
     * set tcid
     *
     * @param tcid
     */
    public void setTcid(long tcid) {
        this.tcid = tcid;
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
    public double getAmount() {
        return amount;
    }

    /**
     * set amount
     *
     * @param amount
     */
    public void setAmount(double amount) {
        this.amount = amount;
    }

    /**
     * get num
     *
     * @return num
     */
    public double getNum() {
        return num;
    }

    /**
     * set num
     *
     * @param num
     */
    public void setNum(double num) {
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
     * get male
     *
     * @return male
     */
    public String getMale() {
        return male;
    }

    /**
     * set male
     *
     * @param male
     */
    public void setMale(String male) {
        this.male = male;
    }

    /**
     * get married
     *
     * @return married
     */
    public String getMarried() {
        return married;
    }

    /**
     * set married
     *
     * @param married
     */
    public void setMarried(String married) {
        this.married = married;
    }

    /**
     * get unmarried
     *
     * @return unmarried
     */
    public String getUnmarried() {
        return unmarried;
    }

    /**
     * set unmarried
     *
     * @param unmarried
     */
    public void setUnmarried(String unmarried) {
        this.unmarried = unmarried;
    }

    /**
     * get maleprice
     *
     * @return maleprice
     */
    public double getMaleprice() {
        return maleprice;
    }

    /**
     * set maleprice
     *
     * @param maleprice
     */
    public void setMaleprice(double maleprice) {
        this.maleprice = maleprice;
    }

    /**
     * get marriedprice
     *
     * @return marriedprice
     */
    public double getMarriedprice() {
        return marriedprice;
    }

    /**
     * set marriedprice
     *
     * @param marriedprice
     */
    public void setMarriedprice(double marriedprice) {
        this.marriedprice = marriedprice;
    }

    /**
     * get unmarriedprice
     *
     * @return unmarriedprice
     */
    public double getUnmarriedprice() {
        return unmarriedprice;
    }

    /**
     * set unmarriedprice
     *
     * @param unmarriedprice
     */
    public void setUnmarriedprice(double unmarriedprice) {
        this.unmarriedprice = unmarriedprice;
    }

    /**
     * get malecost
     *
     * @return malecost
     */
    public double getMalecost() {
        return malecost;
    }

    /**
     * set malecost
     *
     * @param malecost
     */
    public void setMalecost(double malecost) {
        this.malecost = malecost;
    }

    /**
     * get marriedcost
     *
     * @return marriedcost
     */
    public double getMarriedcost() {
        return marriedcost;
    }

    /**
     * set marriedcost
     *
     * @param marriedcost
     */
    public void setMarriedcost(double marriedcost) {
        this.marriedcost = marriedcost;
    }

    /**
     * get unmarriedcost
     *
     * @return unmarriedcost
     */
    public double getUnmarriedcost() {
        return unmarriedcost;
    }

    /**
     * set unmarriedcost
     *
     * @param unmarriedcost
     */
    public void setUnmarriedcost(double unmarriedcost) {
        this.unmarriedcost = unmarriedcost;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
