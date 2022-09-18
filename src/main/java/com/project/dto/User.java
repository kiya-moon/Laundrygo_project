package com.project.dto;

import java.util.Objects;

public class User {
    private String email;
    private String password;
    private String name;
    private String phone;
    private String addr;
    private int point;

    public User(){}

    public User(String email, String password, String name, String phone, String addr) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.addr = addr;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return point == user.point && Objects.equals(email, user.email) && Objects.equals(password, user.password) && Objects.equals(name, user.name) && Objects.equals(phone, user.phone) && Objects.equals(addr, user.addr);
    }

    @Override
    public int hashCode() {
        return Objects.hash(email, password, name, phone, addr, point);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    @Override
    public String toString() {
        return "User{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", addr='" + addr + '\'' +
                ", point=" + point +
                '}';
    }
}
