package com.project.dao;

import com.project.dto.MonthlyPayList;
import com.project.dto.Pickup;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PickupDaoImpl implements PickupDao {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.project.dao.pickupMapper.";

    @Override
    public int pickupInsert(Pickup pickup) throws Exception {
        return session.insert(namespace+"pickupInsert", pickup);
    }

    @Override
    public MonthlyPayList monthlyList(String email) {
        return session.selectOne(namespace+"monthlyList", email);
    }
}
