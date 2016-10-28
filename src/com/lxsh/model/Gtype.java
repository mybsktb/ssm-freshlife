package com.lxsh.model;

public class Gtype {
    private Integer gtid;

    private String gtypename;

    public Integer getGtid() {
        return gtid;
    }

    public void setGtid(Integer gtid) {
        this.gtid = gtid;
    }

    public String getGtypename() {
        return gtypename;
    }

    public void setGtypename(String gtypename) {
        this.gtypename = gtypename == null ? null : gtypename.trim();
    }
}