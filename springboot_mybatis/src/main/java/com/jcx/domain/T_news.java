package com.jcx.domain;

import java.sql.*;
import java.io.Serializable;
//import java.util.Date;
import java.util.List;
import java.util.ArrayList;
import common.utils.BaseDoamin;

public class T_news extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private int id;
    private String title;
    private String content;
    private String tel;
    private String name;
    private String code;
    private String createtime;
    private String creater;
    private String handletime;
    private String status;
    private String newstype;
    private byte[] images;

    public byte[] getImages() {
        return images;
    }

    public void setImages(byte[] images) {
        this.images = images;
    }

    public String getNewstype() {
        return newstype;
    }

    public void setNewstype(String newstype) {
        this.newstype = newstype;
    }

    /****************************** default construct**************************/

    public T_news() {
    }

    /*********************************** method *******************************/

    /**
     * get id
     *
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * set id
     *
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * get title
     *
     * @return title
     */
    public String getTitle() {
        return title;
    }

    /**
     * set title
     *
     * @param title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * get content
     *
     * @return content
     */
    public String getContent() {
        return content;
    }

    /**
     * set content
     *
     * @param content
     */
    public void setContent(String content) {
        this.content = content;
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
     * get code
     *
     * @return code
     */
    public String getCode() {
        return code;
    }

    /**
     * set code
     *
     * @param code
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * get createtime
     *
     * @return createtime
     */
    public String getCreatetime() {
        return createtime;
    }

    /**
     * set createtime
     *
     * @param createtime
     */
    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    /**
     * get creater
     *
     * @return creater
     */
    public String getCreater() {
        return creater;
    }

    /**
     * set creater
     *
     * @param creater
     */
    public void setCreater(String creater) {
        this.creater = creater;
    }

    /**
     * get handletime
     *
     * @return handletime
     */
    public String getHandletime() {
        return handletime;
    }

    /**
     * set handletime
     *
     * @param handletime
     */
    public void setHandletime(String handletime) {
        this.handletime = handletime;
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

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
