package com.jcx.domain;
import common.utils.BaseDoamin;

import java.io.Serializable;

//import java.util.Date;

public class T_card extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private String cardno;
    private String security;
    private String begindate;
    private String offdate;
    private java.sql.Timestamp importdate;
    private String bookdate;
    private String usedate;
    private String importcreator;
    private String bookdealer;
    private String amount;
    private String cost;
    private String profit;
    private String saler;
    private String saletime;
    private String memo;
    private String memo2;
    private String status;
    private String memo3;
    private String memo4;
    private String memo5;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCardno() {
        return cardno;
    }

    public void setCardno(String cardno) {
        this.cardno = cardno;
    }

    public String getSecurity() {
        return security;
    }

    public void setSecurity(String security) {
        this.security = security;
    }

    public String getBegindate() {
        return begindate;
    }

    public void setBegindate(String begindate) {
        this.begindate = begindate;
    }

    public String getOffdate() {
        return offdate;
    }

    public void setOffdate(String offdate) {
        this.offdate = offdate;
    }

    public java.sql.Timestamp getImportdate() {
        return importdate;
    }

    public void setImportdate(java.sql.Timestamp importdate) {
        this.importdate = importdate;
    }

    public String getBookdate() {
        return bookdate;
    }

    public void setBookdate(String bookdate) {
        this.bookdate = bookdate;
    }

    public String getUsedate() {
        return usedate;
    }

    public void setUsedate(String usedate) {
        this.usedate = usedate;
    }

    public String getImportcreator() {
        return importcreator;
    }

    public void setImportcreator(String importcreator) {
        this.importcreator = importcreator;
    }

    public String getBookdealer() {
        return bookdealer;
    }

    public void setBookdealer(String bookdealer) {
        this.bookdealer = bookdealer;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getProfit() {
        return profit;
    }

    public void setProfit(String profit) {
        this.profit = profit;
    }

    public String getSaler() {
        return saler;
    }

    public void setSaler(String saler) {
        this.saler = saler;
    }

    public String getSaletime() {
        return saletime;
    }

    public void setSaletime(String saletime) {
        this.saletime = saletime;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMemo3() {
        return memo3;
    }

    public void setMemo3(String memo3) {
        this.memo3 = memo3;
    }

    public String getMemo4() {
        return memo4;
    }

    public void setMemo4(String memo4) {
        this.memo4 = memo4;
    }

    public String getMemo5() {
        return memo5;
    }

    public void setMemo5(String memo5) {
        this.memo5 = memo5;
    }


}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
