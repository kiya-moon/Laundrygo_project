package com.project.dao;

import com.project.dto.User;

import java.util.List;

public interface UserDao {
    int insert(User user) throws Exception;

//    String login(String login_email, String login_password) throws Exception;

    User selectUser(String login_email) throws Exception;
}
