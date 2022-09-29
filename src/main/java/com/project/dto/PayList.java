package com.project.dto;

import java.time.LocalDateTime;
import java.util.Objects;

public class PayList {
    private int paylist_num;
    private String email;
    private String m_name;
    private int m_price;
    private LocalDateTime pay_date;
    private String card_num;
    private String card_type;
    private int total_price;
    private int extra_charge;

    public PayList(){}

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PayList payList = (PayList) o;
        return paylist_num == payList.paylist_num && m_price == payList.m_price && total_price == payList.total_price && extra_charge == payList.extra_charge && Objects.equals(email, payList.email) && Objects.equals(m_name, payList.m_name) && Objects.equals(card_num, payList.card_num) && Objects.equals(card_type, payList.card_type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(paylist_num, email, m_name, m_price, card_num, card_type, total_price, extra_charge);
    }

    public PayList(int paylist_num, String email, String m_name, int m_price, String card_num, String card_type, int total_price, int extra_charge) {
        this.paylist_num = paylist_num;
        this.email = email;
        this.m_name = m_name;
        this.m_price = m_price;
        this.card_num = card_num;
        this.card_type = card_type;
        this.total_price = total_price;
        this.extra_charge = extra_charge;
    }

    public int getPaylist_num() {
        return paylist_num;
    }

    public void setPaylist_num(int paylist_num) {
        this.paylist_num = paylist_num;
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

    public int getM_price() {
        return m_price;
    }

    public void setM_price(int m_price) {
        this.m_price = m_price;
    }

    public LocalDateTime getPay_date() {
        return pay_date;
    }

    public void setPay_date(LocalDateTime pay_date) {
        this.pay_date = pay_date;
    }

    public String getCard_num() {
        return card_num;
    }

    public void setCard_num(String card_num) {
        this.card_num = card_num;
    }

    public String getCard_type() {
        return card_type;
    }

    public void setCard_type(String card_type) {
        this.card_type = card_type;
    }

    public int getTotal_price() {
        return total_price;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }

    public int getExtra_charge() {
        return extra_charge;
    }

    public void setExtra_charge(int extra_charge) {
        this.extra_charge = extra_charge;
    }

    @Override
    public String toString() {
        return "PayList{" +
                "paylist_num=" + paylist_num +
                ", email='" + email + '\'' +
                ", m_name='" + m_name + '\'' +
                ", m_price=" + m_price +
                ", pay_date=" + pay_date +
                ", card_num='" + card_num + '\'' +
                ", card_type='" + card_type + '\'' +
                ", total_price=" + total_price +
                ", extra_charge=" + extra_charge +
                '}';
    }
}
