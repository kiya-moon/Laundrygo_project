package com.project.service;

import com.project.dto.Card;
import com.project.dto.Monthly;
import com.project.dto.MonthlyPayList;
import com.project.dto.User;

public interface MonthlyService {
    User userInfo(String email) throws Exception;

    Monthly monthlyInfo(String name) throws Exception;

    Card cardInfo(String email) throws Exception;

    int payment(MonthlyPayList monthlyPayList) throws Exception;
}