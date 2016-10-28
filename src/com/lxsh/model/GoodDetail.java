package com.lxsh.model;

import java.util.Date;

public class GoodDetail {
    private Integer gid;

    private String gname;

    private String bname;

    private Double gprice;

    private String gsexname;

    private String gstylename;

    private String gtypename;

    private Integer gsize;

    private Integer gnum;

    private String cname;

    private Integer gsalenum;

    private Date gdate;

    private String statusname;

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

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname == null ? null : bname.trim();
    }

    public Double getGprice() {
        return gprice;
    }

    public void setGprice(Double gprice) {
        this.gprice = gprice;
    }

    public String getGsexname() {
        return gsexname;
    }

    public void setGsexname(String gsexname) {
        this.gsexname = gsexname == null ? null : gsexname.trim();
    }

    public String getGstylename() {
        return gstylename;
    }

    public void setGstylename(String gstylename) {
        this.gstylename = gstylename == null ? null : gstylename.trim();
    }

    public String getGtypename() {
        return gtypename;
    }

    public void setGtypename(String gtypename) {
        this.gtypename = gtypename == null ? null : gtypename.trim();
    }

    public Integer getGsize() {
        return gsize;
    }

    public void setGsize(Integer gsize) {
        this.gsize = gsize;
    }

    public Integer getGnum() {
        return gnum;
    }

    public void setGnum(Integer gnum) {
        this.gnum = gnum;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
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

    public String getStatusname() {
        return statusname;
    }

    public void setStatusname(String statusname) {
        this.statusname = statusname == null ? null : statusname.trim();
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