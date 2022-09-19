package com.project.service;

import com.project.dto.User;

public interface UserService {
    int user_insert(User user) throws Exception;

    User selectUser(String login_email) throws Exception;

//    String user_select(String login_email, String login_password) throws Exception;

}
