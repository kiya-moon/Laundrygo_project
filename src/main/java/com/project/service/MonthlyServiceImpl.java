package com.project.service;

import com.project.dao.MonthlyDao;
import com.project.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MonthlyServiceImpl implements MonthlyService {
    @Autowired
    private MonthlyDao monthlyDao;

    @Override
    public User apply(String email) throws Exception {
        return monthlyDao.apply(email);
    }
}
