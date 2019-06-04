package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import common.utils.BaseDoamin;

public class T_order_sub extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long ordersubid;
    private long orderid;
    private String orderno;
    private String creater;
    private java.sql.Timestamp createtime;
    private String memo;
    private String memo2;
    private long deptid;
    private double num;
    private double saleprice;
    private double cost;
    private double profit;
    private java.sql.Timestamp updatetime;
    private String updater;
    private long customerid;
    private String customername;
    private String branchid;
    private String companyname;
    private long companyid;
    private String companypname;
    private long companypid;

    public String getCompanypname() {
        return companypname;
    }

    public void setCompanypname(String companypname) {
        this.companypname = companypname;
    }

    public long getCompanypid() {
        return companypid;
    }

    public void setCompanypid(long companypid) {
        this.companypid = companypid;
    }

    /****************************** default construct**************************/

    public T_order_sub() {
    }

    /*********************************** method *******************************/

    /**
     * get ordersubid
     *
     * @return ordersubid
     */
    public long getOrdersubid() {
        return ordersubid;
    }

    /**
     * set ordersubid
     *
     * @param ordersubid
     */
    public void setOrdersubid(long ordersubid) {
        this.ordersubid = ordersubid;
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
     * get orderno
     *
     * @return orderno
     */
    public String getOrderno() {
        return orderno;
    }

    /**
     * set orderno
     *
     * @param orderno
     */
    public void setOrderno(String orderno) {
        this.orderno = orderno;
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
     * get deptid
     *
     * @return deptid
     */
    public long getDeptid() {
        return deptid;
    }

    /**
     * set deptid
     *
     * @param deptid
     */
    public void setDeptid(long deptid) {
        this.deptid = deptid;
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
     * get saleprice
     *
     * @return saleprice
     */
    public double getSaleprice() {
        return saleprice;
    }

    /**
     * set saleprice
     *
     * @param saleprice
     */
    public void setSaleprice(double saleprice) {
        this.saleprice = saleprice;
    }

    /**
     * get cost
     *
     * @return cost
     */
    public double getCost() {
        return cost;
    }

    /**
     * set cost
     *
     * @param cost
     */
    public void setCost(double cost) {
        this.cost = cost;
    }

    /**
     * get profit
     *
     * @return profit
     */
    public double getProfit() {
        return profit;
    }

    /**
     * set profit
     *
     * @param profit
     */
    public void setProfit(double profit) {
        this.profit = profit;
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
     * get customerid
     *
     * @return customerid
     */
    public long getCustomerid() {
        return customerid;
    }

    /**
     * set customerid
     *
     * @param customerid
     */
    public void setCustomerid(long customerid) {
        this.customerid = customerid;
    }

    /**
     * get customername
     *
     * @return customername
     */
    public String getCustomername() {
        return customername;
    }

    /**
     * set customername
     *
     * @param customername
     */
    public void setCustomername(String customername) {
        this.customername = customername;
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
     * get companyname
     *
     * @return companyname
     */
    public String getCompanyname() {
        return companyname;
    }

    /**
     * set companyname
     *
     * @param companyname
     */
    public void setCompanyname(String companyname) {
        this.companyname = companyname;
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

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
