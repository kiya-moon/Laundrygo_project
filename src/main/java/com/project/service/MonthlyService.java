package com.project.service;

import com.project.dto.*;

import java.time.LocalDateTime;
import java.util.List;

public interface MonthlyService {
    User userInfo(String email) throws Exception;

    Monthly monthlyInfo(String name) throws Exception;

    List<MonthlyPayList> monthlyList() throws Exception;

    int monthlyListUpdate(String email, String card_type, String card_num) throws Exception;

    int new_monthlyListUpdate(String email, int life_cnt, int cleaning_cnt, int free_cnt, LocalDateTime start_date, LocalDateTime end_date) throws Exception;

    int monthlyListDelete(String email) throws Exception;

    Credit cardInfo(String email) throws Exception;

    int payment(MonthlyPayList monthlyPayList) throws Exception;

    int payListInsert(PayList payList) throws Exception;

    int pointUpdate(String email, int m_point) throws Exception;

    int usePointInsert(String email, String m_name, int use_point) throws Exception;
}