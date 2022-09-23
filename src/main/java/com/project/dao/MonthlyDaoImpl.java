package com.project.dao;

import com.project.dto.Card;
import com.project.dto.Monthly;
import com.project.dto.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
