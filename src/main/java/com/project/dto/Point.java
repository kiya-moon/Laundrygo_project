package com.project.dto;

import java.util.Date;
import java.util.Objects;

public class Point {
    private int point_num;
    private String email;
    private String m_name;
    private int use_point;
    private Date use_date;

    public Point() {}

    public Point(String email, String m_name, int use_point) {
        this.email = email;
        this.m_name = m_name;
        this.use_point = use_point;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Point point = (Point) o;
        return use_point == point.use_point && Objects.equals(email, point.email) && Objects.equals(m_name, point.m_name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(email, m_name, use_point);
    }

    public int getPoint_num() {
        return point_num;
    }

    public void setPoint_num(int point_num) {
        this.point_num = point_num;
    }

    public Date getUse_date() {
        return use_date;
    }

    public void setUse_date(Date use_date) {
        this.use_date = use_date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public int getUse_point() {
        return use_point;
    }

    public void setUse_point(int use_point) {
        this.use_point = use_point;
    }

    @Override
    public String toString() {
        return "Point{" +
                "point_num=" + point_num +
                ", email='" + email + '\'' +
                ", m_name='" + m_name + '\'' +
                ", use_point=" + use_point +
                ", use_date=" + use_date +
                '}';
    }
}
