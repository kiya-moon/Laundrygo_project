package com.project.service;

import com.project.dao.MonthlyDao;
import com.project.dao.PickupDao;
import com.project.dao.UserDao;
import com.project.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Autowired
    private PickupDao pickupDao;

    @Autowired
    private MonthlyDao monthlyDao;

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
    public List<User> findId(String name, String phone) throws Exception {
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

        if (pwd.equals(mod_password)) {
            cnt = 1;
        }
        return cnt;
    }

    @Override
    public Credit selectCredit(String email) throws Exception {
        return userDao.selectCredit(email);
    }

    @Override
    public int cancel(String email, int keep) throws Exception {
        if(keep == 1){
            keep = 0;
        }else {
            keep = 1;
        }
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

    @Override
    public int userModify(String pwd_mod, String phone_mod, String addr_mod, String email, User user) throws Exception {
        // 새 정보 담을 변수 선언
        String new_pwd = null;
        String new_phone = null;
        String new_addr = null;

        // 새 정보와 기존 정보 비교 로직
        if( pwd_mod == "" ) {
            new_pwd = user.getPassword();
        } else {
            new_pwd = pwd_mod;
        }

        if( phone_mod == "" ) {
            new_phone = user.getPhone();
        } else {
            new_phone = phone_mod;
        }

        if( addr_mod == "" ) {
            new_addr = user.getAddr();
        } else {
            new_addr = addr_mod;
        }
        // 로직 끝

        return userDao.modify(email, new_pwd, new_phone, new_addr);
    }

    @Override
    public int cardModify(String account_mod, String account_num_mod, String email, Credit credit, MonthlyPayList monthlyPayList) throws Exception {
        // 새 정보 담을 변수 선언
        String new_account = null;
        String new_account_num = null;
        int account_cnt = 0;

        // 새 정보 업데이트 로직
        if( account_mod != "" & account_num_mod != "" ) {
            new_account = account_mod;
            new_account_num = account_num_mod;

            if( credit == null ) {
                account_cnt = userDao.card_insert(new_account_num, new_account, email);
            } else if( credit != null ) {
                account_cnt = userDao.card_modify(new_account_num, new_account, email);
            }

            if( monthlyPayList != null ) {
                monthlyDao.monthlyListUpdate(email, new_account, new_account_num);
            }
        }

        return account_cnt;
    }
}



