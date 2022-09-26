package com.project.service;

import com.project.dao.PickupDao;
import com.project.dto.MonthlyPayList;
import com.project.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PickupServiceImpl implements PickupService {
    @Autowired
    private PickupDao pickupDao;


    @Override
    public MonthlyPayList monthlyList(String email) throws Exception {
        return pickupDao.monthlyList(email);
    }
}
