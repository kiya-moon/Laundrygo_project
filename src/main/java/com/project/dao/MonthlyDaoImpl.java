package com.project.dao;

import com.project.dto.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class MonthlyDaoImpl implements MonthlyDao {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.project.dao.MonthlyMapper.";

    @Override
    public User userInfo(String email) {
        return session.selectOne(namespace+"userInfo", email);
    }

    @Override
    public Monthly monthlyInfo(String name) throws Exception {
        return session.selectOne(namespace+"monthlyInfo", name);
    }

    @Override
    public Card cardInfo(String email) throws Exception {
        return session.selectOne(namespace+"cardInfo", email);
    }

    @Override
    public int payment(MonthlyPayList monthlyPayList) throws Exception {
        return session.insert(namespace+"paymentInsert", monthlyPayList);
    }

    @Override
    public int payListInsert(PayList payList) throws Exception {
        return session.insert(namespace+"payListInsert", payList);
    }

    @Override
    public int pointUpdate(String email, int m_point) throws Exception {
        Map map = new HashMap();
        map.put("email", email);
        map.put("point", m_point);
        return session.update(namespace+"pointUpdate", map);
    }

    @Override
    public int usePointInsert(String email, String m_name, int use_point) throws Exception {
       Map map = new HashMap();
       map.put("email", email);
       map.put("m_name", m_name);
       map.put("use_point", use_point);

        return session.insert(namespace+"usePointInsert", map);
    }
}
