package com.project.dto;

import java.util.Date;
import java.util.Objects;

public class Cs {
    private int cs_num;
    private String email;
    private String cs_type;
    private String cs_title;
    private String cs_content;
    private Date cs_date;
    private String cs_uuid;

    public Cs() {}

    public Cs(String email, String cs_type, String cs_title, String cs_content, String cs_uuid) {
        this.email = email;
        this.cs_type = cs_type;
        this.cs_title = cs_title;
        this.cs_content = cs_content;
        this.cs_uuid = cs_uuid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cs cs = (Cs) o;
        return cs_num == cs.cs_num && Objects.equals(email, cs.email) && Objects.equals(cs_type, cs.cs_type) && Objects.equals(cs_title, cs.cs_title) && Objects.equals(cs_content, cs.cs_content) && Objects.equals(cs_uuid, cs.cs_uuid);
    }

    @Override
    public int hashCode() {
        return Objects.hash(cs_num, email, cs_type, cs_title, cs_content, cs_uuid);
    }

    public int getCs_num() {
        return cs_num;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCs_type() {
        return cs_type;
    }

    public void setCs_type(String cs_type) {
        this.cs_type = cs_type;
    }

    public String getCs_title() {
        return cs_title;
    }

    public void setCs_title(String cs_title) {
        this.cs_title = cs_title;
    }

    public String getCs_content() {
        return cs_content;
    }

    public void setCs_content(String cs_content) {
        this.cs_content = cs_content;
    }

    public Date getCs_date() {
        return cs_date;
    }

    public void setCs_date(Date cs_date) {
        this.cs_date = cs_date;
    }

    public String getCs_uuid() { return cs_uuid; }

    public void setCs_uuid(String cs_uuid) { this.cs_uuid = cs_uuid; }

    @Override
    public String toString() {
        return "Cs{" +
                "cs_num=" + cs_num +
                ", email='" + email + '\'' +
                ", cs_type='" + cs_type + '\'' +
                ", cs_title='" + cs_title + '\'' +
                ", cs_content='" + cs_content + '\'' +
                ", cs_date=" + cs_date + '\'' +
                ", cs_uuid=" + cs_uuid +
                '}';
    }
}
