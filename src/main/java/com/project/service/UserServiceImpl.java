package com.project.service;

import com.project.dao.UserDao;
import com.project.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public int user_insert(User user) throws Exception {
        return userDao.insert(user);
    }

    @Override
    public int dupliChk(String email) throws Exception {
        int cnt = userDao.dupliChk(email);
        System.out.println("cnt = " + cnt);
        return cnt;
    }

    @Override
    public User selectUser(String login_email) throws Exception {
        return userDao.selectUser(login_email);
    }

    @Override
    public String findId(String name, String phone) throws Exception {
        System.out.println("Id찾기 service");

        return userDao.findId(name, phone);
    }

    @Override
    public String findPw(String email, String name, String phone) throws Exception {
        System.out.println("Pw찾기 service");

        return userDao.findPw(email, name, phone);
    }

    @Override
    public int pwdChk(String email, String mod_password) throws Exception {
        String pwd = userDao.pwdChk(email);
        System.out.println("pwd = " + pwd);
        int cnt = 0;

        if( pwd.equals(mod_password) ) {
            cnt = 1;
        }
        return cnt;
    }

}
