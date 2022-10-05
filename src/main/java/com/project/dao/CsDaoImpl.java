package com.project.dao;

import com.project.dto.CSImg;
import com.project.dto.Cs;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class CsDaoImpl implements CsDao {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.project.dao.CsMapper.";

    @Override
    public int insert(Cs cs) throws Exception {
        return session.insert(namespace+"insert", cs);
    }

    @Override
    public List<Cs> selectCs(String email) throws Exception {
        return session.selectList(namespace+"selectCs", email);
    }

    @Override
    public List<String> selectUuid(String email) throws Exception {
        return session.selectList(namespace+"selectUuid", email);
    }

    @Override
    public List<CSImg> selectCsImg(String idx) throws Exception {
        System.out.println(idx);
        return session.selectList(namespace+"selectCsImg", idx);
    }

    @Override
    public void imgSave(Map<String, Object> listMap) throws Exception {
        session.insert(namespace+"imgInsert", listMap);
    }

    @Override
    public String selectImg(String img_name) throws Exception {
        System.out.println("다오임플 도착" + img_name);
        String path = session.selectOne(namespace+"selectImg", img_name);
        System.out.println("다오임플 path : " + path);
        return path;
    }
}
