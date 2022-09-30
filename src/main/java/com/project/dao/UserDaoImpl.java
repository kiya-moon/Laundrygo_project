package com.project.dao;

import com.project.dto.Credit;
import com.project.dto.PayList;
import com.project.dto.Point;
import com.project.dto.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.project.dao.MemberMapper.";

    @Override
    public int insert(User user) throws Exception {
        return session.insert(namespace+"insert", user);
    }

    @Override
    public int dupliChk(String email) throws Exception{

        int cnt = session.selectOne(namespace+"dupliChk", email);
        System.out.println("cnt = " + cnt);
        return cnt;
    }

    @Override
    public User selectUser(String login_email) throws Exception {
        return session.selectOne(namespace+"selectUser", login_email);
    }

    @Override
    public String findId(String name, String phone) throws Exception {
        System.out.println("id찾기Dao");
        Map map = new HashMap();
        map.put("name", name);
        map.put("phone",phone);

        return session.selectOne(namespace + "findId", map);
    }

    public String findPw(String email, String name, String phone) throws Exception {
        System.out.println("pw찾기Dao");
        Map map = new HashMap();
        map.put("email", email);
        map.put("name", name);
        map.put("phone", phone);

        return session.selectOne(namespace + "findPw", map);
    }

    @Override
    public String pwdChk(String email) throws Exception {
        String pwd = session.selectOne(namespace+"mod_findPwd", email);

        return pwd;
    }

    @Override
    public int modify(String email, String password, String phone, String addr) throws Exception {
        System.out.println("회원정보 수정 Dao");
        Map map = new HashMap();
        map.put("email", email);
        map.put("password", password);
        map.put("phone", phone);
        map.put("addr", addr);

        return session.update(namespace + "modify", map);
    }

    @Override
    public Credit selectCredit(String email) throws Exception {
        return session.selectOne(namespace+"selectCredit", email);
    }

    @Override
    public int card_insert(String card_num, String card_type, String email) throws Exception {
        System.out.println("카드 등록 Dao");
        Map map = new HashMap();
        map.put("card_num", card_num);
        map.put("card_type", card_type);
        map.put("email", email);

        return session.insert(namespace+"insertCredit", map);
    }

    @Override
    public int card_modify(String card_num, String card_type, String email) throws Exception {
        System.out.println("카드정보 수정 Dao");
        Map map = new HashMap();
        map.put("card_num", card_num);
        map.put("card_type", card_type);
        map.put("email", email);

        return session.update(namespace+"modifyCredit", map);
    }

    @Override
    public int cancel(String email, int keep) throws Exception {
        Map map = new HashMap();
        map.put("keep", keep);
        map.put("email", email);
        return session.update(namespace+"cancel", map);
    }

    @Override
    public int delete(String email) throws Exception {

        return session.delete(namespace + "delete", email);
    }

    @Override
    public List<Point> usePointList(String email) throws Exception {
        return session.selectList(namespace+"usePointList", email);
    }

    @Override
    public List<PayList> userPayList(String email) throws Exception {
        return session.selectList(namespace + "userPayList", email);
    }
}