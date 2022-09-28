package com.project.service;

import com.project.dto.*;

public interface MonthlyService {
    User userInfo(String email) throws Exception;

    Monthly monthlyInfo(String name) throws Exception;

    Card cardInfo(String email) throws Exception;

    int payment(MonthlyPayList monthlyPayList) throws Exception;

    int payListInsert(PayList payList) throws Exception;

    int pointUpdate(String email, int m_point) throws Exception;

    int usePointInsert(String email, String m_name, int use_point) throws Exception;
}