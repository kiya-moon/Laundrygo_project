package com.project.dao;

import com.project.dto.Monthly;
import com.project.dto.User;

public interface MonthlyDao {
    User userInfo(String email) throws Exception;

    Monthly monthlyInfo(String name) throws Exception;
}
