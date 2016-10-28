package com.lxsh.model;

import java.util.Date;

public class Goods {
    private Integer gid;

    private String gname;

    private Integer bid;

    private Double gprice;

    private Integer gsid;

    private Integer glid;

    private Integer gtid;

    private Integer gsalenum;

    private Date gdate;

    private Integer statusid;

    private String gimage;

    private String gcontext;

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname == null ? null : gname.trim();
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Double getGprice() {
        return gprice;
    }

    public void setGprice(Double gprice) {
        this.gprice = gprice;
    }

    public Integer getGsid() {
        return gsid;
    }

    public void setGsid(Integer gsid) {
        this.gsid = gsid;
    }

    public Integer getGlid() {
        return glid;
    }

    public void setGlid(Integer glid) {
        this.glid = glid;
    }

    public Integer getGtid() {
        return gtid;
    }

    public void setGtid(Integer gtid) {
        this.gtid = gtid;
    }

    public Integer getGsalenum() {
        return gsalenum;
    }

    public void setGsalenum(Integer gsalenum) {
        this.gsalenum = gsalenum;
    }

    public Date getGdate() {
        return gdate;
    }

    public void setGdate(Date gdate) {
        this.gdate = gdate;
    }

    public Integer getStatusid() {
        return statusid;
    }

    public void setStatusid(Integer statusid) {
        this.statusid = statusid;
    }

    public String getGimage() {
        return gimage;
    }

    public void setGimage(String gimage) {
        this.gimage = gimage == null ? null : gimage.trim();
    }

    public String getGcontext() {
        return gcontext;
    }

    public void setGcontext(String gcontext) {
        this.gcontext = gcontext == null ? null : gcontext.trim();
    }
}