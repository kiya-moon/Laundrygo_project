package com.project.dao;

import com.project.dto.Credit;
import com.project.dto.PayList;
import com.project.dto.Point;
import com.project.dto.User;

import java.util.List;

public interface UserDao {
    int insert(User user) throws Exception;

    int dupliChk(String email) throws Exception;

    User selectUser(String login_email) throws Exception;

    String findId(String name, String phone) throws Exception;

    String findPw(String email, String name, String phone) throws Exception;

    String pwdChk(String email) throws Exception;

    int modify(String email, String password, String phone, String addr) throws Exception;

    Credit selectCredit(String email) throws Exception;

    int card_insert(String card_num, String card_type, String email) throws Exception;

    int card_modify(String card_num, String card_type, String email) throws Exception;

    int cancel(String email, int keep) throws Exception;

    int delete(String email) throws Exception;

    List<Point> usePointList(String email) throws Exception;

    List<PayList> userPayList(String email) throws Exception;
}
