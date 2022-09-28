package com.project.dao;

import com.project.dto.Card;
import com.project.dto.Monthly;
import com.project.dto.MonthlyPayList;
import com.project.dto.User;

import java.util.concurrent.ExecutionException;

public interface MonthlyDao {
    User userInfo(String email) throws Exception;

    Monthly monthlyInfo(String name) throws Exception;

    Card cardInfo(String email) throws Exception;

    int payment(MonthlyPayList monthlyPayList) throws Exception;

    int pointUpdate(String email, int m_point) throws Exception;

    int usePointInsert(String email, String m_name, int use_point) throws Exception;
}
