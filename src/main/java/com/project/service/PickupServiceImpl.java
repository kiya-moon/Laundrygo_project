package com.project.service;

import com.project.dao.PickupDao;
import com.project.dto.MonthlyPayList;
import com.project.dto.Pickup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PickupServiceImpl implements PickupService {
    @Autowired
    private PickupDao pickupDao;


    @Override
    public MonthlyPayList monthlyList(String email) throws Exception {
        return pickupDao.monthlyList(email);
    }

    @Override
    public int pickupInsert(String p_addr, String m_name, String email, String p_life, String p_cleaning, String p_free) throws Exception{
        return  pickupDao.pickupInsert(p_addr, m_name, email, p_life, p_cleaning, p_free);
    }

    @Override
    public int cntUpdate(int new_lifeCnt, int new_cleaningCnt, int new_freeCnt, String email, int exTotal) throws Exception {
        return pickupDao.cntUpdate(new_lifeCnt,new_cleaningCnt,new_freeCnt, email, exTotal);
    }

    @Override
    public List<Pickup> pickupList(String email) throws Exception {

        return pickupDao.pickupList(email);
    }
}
