package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;
import common.utils.BaseDoamin;

public class T_due extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private double totalpayed;
    private double totalshouldpay;
    private double totalunpay;
    private double totalfee;
    private double totalreceived;
    private double totalshouldreceive;
    private double totalunreceive;
    private double totalblance;
    private double totalsalary;
    private String memo;
    private String memo2;
    private java.sql.Timestamp updatetime;
    private String updater;

    /****************************** default construct**************************/

    public T_due() {
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
     * get totalpayed
     *
     * @return totalpayed
     */
    public double getTotalpayed() {
        return totalpayed;
    }

    /**
     * set totalpayed
     *
     * @param totalpayed
     */
    public void setTotalpayed(double totalpayed) {
        this.totalpayed = totalpayed;
    }

    /**
     * get totalshouldpay
     *
     * @return totalshouldpay
     */
    public double getTotalshouldpay() {
        return totalshouldpay;
    }

    /**
     * set totalshouldpay
     *
     * @param totalshouldpay
     */
    public void setTotalshouldpay(double totalshouldpay) {
        this.totalshouldpay = totalshouldpay;
    }

    /**
     * get totalunpay
     *
     * @return totalunpay
     */
    public double getTotalunpay() {
        return totalunpay;
    }

    /**
     * set totalunpay
     *
     * @param totalunpay
     */
    public void setTotalunpay(double totalunpay) {
        this.totalunpay = totalunpay;
    }

    /**
     * get totalfee
     *
     * @return totalfee
     */
    public double getTotalfee() {
        return totalfee;
    }

    /**
     * set totalfee
     *
     * @param totalfee
     */
    public void setTotalfee(double totalfee) {
        this.totalfee = totalfee;
    }

    /**
     * get totalreceived
     *
     * @return totalreceived
     */
    public double getTotalreceived() {
        return totalreceived;
    }

    /**
     * set totalreceived
     *
     * @param totalreceived
     */
    public void setTotalreceived(double totalreceived) {
        this.totalreceived = totalreceived;
    }

    /**
     * get totalshouldreceive
     *
     * @return totalshouldreceive
     */
    public double getTotalshouldreceive() {
        return totalshouldreceive;
    }

    /**
     * set totalshouldreceive
     *
     * @param totalshouldreceive
     */
    public void setTotalshouldreceive(double totalshouldreceive) {
        this.totalshouldreceive = totalshouldreceive;
    }

    /**
     * get totalunreceive
     *
     * @return totalunreceive
     */
    public double getTotalunreceive() {
        return totalunreceive;
    }

    /**
     * set totalunreceive
     *
     * @param totalunreceive
     */
    public void setTotalunreceive(double totalunreceive) {
        this.totalunreceive = totalunreceive;
    }

    /**
     * get totalblance
     *
     * @return totalblance
     */
    public double getTotalblance() {
        return totalblance;
    }

    /**
     * set totalblance
     *
     * @param totalblance
     */
    public void setTotalblance(double totalblance) {
        this.totalblance = totalblance;
    }

    /**
     * get totalsalary
     *
     * @return totalsalary
     */
    public double getTotalsalary() {
        return totalsalary;
    }

    /**
     * set totalsalary
     *
     * @param totalsalary
     */
    public void setTotalsalary(double totalsalary) {
        this.totalsalary = totalsalary;
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

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
