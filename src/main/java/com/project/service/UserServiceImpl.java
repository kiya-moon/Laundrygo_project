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


}
