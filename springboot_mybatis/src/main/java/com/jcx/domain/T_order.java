package com.jcx.domain;

import common.utils.BaseDoamin;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;


public class T_order  extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private double feeamount;
    private String orderno;
    private String creater;
    private java.sql.Timestamp createtime;
    private java.sql.Timestamp checktime;
    private java.sql.Timestamp confirmtime;
    private String checker;
    private String classes;
    private java.sql.Timestamp occurtime;
    private String memo;
    private String memo2;
    private long deptid;
    private double num;
    private double saleprice;
    private double cost;
    private double profit;
    private java.sql.Timestamp updatetime;
    private String updater;
    private String feetype;
    private String reason;
    private double receiveamount;
    private double unreceiveamount;
    private String checkstatus;
    private double orderamount;
    private long customerid;
    private String customername;
    private double bcAmount;
    private String branchid;
    private double maleprice;
    private double marriedparice;
    private double unmarriedprice;
    private long malenum;
    private long marriednum;
    private long unmarriednum;
    private double malecost;
    private double marriedcost;
    private double unmarriedcost;
    private String linkman;//��ϵ��
    private String linktel;
    private String companyname;
    private long companyid;
    private int currentstep;
    private String currentrole;
    private String currentuser;
    private int currentstatus;

    private List t_order_products_subList;


    public double getMaleprice() {
        return maleprice;
    }

    public void setMaleprice(double maleprice) {
        this.maleprice = maleprice;
    }

    public double getMarriedparice() {
        return marriedparice;
    }

    public void setMarriedparice(double marriedparice) {
        this.marriedparice = marriedparice;
    }

    public double getUnmarriedprice() {
        return unmarriedprice;
    }

    public void setUnmarriedprice(double unmarriedprice) {
        this.unmarriedprice = unmarriedprice;
    }

    public long getMalenum() {
        return malenum;
    }

    public void setMalenum(long malenum) {
        this.malenum = malenum;
    }

    public long getMarriednum() {
        return marriednum;
    }

    public void setMarriednum(long marriednum) {
        this.marriednum = marriednum;
    }

    public long getUnmarriednum() {
        return unmarriednum;
    }

    public void setUnmarriednum(long unmarriednum) {
        this.unmarriednum = unmarriednum;
    }

    public double getMalecost() {
        return malecost;
    }

    public void setMalecost(double malecost) {
        this.malecost = malecost;
    }

    public double getMarriedcost() {
        return marriedcost;
    }

    public void setMarriedcost(double marriedcost) {
        this.marriedcost = marriedcost;
    }

    public double getUnmarriedcost() {
        return unmarriedcost;
    }

    public void setUnmarriedcost(double unmarriedcost) {
        this.unmarriedcost = unmarriedcost;
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }

    public String getLinktel() {
        return linktel;
    }

    public void setLinktel(String linktel) {
        this.linktel = linktel;
    }

    public String getBranchid() {
        return branchid;
    }

    public void setBranchid(String branchid) {
        this.branchid = branchid;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    /****************************** default construct**************************/

    public T_order() {
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
     * get feeamount
     *
     * @return feeamount
     */
    public double getFeeamount() {
        return feeamount;
    }

    /**
     * set feeamount
     *
     * @param feeamount
     */
    public void setFeeamount(double feeamount) {
        this.feeamount = feeamount;
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
     * get checktime
     *
     * @return checktime
     */
    public java.sql.Timestamp getChecktime() {
        return checktime;
    }

    /**
     * set checktime
     *
     * @param checktime
     */
    public void setChecktime(java.sql.Timestamp checktime) {
        this.checktime = checktime;
    }

    /**
     * get confirmtime
     *
     * @return confirmtime
     */
    public java.sql.Timestamp getConfirmtime() {
        return confirmtime;
    }

    /**
     * set confirmtime
     *
     * @param confirmtime
     */
    public void setConfirmtime(java.sql.Timestamp confirmtime) {
        this.confirmtime = confirmtime;
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
     * get classes
     *
     * @return classes
     */
    public String getClasses() {
        return classes;
    }

    /**
     * set classes
     *
     * @param classes
     */
    public void setClasses(String classes) {
        this.classes = classes;
    }

    /**
     * get occurtime
     *
     * @return occurtime
     */
    public java.sql.Timestamp getOccurtime() {
        return occurtime;
    }

    /**
     * set occurtime
     *
     * @param occurtime
     */
    public void setOccurtime(java.sql.Timestamp occurtime) {
        this.occurtime = occurtime;
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
     * get feetype
     *
     * @return feetype
     */
    public String getFeetype() {
        return feetype;
    }

    /**
     * set feetype
     *
     * @param feetype
     */
    public void setFeetype(String feetype) {
        this.feetype = feetype;
    }

    /**
     * get reason
     *
     * @return reason
     */
    public String getReason() {
        return reason;
    }

    /**
     * set reason
     *
     * @param reason
     */
    public void setReason(String reason) {
        this.reason = reason;
    }

    /**
     * get receiveamount
     *
     * @return receiveamount
     */
    public double getReceiveamount() {
        return receiveamount;
    }

    /**
     * set receiveamount
     *
     * @param receiveamount
     */
    public void setReceiveamount(double receiveamount) {
        this.receiveamount = receiveamount;
    }

    /**
     * get unreceiveamount
     *
     * @return unreceiveamount
     */
    public double getUnreceiveamount() {
        return unreceiveamount;
    }

    /**
     * set unreceiveamount
     *
     * @param unreceiveamount
     */
    public void setUnreceiveamount(double unreceiveamount) {
        this.unreceiveamount = unreceiveamount;
    }

    /**
     * get checkstatus
     *
     * @return checkstatus
     */
    public String getCheckstatus() {
        return checkstatus;
    }

    /**
     * set checkstatus
     *
     * @param checkstatus
     */
    public void setCheckstatus(String checkstatus) {
        this.checkstatus = checkstatus;
    }

    /**
     * get orderamount
     *
     * @return orderamount
     */
    public double getOrderamount() {
        return orderamount;
    }

    /**
     * set orderamount
     *
     * @param orderamount
     */
    public void setOrderamount(double orderamount) {
        this.orderamount = orderamount;
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

    public double getBcAmount() {
        return bcAmount;
    }

    public void setBcAmount(double bcAmount) {
        this.bcAmount = bcAmount;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public long getCompanyid() {
        return companyid;
    }

    public void setCompanyid(long companyid) {
        this.companyid = companyid;
    }

    public List getT_order_products_subList() {
        return t_order_products_subList;
    }

    public void setT_order_products_subList(List list) {
        t_order_products_subList = list;
    }

    public int getCurrentstep() {
        return currentstep;
    }

    public void setCurrentstep(int currentstep) {
        this.currentstep = currentstep;
    }

    public String getCurrentrole() {
        return currentrole;
    }

    public void setCurrentrole(String currentrole) {
        this.currentrole = currentrole;
    }

    public String getCurrentuser() {
        return currentuser;
    }

    public void setCurrentuser(String currentuser) {
        this.currentuser = currentuser;
    }

    public int getCurrentstatus() {
        return currentstatus;
    }

    public void setCurrentstatus(int currentstatus) {
        this.currentstatus = currentstatus;
    }


}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
