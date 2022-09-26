package com.project.service;

import com.project.dto.Cs;

import java.util.List;

public interface CsService {
    int cs_insert(Cs cs) throws Exception;

    List<Cs> selectCs(String email) throws Exception;
}
