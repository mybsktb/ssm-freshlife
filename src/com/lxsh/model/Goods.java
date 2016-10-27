package com.lxsh.model;

import java.util.Date;

public class Goods {
    private Integer gid;

    private String gname;

    private Integer bid;

    private Double gprice;

    private String gsize;

    private Integer gtype;

    private Integer gnumber;

    private Integer gsalenum;

    private Date gdate;

    private Integer gnow;

    private String gimage;

    private byte[] gcontext;

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

    public String getGsize() {
        return gsize;
    }

    public void setGsize(String gsize) {
        this.gsize = gsize == null ? null : gsize.trim();
    }

    public Integer getGtype() {
        return gtype;
    }

    public void setGtype(Integer gtype) {
        this.gtype = gtype;
    }

    public Integer getGnumber() {
        return gnumber;
    }

    public void setGnumber(Integer gnumber) {
        this.gnumber = gnumber;
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

    public Integer getGnow() {
        return gnow;
    }

    public void setGnow(Integer gnow) {
        this.gnow = gnow;
    }

    public String getGimage() {
        return gimage;
    }

    public void setGimage(String gimage) {
        this.gimage = gimage == null ? null : gimage.trim();
    }

    public byte[] getGcontext() {
        return gcontext;
    }

    public void setGcontext(byte[] gcontext) {
        this.gcontext = gcontext;
    }
}