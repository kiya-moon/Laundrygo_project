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
    public int dupliChk(String email) throws Exception{
        int cnt = userDao.dupliChk(email);
        System.out.println("cnt = " + cnt);
        return cnt;
    }
    
    @Override
    public User selectUser(String login_email) throws Exception {
        return userDao.selectUser(login_email);
    }

}
