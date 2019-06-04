package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import common.utils.BaseDoamin;

public class T_customer extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private String name;//�ͻ�����
    private String sex;//�Ա�
    private String tel;//�绰
    private String address;//��ַ
    private int iskfp;
    private java.sql.Timestamp kfpdate;
    private String level;//��׼
    private String linkman;
    private String memo;
    private String memo2;
    private double totalamount;
    private double receivedamount;
    private String password;//����
    private String accountno;
    private String cardno;
    private String personid;
    private String branchid;
    private double totalorderamount;
    private String customername;
    private int number1;//�ͻ����

    public int getNumber1() {
        return number1;
    }

    public void setNumber1(int number) {
        this.number1 = number;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getBranchid() {
        return branchid;
    }

    public void setBranchid(String branchid) {
        this.branchid = branchid;
    }

    public String getAccountno() {
        return accountno;
    }

    public void setAccountno(String accountno) {
        this.accountno = accountno;
    }

    public String getCardno() {
        return cardno;
    }

    public void setCardno(String cardno) {
        this.cardno = cardno;
    }

    public String getPersonid() {
        return personid;
    }

    public void setPersonid(String personid) {
        this.personid = personid;
    }

    /****************************** default construct**************************/

    public T_customer() {
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
     * get level
     *
     * @return level
     */
    public String getLevel() {
        return level;
    }

    /**
     * set level
     *
     * @param level
     */
    public void setLevel(String level) {
        this.level = level;
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

    public double getTotalamount() {
        return totalamount;
    }

    public void setTotalamount(double totalamount) {
        this.totalamount = totalamount;
    }

    public double getReceivedamount() {
        return receivedamount;
    }

    public void setReceivedamount(double receivedamount) {
        this.receivedamount = receivedamount;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public double getTotalorderamount() {
        return totalorderamount;
    }

    public void setTotalorderamount(double totalorderamount) {
        this.totalorderamount = totalorderamount;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
