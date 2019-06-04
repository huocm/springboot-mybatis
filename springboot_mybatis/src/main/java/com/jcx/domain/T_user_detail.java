package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;


import common.utils.BaseDoamin;

public class T_user_detail extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long dealerid;
    private String username;
    private String company;
    private String province;
    private String barname;
    private String address;
    private String postalcode;
    private String phone;
    private String linkman;
    private String mobile;
    private String email;
    private String corporation;
    private String license;
    private String city;
    private String parentid;
    private String pic;
    private java.sql.Timestamp createdate;
    private String safecode;
    private String nickname;
    private String usertype;
    private String personid;
    private String memo;
    private String memo2;
    private int dealerno;
    private String password;
    private long status;
    private String sysj;
    private String lysj;
    private String qysj;
    private double ndsszb;
    private String jsr;
    private String branchid;
    private String issaler;
    private String deptname;
    private String deptid;

    /****************************** default construct**************************/

    public T_user_detail() {
    }

    /*********************************** method *******************************/

    /**
     * get dealerid
     *
     * @return dealerid
     */
    public long getDealerid() {
        return dealerid;
    }

    /**
     * set dealerid
     *
     * @param dealerid
     */
    public void setDealerid(long dealerid) {
        this.dealerid = dealerid;
    }

    /**
     * get username
     *
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * set username
     *
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
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
     * get province
     *
     * @return province
     */
    public String getProvince() {
        return province;
    }

    /**
     * set province
     *
     * @param province
     */
    public void setProvince(String province) {
        this.province = province;
    }

    /**
     * get barname
     *
     * @return barname
     */
    public String getBarname() {
        return barname;
    }

    /**
     * set barname
     *
     * @param barname
     */
    public void setBarname(String barname) {
        this.barname = barname;
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
     * get postalcode
     *
     * @return postalcode
     */
    public String getPostalcode() {
        return postalcode;
    }

    /**
     * set postalcode
     *
     * @param postalcode
     */
    public void setPostalcode(String postalcode) {
        this.postalcode = postalcode;
    }

    /**
     * get phone
     *
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * set phone
     *
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
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
     * get mobile
     *
     * @return mobile
     */
    public String getMobile() {
        return mobile;
    }

    /**
     * set mobile
     *
     * @param mobile
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    /**
     * get email
     *
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * set email
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * get corporation
     *
     * @return corporation
     */
    public String getCorporation() {
        return corporation;
    }

    /**
     * set corporation
     *
     * @param corporation
     */
    public void setCorporation(String corporation) {
        this.corporation = corporation;
    }

    /**
     * get license
     *
     * @return license
     */
    public String getLicense() {
        return license;
    }

    /**
     * set license
     *
     * @param license
     */
    public void setLicense(String license) {
        this.license = license;
    }

    /**
     * get city
     *
     * @return city
     */
    public String getCity() {
        return city;
    }

    /**
     * set city
     *
     * @param city
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * get parentid
     *
     * @return parentid
     */
    public String getParentid() {
        return parentid;
    }

    /**
     * set parentid
     *
     * @param parentid
     */
    public void setParentid(String parentid) {
        this.parentid = parentid;
    }

    /**
     * get pic
     *
     * @return pic
     */
    public String getPic() {
        return pic;
    }

    /**
     * set pic
     *
     * @param pic
     */
    public void setPic(String pic) {
        this.pic = pic;
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
     * get safecode
     *
     * @return safecode
     */
    public String getSafecode() {
        return safecode;
    }

    /**
     * set safecode
     *
     * @param safecode
     */
    public void setSafecode(String safecode) {
        this.safecode = safecode;
    }

    /**
     * get nickname
     *
     * @return nickname
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * set nickname
     *
     * @param nickname
     */
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    /**
     * get usertype
     *
     * @return usertype
     */
    public String getUsertype() {
        return usertype;
    }

    /**
     * set usertype
     *
     * @param usertype
     */
    public void setUsertype(String usertype) {
        this.usertype = usertype;
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
     * get dealerno
     *
     * @return dealerno
     */
    public int getDealerno() {
        return dealerno;
    }

    /**
     * set dealerno
     *
     * @param dealerno
     */
    public void setDealerno(int dealerno) {
        this.dealerno = dealerno;
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
     * get sysj
     *
     * @return sysj
     */
    public String getSysj() {
        return sysj;
    }

    /**
     * set sysj
     *
     * @param sysj
     */
    public void setSysj(String sysj) {
        this.sysj = sysj;
    }

    /**
     * get lysj
     *
     * @return lysj
     */
    public String getLysj() {
        return lysj;
    }

    /**
     * set lysj
     *
     * @param lysj
     */
    public void setLysj(String lysj) {
        this.lysj = lysj;
    }

    /**
     * get qysj
     *
     * @return qysj
     */
    public String getQysj() {
        return qysj;
    }

    /**
     * set qysj
     *
     * @param qysj
     */
    public void setQysj(String qysj) {
        this.qysj = qysj;
    }

    /**
     * get ndsszb
     *
     * @return ndsszb
     */
    public double getNdsszb() {
        return ndsszb;
    }

    /**
     * set ndsszb
     *
     * @param ndsszb
     */
    public void setNdsszb(double ndsszb) {
        this.ndsszb = ndsszb;
    }

    /**
     * get jsr
     *
     * @return jsr
     */
    public String getJsr() {
        return jsr;
    }

    /**
     * set jsr
     *
     * @param jsr
     */
    public void setJsr(String jsr) {
        this.jsr = jsr;
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
     * get issaler
     *
     * @return issaler
     */
    public String getIssaler() {
        return issaler;
    }

    /**
     * set issaler
     *
     * @param issaler
     */
    public void setIssaler(String issaler) {
        this.issaler = issaler;
    }

    /**
     * get deptname
     *
     * @return deptname
     */
    public String getDeptname() {
        return deptname;
    }

    /**
     * set deptname
     *
     * @param deptname
     */
    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    /**
     * get deptid
     *
     * @return deptid
     */
    public String getDeptid() {
        return deptid;
    }

    /**
     * set deptid
     *
     * @param deptid
     */
    public void setDeptid(String deptid) {
        this.deptid = deptid;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
