package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;


import common.utils.BaseDoamin;

public class T_trade extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/
/*
	  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	  `tradeno` int(10) unsigned DEFAULT NULL COMMENT '���׵��� ',
	  `customerid` int(10) DEFAULT 0,
	  `costs` double DEFAULT 0.00 COMMENT '�ɱ� ',
	  `saleamount` double DEFAULT 0.00 COMMENT '���׽�� ',
	  `profits` double  DEFAULT 0.00 COMMENT '����',
	  `createdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
	  `user` varchar(45) DEFAULT NULL COMMENT '������',
	  `memo` varchar(45) DEFAULT NULL,
	  `memo2` varchar(100) DEFAULT NULL,
	  PRIMARY KEY (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
	
	
		t1.id,
		t1.tradeno,
		t1.customerid,
		t1.createdate,
		t2.saleprice as saleprice,
		t2.salenum as salenum,
		t2.price as price,
		t2.type as type,
		t2.standard as standard,
		t2.pici as pici,
		t2.salenum* (t2.saleprice -t2.price) as profits
	*/
    private int id;
    private String tradeno;
    private int customerid;
    private String customername;
    private String scustomerid;
    private double costs;
    private double saleamount;
    private double profits;
    private double price;
    private String type;
    private String productname;

    private java.sql.Timestamp createdate;
    private String user;
    private String memo;
    private String memo2;
    private double saleprice;
    private int salenum;
    private int pid;
    private String pici; //����
    private String standard;
    private int productid;
    private int flag;
    private double money;


    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTradeno() {
        return tradeno;
    }

    public void setTradeno(String tradeno) {
        this.tradeno = tradeno;
    }

    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    public double getCosts() {
        return costs;
    }

    public void setCosts(double costs) {
        this.costs = costs;
    }

    public double getSaleamount() {
        return saleamount;
    }

    public void setSaleamount(double saleamount) {
        this.saleamount = saleamount;
    }

    public double getProfits() {
        return profits;
    }

    public void setProfits(double profits) {
        this.profits = profits;
    }

    public java.sql.Timestamp getCreatedate() {
        return createdate;
    }

    public void setCreatedate(java.sql.Timestamp createdate) {
        this.createdate = createdate;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getMemo2() {
        return memo2;
    }

    public void setMemo2(String memo2) {
        this.memo2 = memo2;
    }

    public double getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(double saleprice) {
        this.saleprice = saleprice;
    }

    public int getSalenum() {
        return salenum;
    }

    public void setSalenum(int salenum) {
        this.salenum = salenum;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPici() {
        return pici;
    }

    public void setPici(String pici) {
        this.pici = pici;
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard;
    }

    public String getScustomerid() {
        return scustomerid;
    }

    public void setScustomerid(String scustomerid) {
        this.scustomerid = scustomerid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }


}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
