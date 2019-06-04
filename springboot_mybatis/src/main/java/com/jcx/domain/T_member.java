package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import common.utils.BaseDoamin;

public class T_member extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long memberid;
    private String name;
    private String sex;
    private String tel;
    private String address;
    private int iskfp;
    private java.sql.Timestamp kfpdate;
    private String levels;
    private String linkman;
    private String memo;
    private String memo2;
    private double receivedamount;
    private double totalamount;
    private String password;
    private String accountno;
    private String cardno;
    private String personid;
    private long customerid;
    private String customername;
    private String branchid;

    public String getBranchid() {
        return branchid;
    }

    public void setBranchid(String branchid) {
        this.branchid = branchid;
    }

    /****************************** default construct**************************/

    public T_member() {
    }

    /*********************************** method *******************************/

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
     * get sex
     *
     * @return sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * set sex
     *
     * @param sex
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * get tel
     *
     * @return tel
     */
    public String getTel() {
        return tel;
    }

    /**
     * set tel
     *
     * @param tel
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    /**
     * get address
     *
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * set address
     *
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * get iskfp
     *
     * @return iskfp
     */
    public int getIskfp() {
        return iskfp;
    }

    /**
     * set iskfp
     *
     * @param iskfp
     */
    public void setIskfp(int iskfp) {
        this.iskfp = iskfp;
    }

    /**
     * get kfpdate
     *
     * @return kfpdate
     */
    public java.sql.Timestamp getKfpdate() {
        return kfpdate;
    }

    /**
     * set kfpdate
     *
     * @param kfpdate
     */
    public void setKfpdate(java.sql.Timestamp kfpdate) {
        this.kfpdate = kfpdate;
    }

    /**
     * get levels
     *
     * @return levels
     */
    public String getLevels() {
        return levels;
    }

    /**
     * set levels
     *
     * @param levels
     */
    public void setLevels(String levels) {
        this.levels = levels;
    }

    /**
     * get linkman
     *
     * @return linkman
     */
    public String getLinkman() {
        return linkman;
    }

    /**
     * set linkman
     *
     * @param linkman
     */
    public void setLinkman(String linkman) {
        this.linkman = linkman;
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
     * get receivedamount
     *
     * @return receivedamount
     */
    public double getReceivedamount() {
        return receivedamount;
    }

    /**
     * set receivedamount
     *
     * @param receivedamount
     */
    public void setReceivedamount(double receivedamount) {
        this.receivedamount = receivedamount;
    }

    /**
     * get totalamount
     *
     * @return totalamount
     */
    public double getTotalamount() {
        return totalamount;
    }

    /**
     * set totalamount
     *
     * @param totalamount
     */
    public void setTotalamount(double totalamount) {
        this.totalamount = totalamount;
    }

    /**
     * get password
     *
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * set password
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * get accountno
     *
     * @return accountno
     */
    public String getAccountno() {
        return accountno;
    }

    /**
     * set accountno
     *
     * @param accountno
     */
    public void setAccountno(String accountno) {
        this.accountno = accountno;
    }

    /**
     * get cardno
     *
     * @return cardno
     */
    public String getCardno() {
        return cardno;
    }

    /**
     * set cardno
     *
     * @param cardno
     */
    public void setCardno(String cardno) {
        this.cardno = cardno;
    }

    /**
     * get personid
     *
     * @return personid
     */
    public String getPersonid() {
        return personid;
    }

    /**
     * set personid
     *
     * @param personid
     */
    public void setPersonid(String personid) {
        this.personid = personid;
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

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
