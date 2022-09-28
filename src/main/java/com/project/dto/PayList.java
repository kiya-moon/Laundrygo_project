package com.project.dto;

import java.time.LocalDateTime;
import java.util.Objects;

public class PayList {
    private int paylist_num;
    private String email;
    private String m_name;
    private String m_price;
    private LocalDateTime pay_date;
    private String card_num;
    private String card_type;

    public PayList(){}

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PayList payList = (PayList) o;
        return paylist_num == payList.paylist_num && Objects.equals(email, payList.email) && Objects.equals(m_name, payList.m_name) && Objects.equals(m_price, payList.m_price) && Objects.equals(card_num, payList.card_num) && Objects.equals(card_type, payList.card_type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(paylist_num, email, m_name, m_price, card_num, card_type);
    }

    public PayList(int paylist_num, String email, String m_name, String m_price, String card_num, String card_type) {
        this.paylist_num = paylist_num;
        this.email = email;
        this.m_name = m_name;
        this.m_price = m_price;
        this.card_num = card_num;
        this.card_type = card_type;
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

    public String getM_price() {
        return m_price;
    }

    public void setM_price(String m_price) {
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

    @Override
    public String toString() {
        return "PayList{" +
                "paylist_num=" + paylist_num +
                ", email='" + email + '\'' +
                ", m_name='" + m_name + '\'' +
                ", m_price='" + m_price + '\'' +
                ", pay_date=" + pay_date +
                ", card_num='" + card_num + '\'' +
                ", card_type='" + card_type + '\'' +
                '}';
    }
}
