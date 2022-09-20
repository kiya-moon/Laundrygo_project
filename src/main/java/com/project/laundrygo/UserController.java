package com.project.laundrygo;

import com.project.dto.User;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
//@RequestMapping("/laundrygo")
//@RestController
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/member")
    public String member(User user) throws Exception {
        userService.user_insert(user);

        return "index";
    }

    @ResponseBody
    @RequestMapping(value="/dupliChk", method = RequestMethod.GET)
    public int dupliChk(@RequestParam("email") String email) throws Exception {
        System.out.println("컨트롤러를 왜 안넘어올까???");
        int cnt = userService.dupliChk(email);
        System.out.println("cnt = " + cnt);
        return cnt;
    }


}