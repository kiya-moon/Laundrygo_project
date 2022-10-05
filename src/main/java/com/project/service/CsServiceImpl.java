package com.project.service;

import com.project.dao.CsDao;
import com.project.dto.CSImg;
import com.project.dto.Cs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.*;

@Service
public class CsServiceImpl implements CsService {
    @Autowired
    private CsDao csDao;

    @Override
    public int cs_insert(String email, String cs_type, String cs_content, String cs_uuid ) throws Exception {

        // CS_title 만들기
        String cs_title = null;

        if( cs_content.length() < 10 ) {
            cs_title = cs_content;
        } else {
            cs_title = cs_content.substring(0, 9);
        }

        // CS Dto 생성
        Cs cs = new Cs(email, cs_type, cs_title, cs_content, cs_uuid);

        return csDao.insert(cs);
    }

    @Override
    public List<Cs> selectCs(String email) throws Exception {
        return csDao.selectCs(email);
    }

    @Override
    public void imgSave(List<MultipartFile> cs_img, String cs_uuid) throws Exception {
        // 이미지 저장 처리
        // img_name은 UUID + 사용자가 저장한 이미지 이름
        // img_file은 저장경로
        // imgPath는 로컬환경에 맞게 변경 필요
        String imgPath = "C:\\uploadImg\\";

        Map<String, Object> listMap = new HashMap<>();

        for(MultipartFile mf : cs_img){
            UUID uuid2 = UUID.randomUUID();
            String imgName = uuid2 + "_" + mf.getOriginalFilename();
            File saveImg = new File(imgPath, imgName);
            mf.transferTo(saveImg);

            int extra = imgName.lastIndexOf(".");

            String imgName_x = imgName.substring(0, extra);

            listMap.put("img_name", imgName_x);
            listMap.put("img_file", imgPath + imgName);
            listMap.put("cs_uuid", cs_uuid);

            // 서비스 단에 map 넘기기
            csDao.imgSave(listMap);
        }
    }

    @Override
    public String findImg(String img_name) throws Exception {
        return csDao.selectImg(img_name);
    }

    @Override
    public List<CSImg> selectCsImg(String email) throws Exception {
        List<String> cs_uuid = csDao.selectUuid(email);

        List<CSImg> csImg = new ArrayList<>();

        for (int i=0; i<cs_uuid.size(); i++){
            List<CSImg> csImgList = new ArrayList<>();
            String idx = cs_uuid.get(i);
            csImgList = csDao.selectCsImg(idx);
            for(int j=0; j<csImgList.size(); j++){
                csImg.add(csImgList.get(j));
            }
        }

        return csImg;
    }
}
