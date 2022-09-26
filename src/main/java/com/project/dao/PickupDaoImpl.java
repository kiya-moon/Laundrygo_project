package com.project.dao;

import com.project.dto.MonthlyPayList;
import com.project.dto.Pickup;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class PickupDaoImpl implements PickupDao {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.project.dao.pickupMapper.";

    @Override
    public MonthlyPayList monthlyList(String email) throws Exception{
        return session.selectOne(namespace+"monthlyList", email);
    }

    @Override
    public int pickupInsert(String p_addr, String m_name, String email) throws Exception{
        Map map = new HashMap();
        map.put("p_addr", p_addr);
        map.put("laundry_type", m_name);
        map.put("email", email);
        return session.update(namespace+"pickupInsert", map);
    }

    @Override
    public int cntUpdate(int new_lifeCnt, int new_cleaningCnt, int new_freeCnt, String email) throws Exception{
        Map map = new HashMap();
        map.put("life_cnt",new_lifeCnt);
        map.put("cleaning_cnt",new_cleaningCnt);
        map.put("free_cnt",new_freeCnt);
        map.put("email",email);
        return session.update(namespace+"cntUpdate", map);
    }
}
