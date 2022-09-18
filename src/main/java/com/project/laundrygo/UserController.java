package com.project.laundrygo;

import com.project.dto.User;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/laundrygo")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/member")
    public String member(User user) throws Exception {
        userService.user_insert(user);

        return "index";
    }

}