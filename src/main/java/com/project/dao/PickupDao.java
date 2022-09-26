package com.project.dao;

import com.project.dto.MonthlyPayList;
import com.project.dto.Pickup;

public interface PickupDao {

    MonthlyPayList monthlyList(String email) throws Exception;

    int pickupInsert(String p_addr, String m_name, String email) throws Exception;

    int cntUpdate(int new_lifeCnt, int new_cleaningCnt, int new_freeCnt, String email) throws Exception;
}
