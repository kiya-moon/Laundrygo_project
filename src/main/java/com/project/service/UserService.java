package com.project.service;

import com.project.dto.*;

import java.util.ArrayList;
import java.util.List;

public interface UserService {
    int user_insert(User user) throws Exception;

    int dupliChk(String email) throws Exception;

    User selectUser(String login_email) throws Exception;

    List<User> findId(String name, String phone) throws Exception;

    String findPw(String email, String name, String phone) throws Exception;

    int pwdChk(String email, String mod_password) throws Exception;

    Credit selectCredit(String email) throws Exception;

    int cancel(String email, int keep) throws Exception;

    int delete(String email) throws Exception;

    List<Point> usePointList(String email) throws Exception;

    List<PayList> userPayList(String email) throws Exception;

    int userModify(String pwd_mod, String phone_mod, String addr_mod, String email, User user) throws Exception;

    int cardModify(String account_mod, String account_num_mod, String email, Credit credit, MonthlyPayList monthlyPayList) throws Exception;
}
