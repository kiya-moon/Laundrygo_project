package com.project.service;

import com.project.dto.Cs;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;
import java.util.Map;

public interface CsService {

    int cs_insert(Cs cs) throws Exception;

    List<Cs> selectCs(String email) throws Exception;

//    List<Map<String, Object>> imgSave(String cs_uuid, MultipartHttpServletRequest mRequest) throws Exception;

    int imgSave(Map<String, Object> listMap) throws Exception;
}
