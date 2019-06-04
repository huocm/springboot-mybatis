package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import common.utils.BaseDoamin;

public class T_products extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private String name;
    private String company;
    private double price;
    private double amount;
    private double num;
    private String type;
    private java.sql.Timestamp createdate;
    private String standard;
    private String memo;
    private String memo2;
    private long companyid;
    private long companypid;
    private String companypname;
    private String tctype;
    private String updatetime;
    private String updater;
    private String branchid;
    private String creater;
    private String memo3;
    private String memo4;
    private String memo5;

    /****************************** default construct**************************/

    public T_products() {
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
     * get companypid
     *
     * @return companypid
     */
    public long getCompanypid() {
        return companypid;
    }

    /**
     * set companypid
     *
     * @param companypid
     */
    public void setCompanypid(long companypid) {
        this.companypid = companypid;
    }

    /**
     * get companypname
     *
     * @return companypname
     */
    public String getCompanypname() {
        return companypname;
    }

    /**
     * set companypname
     *
     * @param companypname
     */
    public void setCompanypname(String companypname) {
        this.companypname = companypname;
    }

    /**
     * get tctype
     *
     * @return tctype
     */
    public String getTctype() {
        return tctype;
    }

    /**
     * set tctype
     *
     * @param tctype
     */
    public void setTctype(String tctype) {
        this.tctype = tctype;
    }

    /**
     * get updatetime
     *
     * @return updatetime
     */
    public String getUpdatetime() {
        return updatetime;
    }

    /**
     * set updatetime
     *
     * @param updatetime
     */
    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    /**
     * get updater
     *
     * @return updater
     */
    public String getUpdater() {
        return updater;
    }

    /**
     * set updater
     *
     * @param updater
     */
    public void setUpdater(String updater) {
        this.updater = updater;
    }

    /**
     * get branchid
     *
     * @return branchid
     */
    public String getBranchid() {
        return branchid;
    }

    /**
     * set branchid
     *
     * @param branchid
     */
    public void setBranchid(String branchid) {
        this.branchid = branchid;
    }

    /**
     * get creater
     *
     * @return creater
     */
    public String getCreater() {
        return creater;
    }

    /**
     * set creater
     *
     * @param creater
     */
    public void setCreater(String creater) {
        this.creater = creater;
    }

    /**
     * get memo3
     *
     * @return memo3
     */
    public String getMemo3() {
        return memo3;
    }

    /**
     * set memo3
     *
     * @param memo3
     */
    public void setMemo3(String memo3) {
        this.memo3 = memo3;
    }

    /**
     * get memo4
     *
     * @return memo4
     */
    public String getMemo4() {
        return memo4;
    }

    /**
     * set memo4
     *
     * @param memo4
     */
    public void setMemo4(String memo4) {
        this.memo4 = memo4;
    }

    /**
     * get memo5
     *
     * @return memo5
     */
    public String getMemo5() {
        return memo5;
    }

    /**
     * set memo5
     *
     * @param memo5
     */
    public void setMemo5(String memo5) {
        this.memo5 = memo5;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
