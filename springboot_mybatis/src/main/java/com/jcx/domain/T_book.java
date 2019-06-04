package com.jcx.domain;


import common.utils.BaseDoamin;

import java.io.Serializable;

//import java.util.Date;

public class T_book extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private int id;
    private String title;
    private String content;
    private long status;
    private String starttime;
    private String answertime;
    private String result;
    private String memo;
    private String memo2;
    private long customerid;
    private String userid;
    private long companyid;
    private long companypid;
    private long memberid;
    private long productid;
    private double costall;
    private double priceall;
    private double discountrato;
    private double shouldpay;
    private String paystatus;
    private String productname;
    private String companyname;
    private String companypname;
    private String customername;
    private String membername;
    private String branchid;
    private String booktype;
    private java.sql.Timestamp inserttime;
    private String yjtime;
    private String memo3;
    private String memo4;
    private String memo5;
    private String memo6;
    private String memo7;
    private String memo8;
    private String memo9;

    public String getMemo3() {
        return memo3;
    }

    public void setMemo3(String memo3) {
        this.memo3 = memo3;
    }

    public String getMemo4() {
        return memo4;
    }

    public void setMemo4(String memo4) {
        this.memo4 = memo4;
    }

    public String getMemo5() {
        return memo5;
    }

    public void setMemo5(String memo5) {
        this.memo5 = memo5;
    }

    public String getMemo6() {
        return memo6;
    }

    public void setMemo6(String memo6) {
        this.memo6 = memo6;
    }

    public String getMemo7() {
        return memo7;
    }

    public void setMemo7(String memo7) {
        this.memo7 = memo7;
    }

    public String getMemo8() {
        return memo8;
    }

    public void setMemo8(String memo8) {
        this.memo8 = memo8;
    }

    public String getMemo9() {
        return memo9;
    }

    public void setMemo9(String memo9) {
        this.memo9 = memo9;
    }

    public java.sql.Timestamp getInserttime() {
        return inserttime;
    }

    public void setInserttime(java.sql.Timestamp inserttime) {
        this.inserttime = inserttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    public void setAnswertime(String answertime) {
        this.answertime = answertime;
    }

    /****************************** default construct**************************/

    public T_book() {
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
     * get title
     *
     * @return title
     */
    public String getTitle() {
        return title;
    }

    /**
     * set title
     *
     * @param title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * get content
     *
     * @return content
     */
    public String getContent() {
        return content;
    }

    /**
     * set content
     *
     * @param content
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * get status
     *
     * @return status
     */
    public long getStatus() {
        return status;
    }

    /**
     * set status
     *
     * @param status
     */
    public void setStatus(long status) {
        this.status = status;
    }

    public String getStarttime() {
        return starttime;
    }

    public String getAnswertime() {
        return answertime;
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
     * get userid
     *
     * @return userid
     */
    public String getUserid() {
        return userid;
    }

    /**
     * set userid
     *
     * @param userid
     */
    public void setUserid(String userid) {
        this.userid = userid;
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
     * get memberid
     *
     * @return memberid
     */
    public long getMemberid() {
        return memberid;
    }

    /**
     * set memberid
     *
     * @param memberid
     */
    public void setMemberid(long memberid) {
        this.memberid = memberid;
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
     * get costall
     *
     * @return costall
     */
    public double getCostall() {
        return costall;
    }

    /**
     * set costall
     *
     * @param costall
     */
    public void setCostall(double costall) {
        this.costall = costall;
    }

    /**
     * get priceall
     *
     * @return priceall
     */
    public double getPriceall() {
        return priceall;
    }

    /**
     * set priceall
     *
     * @param priceall
     */
    public void setPriceall(double priceall) {
        this.priceall = priceall;
    }

    /**
     * get discountrato
     *
     * @return discountrato
     */
    public double getDiscountrato() {
        return discountrato;
    }

    /**
     * set discountrato
     *
     * @param discountrato
     */
    public void setDiscountrato(double discountrato) {
        this.discountrato = discountrato;
    }

    /**
     * get shouldpay
     *
     * @return shouldpay
     */
    public double getShouldpay() {
        return shouldpay;
    }

    /**
     * set shouldpay
     *
     * @param shouldpay
     */
    public void setShouldpay(double shouldpay) {
        this.shouldpay = shouldpay;
    }

    /**
     * get paystatus
     *
     * @return paystatus
     */
    public String getPaystatus() {
        return paystatus;
    }

    /**
     * set paystatus
     *
     * @param paystatus
     */
    public void setPaystatus(String paystatus) {
        this.paystatus = paystatus;
    }

    /**
     * get productname
     *
     * @return productname
     */
    public String getProductname() {
        return productname;
    }

    /**
     * set productname
     *
     * @param productname
     */
    public void setProductname(String productname) {
        this.productname = productname;
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

    public String getMembername() {
        return membername;
    }

    public void setMembername(String membername) {
        this.membername = membername;
    }

    public String getBranchid() {
        return branchid;
    }

    public void setBranchid(String branchid) {
        this.branchid = branchid;
    }

    public String getBooktype() {
        return booktype;
    }

    public void setBooktype(String booktype) {
        this.booktype = booktype;
    }

    public long getCompanypid() {
        return companypid;
    }

    public void setCompanypid(long companypid) {
        this.companypid = companypid;
    }

    public String getCompanypname() {
        return companypname;
    }

    public void setCompanypname(String companypname) {
        this.companypname = companypname;
    }

    public String getYjtime() {
        return yjtime;
    }

    public void setYjtime(String yjtime) {
        this.yjtime = yjtime;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
