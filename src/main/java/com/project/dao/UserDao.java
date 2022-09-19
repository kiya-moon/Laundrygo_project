package com.project.dao;

import com.project.dto.User;

public interface UserDao {
    int insert(User user) throws Exception;

    int dupliChk(String email) throws Exception;
}
