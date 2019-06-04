package com.jcx.domain;


import common.utils.BaseDoamin;

import java.io.Serializable;


public class T_branch extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private String deptname;
    private String status;
    private String memo;
    private String memo2;
    private String deptid;
    private String treepath;
    private String branchid;
    private String pdeptid;

    public String getDeptid() {
        return deptid;
    }

    public void setDeptid(String deptid) {
        this.deptid = deptid;
    }

    public String getTreepath() {
        return treepath;
    }

    public void setTreepath(String treepath) {
        this.treepath = treepath;
    }

    public String getBranchid() {
        return branchid;
    }

    public void setBranchid(String branchid) {
        this.branchid = branchid;
    }

    public String getPdeptid() {
        return pdeptid;
    }

    public void setPdeptid(String pdeptid) {
        this.pdeptid = pdeptid;
    }

    /****************************** default construct**************************/

    public T_branch() {
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

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
