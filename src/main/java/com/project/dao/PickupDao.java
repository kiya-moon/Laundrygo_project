package com.project.dao;

import com.project.dto.MonthlyPayList;
import com.project.dto.Pickup;

public interface PickupDao {
    int pickupInsert(Pickup pickup) throws Exception;

    MonthlyPayList monthlyList(String email);
}
