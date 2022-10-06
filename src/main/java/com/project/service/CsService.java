package com.project.service;

import com.project.dto.CSImg;
import com.project.dto.Cs;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface CsService {

    int cs_insert(String email, String cs_type, String cs_content, String cs_uuid) throws Exception;

    List<Cs> selectCs(String email) throws Exception;

    void imgSave(List<MultipartFile> cs_img, String cs_uuid) throws Exception;

    String findImg(String img_name) throws Exception;

    List<CSImg> selectCsImg(String email) throws Exception;
}
