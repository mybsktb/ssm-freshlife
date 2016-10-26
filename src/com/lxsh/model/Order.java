package com.lxsh.model;

import java.util.Date;

public class Order {
    private Integer oid;

    private Integer uid;

    private String uuid;

    private String ogoods;

    private Double oprice;

    private Date otime;

    private String onow;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid == null ? null : uuid.trim();
    }

    public String getOgoods() {
        return ogoods;
    }

    public void setOgoods(String ogoods) {
        this.ogoods = ogoods == null ? null : ogoods.trim();
    }

    public Double getOprice() {
        return oprice;
    }

    public void setOprice(Double oprice) {
        this.oprice = oprice;
    }

    public Date getOtime() {
        return otime;
    }

    public void setOtime(Date otime) {
        this.otime = otime;
    }

    public String getOnow() {
        return onow;
    }

    public void setOnow(String onow) {
        this.onow = onow == null ? null : onow.trim();
    }
}