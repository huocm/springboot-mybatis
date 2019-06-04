package com.jcx.domain;

import common.utils.BaseDoamin;

import java.io.Serializable;
import java.sql.Timestamp;

public class T_products_sub_rel extends BaseDoamin implements Serializable {
    /**
     * ??????T_products_sub??????????????????????
     */
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private long relid;//????????id
    private Double historycost;//??????historycost??T_products_sub??cost1?????????

    public Double getHistorycost() {
        return historycost;
    }

    public void setHistorycost(Double historycost) {
        this.historycost = historycost;
    }

    private java.sql.Timestamp createdate;//????????????

    public Timestamp getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Timestamp createdate) {
        this.createdate = createdate;
    }

    public long getRelid() {
        return relid;
    }

    public void setRelid(long relid) {
        this.relid = relid;
    }

}
