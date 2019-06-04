package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import common.utils.BaseDoamin;

public class T_salary_month extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private long customerid;
    private String classes;
    private double basesalary;
    private double rolesalary;
    private double bounty;
    private double award;
    private double minus;
    private double insurance;
    private double tax;
    private double addamount;
    private String addreason;
    private double subtract;
    private String subtractreason;
    private String memo;
    private String memo2;
    private double ticheng;
    private double zengyuanjiang;
    private double manager;
    private double admin;
    private double ndj;
    private double nddbj;
    private String username;
    private double payamount;
    private double payedamount;
    private String years;
    private String months;
    private java.sql.Timestamp createtime;

    /****************************** default construct**************************/

    public T_salary_month() {
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
     * get basesalary
     *
     * @return basesalary
     */
    public double getBasesalary() {
        return basesalary;
    }

    /**
     * set basesalary
     *
     * @param basesalary
     */
    public void setBasesalary(double basesalary) {
        this.basesalary = basesalary;
    }

    /**
     * get rolesalary
     *
     * @return rolesalary
     */
    public double getRolesalary() {
        return rolesalary;
    }

    /**
     * set rolesalary
     *
     * @param rolesalary
     */
    public void setRolesalary(double rolesalary) {
        this.rolesalary = rolesalary;
    }

    /**
     * get bounty
     *
     * @return bounty
     */
    public double getBounty() {
        return bounty;
    }

    /**
     * set bounty
     *
     * @param bounty
     */
    public void setBounty(double bounty) {
        this.bounty = bounty;
    }

    /**
     * get award
     *
     * @return award
     */
    public double getAward() {
        return award;
    }

    /**
     * set award
     *
     * @param award
     */
    public void setAward(double award) {
        this.award = award;
    }

    /**
     * get minus
     *
     * @return minus
     */
    public double getMinus() {
        return minus;
    }

    /**
     * set minus
     *
     * @param minus
     */
    public void setMinus(double minus) {
        this.minus = minus;
    }

    /**
     * get insurance
     *
     * @return insurance
     */
    public double getInsurance() {
        return insurance;
    }

    /**
     * set insurance
     *
     * @param insurance
     */
    public void setInsurance(double insurance) {
        this.insurance = insurance;
    }

    /**
     * get tax
     *
     * @return tax
     */
    public double getTax() {
        return tax;
    }

    /**
     * set tax
     *
     * @param tax
     */
    public void setTax(double tax) {
        this.tax = tax;
    }

    /**
     * get addamount
     *
     * @return addamount
     */
    public double getAddamount() {
        return addamount;
    }

    /**
     * set addamount
     *
     * @param addamount
     */
    public void setAddamount(double addamount) {
        this.addamount = addamount;
    }

    /**
     * get addreason
     *
     * @return addreason
     */
    public String getAddreason() {
        return addreason;
    }

    /**
     * set addreason
     *
     * @param addreason
     */
    public void setAddreason(String addreason) {
        this.addreason = addreason;
    }

    /**
     * get subtract
     *
     * @return subtract
     */
    public double getSubtract() {
        return subtract;
    }

    /**
     * set subtract
     *
     * @param subtract
     */
    public void setSubtract(double subtract) {
        this.subtract = subtract;
    }

    /**
     * get subtractreason
     *
     * @return subtractreason
     */
    public String getSubtractreason() {
        return subtractreason;
    }

    /**
     * set subtractreason
     *
     * @param subtractreason
     */
    public void setSubtractreason(String subtractreason) {
        this.subtractreason = subtractreason;
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
     * get ticheng
     *
     * @return ticheng
     */
    public double getTicheng() {
        return ticheng;
    }

    /**
     * set ticheng
     *
     * @param ticheng
     */
    public void setTicheng(double ticheng) {
        this.ticheng = ticheng;
    }

    /**
     * get zengyuanjiang
     *
     * @return zengyuanjiang
     */
    public double getZengyuanjiang() {
        return zengyuanjiang;
    }

    /**
     * set zengyuanjiang
     *
     * @param zengyuanjiang
     */
    public void setZengyuanjiang(double zengyuanjiang) {
        this.zengyuanjiang = zengyuanjiang;
    }

    /**
     * get manager
     *
     * @return manager
     */
    public double getManager() {
        return manager;
    }

    /**
     * set manager
     *
     * @param manager
     */
    public void setManager(double manager) {
        this.manager = manager;
    }

    /**
     * get admin
     *
     * @return admin
     */
    public double getAdmin() {
        return admin;
    }

    /**
     * set admin
     *
     * @param admin
     */
    public void setAdmin(double admin) {
        this.admin = admin;
    }

    /**
     * get ndj
     *
     * @return ndj
     */
    public double getNdj() {
        return ndj;
    }

    /**
     * set ndj
     *
     * @param ndj
     */
    public void setNdj(double ndj) {
        this.ndj = ndj;
    }

    /**
     * get nddbj
     *
     * @return nddbj
     */
    public double getNddbj() {
        return nddbj;
    }

    /**
     * set nddbj
     *
     * @param nddbj
     */
    public void setNddbj(double nddbj) {
        this.nddbj = nddbj;
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
     * get years
     *
     * @return years
     */
    public String getYears() {
        return years;
    }

    /**
     * set years
     *
     * @param years
     */
    public void setYears(String years) {
        this.years = years;
    }

    /**
     * get months
     *
     * @return months
     */
    public String getMonths() {
        return months;
    }

    /**
     * set months
     *
     * @param months
     */
    public void setMonths(String months) {
        this.months = months;
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

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
