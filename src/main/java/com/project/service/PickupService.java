package com.project.service;

import com.project.dto.MonthlyPayList;
import com.project.dto.Pickup;

import java.util.List;

public interface PickupService {

    MonthlyPayList monthlyList(String email) throws Exception;

    List<Pickup> pickupList(String email) throws Exception;

    void pickupUpdate(MonthlyPayList monthlyPayList, String laundry, String laundry2, String p_addr, int inputCnt, String email) throws Exception;
}
