package com.lxsh.model;

public class Gsex {
    private Integer gsid;

    private String gsexname;

    public Integer getGsid() {
        return gsid;
    }

    public void setGsid(Integer gsid) {
        this.gsid = gsid;
    }

    public String getGsexname() {
        return gsexname;
    }

    public void setGsexname(String gsexname) {
        this.gsexname = gsexname == null ? null : gsexname.trim();
    }
}