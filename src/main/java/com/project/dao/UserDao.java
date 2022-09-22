package com.project.dao;

import com.project.dto.User;

import java.util.List;

public interface UserDao {
    int insert(User user) throws Exception;

    int dupliChk(String email) throws Exception;

    User selectUser(String login_email) throws Exception;

    String findId(String name, String phone) throws Exception;

    String findPw(String email, String name, String phone) throws Exception;

    String pwdChk(String email) throws Exception;

}
