package com.project.service;

import com.project.dao.MonthlyDao;
import com.project.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MonthlyServiceImpl implements MonthlyService {
    @Autowired
    private MonthlyDao monthlyDao;

    @Override
    public User userInfo(String email) throws Exception {
        return monthlyDao.userInfo(email);
    }

    @Override
    public Monthly monthlyInfo(String name) throws Exception {
        return monthlyDao.monthlyInfo(name);
    }

    @Override
    public Card cardInfo(String email) throws Exception {
        return monthlyDao.cardInfo(email);
    }

    @Override
    public int payment(MonthlyPayList monthlyPayList) throws Exception {
        return monthlyDao.payment(monthlyPayList);
    }

    @Override
    public int payListInsert(PayList payList) throws Exception {
        return monthlyDao.payListInsert(payList);
    }

    @Override
    public int pointUpdate(String email, int m_point) throws Exception {
        return monthlyDao.pointUpdate(email, m_point);
    }

    @Override
    public int usePointInsert(String email, String m_name, int use_point) throws Exception {
        return monthlyDao.usePointInsert(email, m_name, use_point);
    }
}
