package com.project.dao;

import com.project.dto.*;

import java.util.concurrent.ExecutionException;

public interface MonthlyDao {
    User userInfo(String email) throws Exception;

    Monthly monthlyInfo(String name) throws Exception;

    Card cardInfo(String email) throws Exception;

    int payment(MonthlyPayList monthlyPayList) throws Exception;

    int payListInsert(PayList payList) throws Exception;

    int pointUpdate(String email, int m_point) throws Exception;
}
