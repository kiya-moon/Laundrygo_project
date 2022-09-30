package com.project.dto;

import java.util.Objects;

public class CSImg {
    String cs_uuid;
    String img_name;
    String img_file;

    public CSImg(){}

    public CSImg(String cs_uuid, String img_name, String img_file) {
        this.cs_uuid = cs_uuid;
        this.img_name = img_name;
        this.img_file = img_file;
    }

    public String getCs_uuid() {
        return cs_uuid;
    }

    public void setCs_uuid(String cs_uuid) {
        this.cs_uuid = cs_uuid;
    }

    public String getImg_name() {
        return img_name;
    }

    public void setImg_name(String img_name) {
        this.img_name = img_name;
    }

    public String getImg_file() {
        return img_file;
    }

    public void setImg_file(String img_file) {
        this.img_file = img_file;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CSImg csImg = (CSImg) o;
        return Objects.equals(cs_uuid, csImg.cs_uuid) && Objects.equals(img_name, csImg.img_name) && Objects.equals(img_file, csImg.img_file);
    }

    @Override
    public int hashCode() {
        return Objects.hash(cs_uuid, img_name, img_file);
    }
}
