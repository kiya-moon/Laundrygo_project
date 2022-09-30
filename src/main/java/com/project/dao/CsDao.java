package com.project.dao;

import com.project.dto.Cs;

import java.util.List;
import java.util.Map;

public interface CsDao {
    int insert(Cs cs) throws Exception;

    List<Cs> selectCs(String email) throws Exception;

    int imgSave(Map<String, Object> listMap) throws Exception;
}
