package com.project.service;

import com.project.dao.UserDao;
import com.project.dto.Credit;
import com.project.dto.PayList;
import com.project.dto.Point;
import com.project.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public int modify(String email, String password, String phone, String addr) throws Exception {
        System.out.println("회원정보 수정");

        return userDao.modify(email, password, phone, addr);
    }

    @Override
    public Credit selectCredit(String email) throws Exception {
        return userDao.selectCredit(email);
    }

    @Override
    public int card_insert(String card_num, String card_type, String email) throws Exception {
        System.out.println("카드 새로 등록");
        return userDao.card_insert(card_num, card_type, email);
    }

    @Override
    public int card_modify(String card_num, String card_type, String email) throws Exception {
        System.out.println("카드정보 수정");
        return userDao.card_modify(card_num, card_type, email);
    }

    @Override
    public int cancel(String email, int keep) throws Exception {
        System.out.println("월정액 해지");

        return userDao.cancel(email, keep);
    }

    @Override
    public int delete(String email) throws Exception {

        return userDao.delete(email);
    }

    @Override
    public List<Point> usePointList(String email) throws Exception {
        return userDao.usePointList(email);
    }

    @Override
    public List<PayList> userPayList(String email) throws Exception {
        return userDao.userPayList(email);
    }
}
