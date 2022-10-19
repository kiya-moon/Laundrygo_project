package com.project.service;

import com.project.dao.PickupDao;
import com.project.dto.MonthlyPayList;
import com.project.dto.Pickup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PickupServiceImpl implements PickupService {
    @Autowired
    private PickupDao pickupDao;


    @Override
    public MonthlyPayList monthlyList(String email) throws Exception {
        return pickupDao.monthlyList(email);
    }

    @Override
    public List<Pickup> pickupList(String email) throws Exception {
        return pickupDao.pickupList(email);
    }

    @Override
    public void pickupUpdate(MonthlyPayList monthlyPayList, String laundry, String laundry2, String p_addr, int inputCnt, String email) throws Exception {

        // 월정액 이름 받아오기
        String m_name = monthlyPayList.getM_name();

        // O, X 체크용 변수
        String p_life = "";
        String p_cleaning = "";
        String p_free = "";

        // Extra 비용 변수
        int extra_life = 0;
        int extra_cleaning = 0;
        int extra_free = monthlyPayList.getFree_cnt()-1;
        int exTotal = 0;

        // MonthlytPayList cnt 차감 및 O, X 넘기는 로직
        int lifeCnt = monthlyPayList.getLife_cnt();
        int cleaningCnt = monthlyPayList.getCleaning_cnt();

        // Cnt 업데이트용 변수
        int new_lifeCnt = 0;
        int new_cleaningCnt = 0;
        int new_freeCnt = 0;

        if ( laundry != null && laundry.equals("living") ) {
            extra_life = lifeCnt-1;
            if(extra_life < 0){
                p_life = "X";
            }else{
                p_life = "O";
            }
            new_lifeCnt = extra_life;

        } else if( laundry == null ) {
            p_life = " ";
            new_lifeCnt = lifeCnt;
        }

        if ( laundry2 != null && laundry2.equals("each") ) {
            extra_cleaning = cleaningCnt-inputCnt;
            if(extra_cleaning < 0){
                p_cleaning = "X";
            }else{
                p_cleaning = "O";
            }
            new_cleaningCnt = extra_cleaning;
        } else if( laundry2 == null ) {
            p_cleaning = " ";
            new_cleaningCnt = cleaningCnt;
        }

        if(extra_free<0){
            p_free = "X";
        } else {
            p_free = "O";
        }
        new_freeCnt = extra_free;

        // 그리고 엑스트라 비용들은 if문을 거쳐 0이상이면 0으로 고정
        if(extra_cleaning>=0){
            extra_cleaning = 0;
        }
        if(extra_life>=0){
            extra_life = 0;
        }
        if(extra_free>=0){
            extra_free = 0;
        }

        exTotal = Math.abs((extra_cleaning*5000) + (extra_life*9900) + (extra_free*3500));

        // 수거신청 정보 저장
        pickupDao.pickupInsert(p_addr, m_name, email, p_life, p_cleaning, p_free);
        pickupDao.cntUpdate(new_lifeCnt,new_cleaningCnt,new_freeCnt, email, exTotal);

    }
}
