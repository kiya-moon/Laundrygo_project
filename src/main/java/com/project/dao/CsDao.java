package com.project.dao;

import com.project.dto.CSImg;
import com.project.dto.Cs;

import java.util.List;
import java.util.Map;

public interface CsDao {
    int insert(Cs cs) throws Exception;

    List<Cs> selectCs(String email) throws Exception;

    int imgSave(Map<String, Object> listMap) throws Exception;

    String selectImg(String img_name) throws Exception;

    List<String> selectUuid(String email) throws Exception;

    List<CSImg> selectCsImg(String idx) throws Exception;
}
