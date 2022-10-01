package com.project.service;

import com.project.dto.CSImg;
import com.project.dto.Cs;

import java.util.List;
import java.util.Map;

public interface CsService {

    int cs_insert(Cs cs) throws Exception;

    List<Cs> selectCs(String email) throws Exception;

//    List<Map<String, Object>> imgSave(String cs_uuid, MultipartHttpServletRequest mRequest) throws Exception;

    int imgSave(Map<String, Object> listMap) throws Exception;

    String findImg(String img_name) throws Exception;

    List<String> selectUuid(String email) throws Exception;

    List<CSImg> selectCsImg(String idx) throws Exception;
}
