package com.project.dao;

import com.project.dto.Cs;

import java.util.List;

public interface CsDao {
    int insert(Cs cs) throws Exception;

    List<Cs> selectCs(String email) throws Exception;
}
