package com.project.dto;

import java.util.Objects;

public class Pickup {
    private int pickup_num;
    private String email;
    private String p_addr;
    private String laundry_type;
    private String going;

    public Pickup(){};

    public Pickup(int pickup_num, String email, String p_addr, String laundry_type, String going) {
        this.pickup_num = pickup_num;
        this.email = email;
        this.p_addr = p_addr;
        this.laundry_type = laundry_type;
        this.going = going;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Pickup pickup = (Pickup) o;
        return pickup_num == pickup.pickup_num && Objects.equals(email, pickup.email) && Objects.equals(p_addr, pickup.p_addr) && Objects.equals(laundry_type, pickup.laundry_type) && Objects.equals(going, pickup.going);
    }

    @Override
    public int hashCode() {
        return Objects.hash(pickup_num, email, p_addr, laundry_type, going);
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

    public String getLaundry_type() {
        return laundry_type;
    }

    public void setLaundry_type(String laundry_type) {
        this.laundry_type = laundry_type;
    }

    public String getGoing() {
        return going;
    }

    public void setGoing(String going) {
        this.going = going;
    }

    @Override
    public String toString() {
        return "Pickup{" +
                "pickup_num=" + pickup_num +
                ", email='" + email + '\'' +
                ", p_addr='" + p_addr + '\'' +
                ", laundry_type='" + laundry_type + '\'' +
                ", going='" + going + '\'' +
                '}';
    }
}
