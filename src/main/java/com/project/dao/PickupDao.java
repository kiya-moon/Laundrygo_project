package com.project.dao;

import com.project.dto.MonthlyPayList;
import com.project.dto.Pickup;

import java.util.List;

public interface PickupDao {

    MonthlyPayList monthlyList(String email) throws Exception;

    int pickupInsert(String p_addr, String m_name, String email, String p_life, String p_cleaning, String p_free) throws Exception;

    int cntUpdate(int new_lifeCnt, int new_cleaningCnt, int new_freeCnt, String email, int exTotal) throws Exception;

    List<Pickup> pickupList(String email) throws Exception;
}
