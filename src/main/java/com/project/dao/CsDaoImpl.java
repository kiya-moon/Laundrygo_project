package com.project.dao;

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
    public int imgSave(Map<String, Object> listMap) throws Exception {
        return session.insert(namespace+"imgInsert", listMap);
    }
}
