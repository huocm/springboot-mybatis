package com.jcx.domain;

import common.utils.BaseDoamin;

import java.io.Serializable;

//import java.util.Date;

public class T_report extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private Long id;
    private Long customerid;
    private String imagepath;
    private String imagename;
    private String company;
    private Long companyid;
    private Long productid;
    private String status;
    private String result;
    private String user;
    private java.sql.Timestamp inserttime;
    private String memo;
    private String memo2;
    private String customername;
    private String cardid;
    private java.sql.Timestamp updatetime;
    private double cost;
    private double saleprice;
    private double profit;
    private String staffname;
    private String productname;
    private String branchid;
    private String booktype;
    private String bookid;
    private String dealerno_id;//�ͻ�Ҫ��½��

    public String getDealerno_id() {
        return dealerno_id;
    }

    public void setDealerno_id(String dealerno_id) {
        this.dealerno_id = dealerno_id;
    }

    public String getBookid() {
        return bookid;
    }

    public void setBookid(String bookid) {
        this.bookid = bookid;
    }

    public String getBooktype() {
        return booktype;
    }

    public void setBooktype(String booktype) {
        this.booktype = booktype;
    }

    public String getBranchid() {
        return branchid;
    }

    public void setBranchid(String branchid) {
        this.branchid = branchid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    /****************************** default construct**************************/

    public T_report() {
    }

    /*********************************** method *******************************/
    public void setId(Long id) {
        this.id = id;
    }

    public void setCustomerid(Long customerid) {
        this.customerid = customerid;
    }

    public void setCompanyid(Long companyid) {
        this.companyid = companyid;
    }

    public void setProductid(Long productid) {
        this.productid = productid;
    }

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
     * get imagepath
     *
     * @return imagepath
     */
    public String getImagepath() {
        return imagepath;
    }

    /**
     * set imagepath
     *
     * @param imagepath
     */
    public void setImagepath(String imagepath) {
        this.imagepath = imagepath;
    }

    /**
     * get imagename
     *
     * @return imagename
     */
    public String getImagename() {
        return imagename;
    }

    /**
     * set imagename
     *
     * @param imagename
     */
    public void setImagename(String imagename) {
        this.imagename = imagename;
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
     * get inserttime
     *
     * @return inserttime
     */
    public java.sql.Timestamp getInserttime() {
        return inserttime;
    }

    /**
     * set inserttime
     *
     * @param inserttime
     */
    public void setInserttime(java.sql.Timestamp inserttime) {
        this.inserttime = inserttime;
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
     * get cardid
     *
     * @return cardid
     */
    public String getCardid() {
        return cardid;
    }

    /**
     * set cardid
     *
     * @param cardid
     */
    public void setCardid(String cardid) {
        this.cardid = cardid;
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
     * get staffname
     *
     * @return staffname
     */
    public String getStaffname() {
        return staffname;
    }

    /**
     * set staffname
     *
     * @param staffname
     */
    public void setStaffname(String staffname) {
        this.staffname = staffname;
    }

    @Override
    public String toString() {
        return "T_report{" +
                "id=" + id +
                ", customerid=" + customerid +
                ", imagepath='" + imagepath + '\'' +
                ", imagename='" + imagename + '\'' +
                ", company='" + company + '\'' +
                ", companyid=" + companyid +
                ", productid=" + productid +
                ", status='" + status + '\'' +
                ", result='" + result + '\'' +
                ", user='" + user + '\'' +
                ", inserttime=" + inserttime +
                ", memo='" + memo + '\'' +
                ", memo2='" + memo2 + '\'' +
                ", customername='" + customername + '\'' +
                ", cardid='" + cardid + '\'' +
                ", updatetime=" + updatetime +
                ", cost=" + cost +
                ", saleprice=" + saleprice +
                ", profit=" + profit +
                ", staffname='" + staffname + '\'' +
                ", productname='" + productname + '\'' +
                ", branchid='" + branchid + '\'' +
                ", booktype='" + booktype + '\'' +
                ", bookid='" + bookid + '\'' +
                '}';
    }

    public void setAccountno(String accountno) {
    }
}
	
	
	
	
	

	
	
	
	
	
	
	
	
