package com.project.dto;

import java.util.Objects;

public class Pickup {
    private int pickup_num;
    private String email;
    private String p_addr;
    private String p_life;
    private String p_cleaning;
    private String p_free;
    private String going;

    public Pickup() {};

    public Pickup(int pickup_num, String email, String p_addr, String p_life, String p_cleaning, String p_free, String going) {
        this.pickup_num = pickup_num;
        this.email = email;
        this.p_addr = p_addr;
        this.p_life = p_life;
        this.p_cleaning = p_cleaning;
        this.p_free = p_free;
        this.going = going;
    }

    public int getPickup_num() {
        return pickup_num;
    }

    public void setPickup_num(int pickup_num) {
        this.pickup_num = pickup_num;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getP_addr() {
        return p_addr;
    }

    public void setP_addr(String p_addr) {
        this.p_addr = p_addr;
    }

    public String getP_life() {
        return p_life;
    }

    public void setP_life(String p_life) {
        this.p_life = p_life;
    }

    public String getP_cleaning() {
        return p_cleaning;
    }

    public void setP_cleaning(String p_cleaning) {
        this.p_cleaning = p_cleaning;
    }

    public String getP_free() {
        return p_free;
    }

    public void setP_free(String p_free) {
        this.p_free = p_free;
    }

    public String getGoing() {
        return going;
    }

    public void setGoing(String going) {
        this.going = going;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Pickup pickup = (Pickup) o;
        return pickup_num == pickup.pickup_num && Objects.equals(email, pickup.email) && Objects.equals(p_addr, pickup.p_addr) && Objects.equals(p_life, pickup.p_life) && Objects.equals(p_cleaning, pickup.p_cleaning) && Objects.equals(p_free, pickup.p_free) && Objects.equals(going, pickup.going);
    }

    @Override
    public int hashCode() {
        return Objects.hash(pickup_num, email, p_addr, p_life, p_cleaning, p_free, going);
    }

    @Override
    public String toString() {
        return "Pickup{" +
                "pickup_num=" + pickup_num +
                ", email='" + email + '\'' +
                ", p_addr='" + p_addr + '\'' +
                ", p_life='" + p_life + '\'' +
                ", p_cleaning='" + p_cleaning + '\'' +
                ", p_free='" + p_free + '\'' +
                ", going='" + going + '\'' +
                '}';
    }

}