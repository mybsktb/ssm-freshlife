package com.lxsh.model;

public class Gstyle {
    private Integer glid;

    private String gstylename;

    public Integer getGlid() {
        return glid;
    }

    public void setGlid(Integer glid) {
        this.glid = glid;
    }

    public String getGstylename() {
        return gstylename;
    }

    public void setGstylename(String gstylename) {
        this.gstylename = gstylename == null ? null : gstylename.trim();
    }
}