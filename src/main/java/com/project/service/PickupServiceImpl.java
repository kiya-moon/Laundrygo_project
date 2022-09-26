package com.project.service;

import com.project.dao.PickupDao;
import com.project.dto.MonthlyPayList;
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

    @Override
    public int pickupInsert(String p_addr, String m_name, String email) throws Exception{
        return  pickupDao.pickupInsert(p_addr, m_name, email);
    }

    @Override
    public int cntUpdate(int new_lifeCnt, int new_cleaningCnt, int new_freeCnt, String email) throws Exception {
        return pickupDao.cntUpdate(new_lifeCnt,new_cleaningCnt,new_freeCnt, email);
    }
}
