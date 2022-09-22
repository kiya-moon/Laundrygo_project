package com.project.dto;

import java.util.Objects;

public class Monthly {
    private String m_name;
    private int m_price;
    private int life;
    private int cleaning;
    private int free;

    public Monthly(){}

    public Monthly(String m_name, int m_price, int life, int cleaning, int free) {
        this.m_name = m_name;
        this.m_price = m_price;
        this.life = life;
        this.cleaning = cleaning;
        this.free = free;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Monthly monthly = (Monthly) o;
        return m_price == monthly.m_price && life == monthly.life && cleaning == monthly.cleaning && free == monthly.free && Objects.equals(m_name, monthly.m_name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(m_name, m_price, life, cleaning, free);
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

    public int getLife() {
        return life;
    }

    public void setLife(int life) {
        this.life = life;
    }

    public int getCleaning() {
        return cleaning;
    }

    public void setCleaning(int cleaning) {
        this.cleaning = cleaning;
    }

    public int getFree() {
        return free;
    }

    public void setFree(int free) {
        this.free = free;
    }

    @Override
    public String toString() {
        return "Monthly{" +
                "m_name='" + m_name + '\'' +
                ", m_price=" + m_price +
                ", life=" + life +
                ", cleaning=" + cleaning +
                ", free=" + free +
                '}';
    }
}
