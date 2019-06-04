package com.jcx.domain;

import common.utils.BaseDoamin;

import java.io.Serializable;

//import java.util.Date;

public class T_company extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long companyid;
    private String name;
    private String companytype;
    private String tel;
    private String address;
    private long rato;
    private double receiveamount;
    private double payamount;
    private double payedamount;
    private String area;
    private long status;
    private String postcode;
    private java.sql.Timestamp createtime;
    private String createman;
    private java.sql.Timestamp modifytime;
    private String memo;
    private String memo2;
    private String memo3;
    private String branchid;
    private String levels;
    private long pid;

    public String getLevels() {
        return levels;
    }

    public void setLevels(String levels) {
        this.levels = levels;
    }

    public long getPid() {
        return pid;
    }

    public void setPid(long pid) {
        this.pid = pid;
    }

    public String getBranchid() {
        return branchid;
    }

    public void setBranchid(String branchid) {
        this.branchid = branchid;
    }

    /****************************** default construct**************************/

    public T_company() {
    }

    /*********************************** method *******************************/

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
     * get companytype
     *
     * @return companytype
     */
    public String getCompanytype() {
        return companytype;
    }

    /**
     * set companytype
     *
     * @param companytype
     */
    public void setCompanytype(String companytype) {
        this.companytype = companytype;
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
     * get rato
     *
     * @return rato
     */
    public long getRato() {
        return rato;
    }

    /**
     * set rato
     *
     * @param rato
     */
    public void setRato(long rato) {
        this.rato = rato;
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
     * get payamount
     *
     * @return payamount
     */
    public double getPayamount() {
        return payamount;
    }

    /**
     * set payamount
     *
     * @param payamount
     */
    public void setPayamount(double payamount) {
        this.payamount = payamount;
    }

    /**
     * get payedamount
     *
     * @return payedamount
     */
    public double getPayedamount() {
        return payedamount;
    }

    /**
     * set payedamount
     *
     * @param payedamount
     */
    public void setPayedamount(double payedamount) {
        this.payedamount = payedamount;
    }

    /**
     * get area
     *
     * @return area
     */
    public String getArea() {
        return area;
    }

    /**
     * set area
     *
     * @param area
     */
    public void setArea(String area) {
        this.area = area;
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

    /**
     * get postcode
     *
     * @return postcode
     */
    public String getPostcode() {
        return postcode;
    }

    /**
     * set postcode
     *
     * @param postcode
     */
    public void setPostcode(String postcode) {
        this.postcode = postcode;
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
     * get createman
     *
     * @return createman
     */
    public String getCreateman() {
        return createman;
    }

    /**
     * set createman
     *
     * @param createman
     */
    public void setCreateman(String createman) {
        this.createman = createman;
    }

    /**
     * get modifytime
     *
     * @return modifytime
     */
    public java.sql.Timestamp getModifytime() {
        return modifytime;
    }

    /**
     * set modifytime
     *
     * @param modifytime
     */
    public void setModifytime(java.sql.Timestamp modifytime) {
        this.modifytime = modifytime;
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

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
