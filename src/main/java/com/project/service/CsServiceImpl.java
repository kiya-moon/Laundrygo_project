package com.project.service;

import com.project.dao.CsDao;
import com.project.dto.Cs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CsServiceImpl implements CsService {
    @Autowired
    private CsDao csDao;

    @Override
    public int cs_insert(Cs cs) throws Exception {
        return csDao.insert(cs);
    }

    @Override
    public List<Cs> selectCs(String email) throws Exception {
        return csDao.selectCs(email);
    }

    ;
}
