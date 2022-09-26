package com.project.service;

import com.project.dto.MonthlyPayList;

public interface PickupService {

    MonthlyPayList monthlyList(String email) throws Exception;
}
