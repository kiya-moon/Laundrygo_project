package com.project.dao;

import com.project.dto.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
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
    public List<MonthlyPayList> monthlyList() throws Exception {
        return session.selectList(namespace+"monthlyList");
    }

    @Override
    public int new_monthlyListUpdate(String email, int life_cnt, int cleaning_cnt, int free_cnt, LocalDateTime start_date, LocalDateTime end_date) throws Exception {
        Map map = new HashMap();
        map.put("email", email);
        map.put("life_cnt", life_cnt);
        map.put("cleaning_cnt", cleaning_cnt);
        map.put("free_cnt", free_cnt);
        map.put("start_date", start_date);
        map.put("end_date", end_date);
        return session.update(namespace+"new_monthlyListUpdate", map);
    }

    @Override
    public int monthlyListUpdate(String email, String card_type, String card_num) throws Exception {
        Map map = new HashMap();
        map.put("email", email);
        map.put("card_type", card_type);
        map.put("card_num", card_num);
        return session.update(namespace+"monthlyListUpdate", map);
    }

    @Override
    public int monthlyListDelete(String email) throws Exception {
        return session.delete(namespace+"monthlyListDelete", email);
    }

    @Override
    public Credit cardInfo(String email) throws Exception {
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
