package com.project.service;

import com.project.dao.MonthlyDao;
import com.project.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

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
    public List<MonthlyPayList> monthlyList() throws Exception {
        return monthlyDao.monthlyList();
    }

    @Override
    public int monthlyListUpdate(String email, String card_type, String card_num) throws Exception {
        return monthlyDao.monthlyListUpdate(email, card_type, card_num);
    }

    @Override
    public int new_monthlyListUpdate(String email, int life_cnt, int cleaning_cnt, int free_cnt, LocalDateTime start_date, LocalDateTime end_date) throws Exception {
        return monthlyDao.new_monthlyListUpdate(email, life_cnt, cleaning_cnt, free_cnt, start_date, end_date);
    }

    @Override
    public int monthlyListDelete(String email) throws Exception {
        return monthlyDao.monthlyListDelete(email);
    }

    @Override
    public Credit cardInfo(String email) throws Exception {
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
