package com.project.dao;

import com.project.dto.User;

public interface MonthlyDao {
    User apply(String email) throws Exception;
}
