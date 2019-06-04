package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import common.utils.BaseDoamin;

public class T_money_log extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private String commonid;
    private String orderno;
    private String optype;
    private long customerid;
    private long companyid;
    private String operator;
    private java.sql.Timestamp opertime;
    private double operamount;
    private String memo;
    private String memo2;
    private String reason;
    private String customername;
    private String companyname;
    private String branchid;

    public String getBranchid() {
        return branchid;
    }

    public void setBranchid(String branchid) {
        this.branchid = branchid;
    }

    /****************************** default construct**************************/

    public T_money_log() {
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
     * get commonid
     *
     * @return commonid
     */
    public String getCommonid() {
        return commonid;
    }

    /**
     * set commonid
     *
     * @param commonid
     */
    public void setCommonid(String commonid) {
        this.commonid = commonid;
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
     * get optype
     *
     * @return optype
     */
    public String getOptype() {
        return optype;
    }

    /**
     * set optype
     *
     * @param optype
     */
    public void setOptype(String optype) {
        this.optype = optype;
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
     * get operator
     *
     * @return operator
     */
    public String getOperator() {
        return operator;
    }

    /**
     * set operator
     *
     * @param operator
     */
    public void setOperator(String operator) {
        this.operator = operator;
    }

    /**
     * get opertime
     *
     * @return opertime
     */
    public java.sql.Timestamp getOpertime() {
        return opertime;
    }

    /**
     * set opertime
     *
     * @param opertime
     */
    public void setOpertime(java.sql.Timestamp opertime) {
        this.opertime = opertime;
    }

    /**
     * get operamount
     *
     * @return operamount
     */
    public double getOperamount() {
        return operamount;
    }

    /**
     * set operamount
     *
     * @param operamount
     */
    public void setOperamount(double operamount) {
        this.operamount = operamount;
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

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
