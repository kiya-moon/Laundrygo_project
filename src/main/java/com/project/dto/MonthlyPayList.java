package com.project.dto;

import org.springframework.cglib.core.Local;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.Objects;

public class MonthlyPayList {
    private int monthly_num;
    private String email;
    private String m_name;
    private int m_price;
    private int life_cnt;
    private int cleaning_cnt;
    private int free_cnt;
    private LocalDateTime start_date;
    private LocalDateTime end_date;
    private int extra_charge;
    private int keep;

    public MonthlyPayList() {
    }

    public MonthlyPayList(int monthly_num, String email, String m_name, int m_price, int life_cnt, int cleaning_cnt, int free_cnt, int extra_charge, int keep) {
        this.monthly_num = monthly_num;
        this.email = email;
        this.m_name = m_name;
        this.m_price = m_price;
        this.life_cnt = life_cnt;
        this.cleaning_cnt = cleaning_cnt;
        this.free_cnt = free_cnt;
        this.extra_charge = extra_charge;
        this.keep = keep;
    }

    public int getMonthly_num() {
        return monthly_num;
    }

    public void setMonthly_num(int monthly_num) {
        this.monthly_num = monthly_num;
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

    public int getLife_cnt() {
        return life_cnt;
    }

    public void setLife_cnt(int life_cnt) {
        this.life_cnt = life_cnt;
    }

    public int getCleaning_cnt() {
        return cleaning_cnt;
    }

    public void setCleaning_cnt(int cleaning_cnt) {
        this.cleaning_cnt = cleaning_cnt;
    }

    public int getFree_cnt() {
        return free_cnt;
    }

    public void setFree_cnt(int free_cnt) {
        this.free_cnt = free_cnt;
    }

    public LocalDateTime getStart_date() {
        return start_date;
    }

    public void setStart_date(LocalDateTime start_date) {
        this.start_date = start_date;
    }

    public LocalDateTime getEnd_date() {
        return end_date;
    }

    public void setEnd_date(LocalDateTime end_date) {
        this.end_date = end_date;
    }

    public int getExtra_charge() {
        return extra_charge;
    }

    public void setExtra_charge(int extra_charge) {
        this.extra_charge = extra_charge;
    }

    public int getKeep() {
        return keep;
    }

    public void setKeep(int keep) {
        this.keep = keep;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MonthlyPayList that = (MonthlyPayList) o;
        return monthly_num == that.monthly_num && m_price == that.m_price && life_cnt == that.life_cnt && cleaning_cnt == that.cleaning_cnt && free_cnt == that.free_cnt && extra_charge == that.extra_charge && keep == that.keep && Objects.equals(email, that.email) && Objects.equals(m_name, that.m_name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(monthly_num, email, m_name, m_price, life_cnt, cleaning_cnt, free_cnt, extra_charge, keep);
    }
}
