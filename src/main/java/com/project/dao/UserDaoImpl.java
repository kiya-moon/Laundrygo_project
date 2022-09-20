package com.project.dao;

import com.project.dto.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.project.dao.MemberMapper.";

    @Override
    public int insert(User user) throws Exception {
        return session.insert(namespace+"insert", user);
    }

    @Override
    public int dupliChk(String email) throws Exception{

        int cnt = session.selectOne(namespace+"dupliChk", email);
        System.out.println("cnt = " + cnt);
        return cnt;
    }

    @Override
    public User selectUser(String login_email) throws Exception {
        return session.selectOne(namespace+"selectUser", login_email);
    }

}
