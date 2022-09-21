package com.project.dao;

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
    public User apply(String email) {
        return session.selectOne(namespace+"apply", email);
    }
}
