package com.project.service;

import com.project.dto.User;

public interface MonthlyService {
    User apply(String email) throws Exception;
}
