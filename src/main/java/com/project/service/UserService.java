package com.project.service;

import com.project.dto.User;

public interface UserService {
    int user_insert(User user) throws Exception;

    int dupliChk(String email) throws Exception;

    User selectUser(String login_email) throws Exception;

}
