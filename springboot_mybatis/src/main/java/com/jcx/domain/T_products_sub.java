package com.jcx.domain;

import java.io.Serializable;
//import java.util.Date;
import common.utils.BaseDoamin;

public class T_products_sub extends BaseDoamin implements Serializable {
    /********************************* properties *****************************/

    private long id;
    private long pid;
    private String name;
    private String company;
    private double price;//��̽���۸�
    private double amount;//��̼۸�
    private double num;
    private String type;
    private java.sql.Timestamp createdate;
    private String standard;
    private String memo;
    private String memo2;
    private String male;
    private String married;
    private String unmarried;
    private double maleprice;
    private double marriedprice;
    private double unmarriedprice;
    private long companyid;
    private double malecost;
    private double marriedcost;
    private double unmarriedcost;
    private String levels;
    private double cost;//��̸�������ı��ۣ��ǲ������ۿۼ��е�
    private double parentid;
    private double xsfdbl; //�ڳɱ��ۻ����� ͳһ�ϸ��ı������� �ϸ�10%�� ʵ����ҳ��¼�����10��
    private Double cost1;//�������ļ۸��ǿɱ䶯�ļ۸񣬸����Ժ���������ʷ�ɱ��ۣ��������㷨
    private Double historycost;//��ʷ�ɱ���
    private long bid;//������ʷ�ɱ��۸��id

    public Double getCost1() {
        return cost1;
    }

    public void setCost1(Double cost1) {
        this.cost1 = cost1;
    }

    public Double getHistorycost() {
        return historycost;
    }

    public void setHistorycost(Double historycost) {
        this.historycost = historycost;
    }

    public long getBid() {
        return bid;
    }

    public void setBid(long bid) {
        this.bid = bid;
    }

    public double getMalecost() {
        return malecost;
    }


    public void setMalecost(double malecost) {
        this.malecost = malecost;
    }

    public double getMarriedcost() {
        return marriedcost;
    }

    public void setMarriedcost(double marriedcost) {
        this.marriedcost = marriedcost;
    }

    public double getUnmarriedcost() {
        return unmarriedcost;
    }

    public void setUnmarriedcost(double unmarriedcost) {
        this.unmarriedcost = unmarriedcost;
    }

    /****************************** default construct**************************/

    public T_products_sub() {
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
     * get pid
     *
     * @return pid
     */
    public long getPid() {
        return pid;
    }

    /**
     * set pid
     *
     * @param pid
     */
    public void setPid(long pid) {
        this.pid = pid;
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
     * get price
     *
     * @return price
     */
    public double getPrice() {
        return price;
    }

    /**
     * set price
     *
     * @param price
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * get amount
     *
     * @return amount
     */
    public double getAmount() {
        return amount;
    }

    /**
     * set amount
     *
     * @param amount
     */
    public void setAmount(double amount) {
        this.amount = amount;
    }

    /**
     * get num
     *
     * @return num
     */
    public double getNum() {
        return num;
    }

    /**
     * set num
     *
     * @param num
     */
    public void setNum(double num) {
        this.num = num;
    }

    /**
     * get type
     *
     * @return type
     */
    public String getType() {
        return type;
    }

    /**
     * set type
     *
     * @param type
     */
    public void setType(String type) {
        this.type = type;
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
     * get standard
     *
     * @return standard
     */
    public String getStandard() {
        return standard;
    }

    /**
     * set standard
     *
     * @param standard
     */
    public void setStandard(String standard) {
        this.standard = standard;
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
     * get male
     *
     * @return male
     */
    public String getMale() {
        return male;
    }

    /**
     * set male
     *
     * @param male
     */
    public void setMale(String male) {
        this.male = male;
    }

    /**
     * get married
     *
     * @return married
     */
    public String getMarried() {
        return married;
    }

    /**
     * set married
     *
     * @param married
     */
    public void setMarried(String married) {
        this.married = married;
    }

    /**
     * get unmarried
     *
     * @return unmarried
     */
    public String getUnmarried() {
        return unmarried;
    }

    /**
     * set unmarried
     *
     * @param unmarried
     */
    public void setUnmarried(String unmarried) {
        this.unmarried = unmarried;
    }

    /**
     * get maleprice
     *
     * @return maleprice
     */
    public double getMaleprice() {
        return maleprice;
    }

    /**
     * set maleprice
     *
     * @param maleprice
     */
    public void setMaleprice(double maleprice) {
        this.maleprice = maleprice;
    }

    /**
     * get marriedprice
     *
     * @return marriedprice
     */
    public double getMarriedprice() {
        return marriedprice;
    }

    /**
     * set marriedprice
     *
     * @param marriedprice
     */
    public void setMarriedprice(double marriedprice) {
        this.marriedprice = marriedprice;
    }

    /**
     * get unmarriedprice
     *
     * @return unmarriedprice
     */
    public double getUnmarriedprice() {
        return unmarriedprice;
    }

    /**
     * set unmarriedprice
     *
     * @param unmarriedprice
     */
    public void setUnmarriedprice(double unmarriedprice) {
        this.unmarriedprice = unmarriedprice;
    }

    public long getCompanyid() {
        return companyid;
    }

    public void setCompanyid(long companyid) {
        this.companyid = companyid;
    }

    public String getLevels() {
        return levels;
    }

    public void setLevels(String levels) {
        this.levels = levels;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public double getParentid() {
        return parentid;
    }

    public void setParentid(double parentid) {
        this.parentid = parentid;
    }

    public double getXsfdbl() {
        return xsfdbl;
    }

    public void setXsfdbl(double xsfdbl) {
        this.xsfdbl = xsfdbl;
    }

}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
