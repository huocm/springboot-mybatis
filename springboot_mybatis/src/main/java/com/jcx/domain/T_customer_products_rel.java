package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;
import common.utils.BaseDoamin;

public class T_customer_products_rel extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private long customerid;
    private long productsid;
    private String status;
    private String memo;

    /****************************** default construct**************************/

    public T_customer_products_rel() {
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
     * get productsid
     *
     * @return productsid
     */
    public long getProductsid() {
        return productsid;
    }

    /**
     * set productsid
     *
     * @param productsid
     */
    public void setProductsid(long productsid) {
        this.productsid = productsid;
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

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
