package com.project.dao;

import com.project.dto.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.project.dao.MemberMapper.";

    @Override
    public int insert(User user) throws Exception {
        return session.insert(namespace+"insert", user);
    }
}
