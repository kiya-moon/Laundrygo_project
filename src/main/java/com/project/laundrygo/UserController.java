package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.User;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.util.List;

@Controller
//@RequestMapping("/laundrygo")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    UserDao userDao;

    @PostMapping("/member")
    public String member(User user) throws Exception {
        userService.user_insert(user);

        return "index";
    }
    @GetMapping("/login")
    public String loginForm() {
        return null;
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        // 1. 세션을 종료
        session.invalidate();
        // 2. 홈으로 이동
        return "redirect:/";
    }

    @PostMapping("/login")
    public String login(String login_email, String login_password, HttpServletRequest request) throws Exception{
//        userService.user_select(login_email, login_password);

        if(!loginCheck(login_email, login_password)) {
            String msg = URLEncoder.encode("id 또는 pwd가 일치하지 않습니다.", "utf-8");

            return "redirect:/?msg="+msg;
        }

        // 세션 저장
        HttpSession session = request.getSession();
        session.setAttribute("email", login_email);

        // 로그인 완료 시???
        return "index";
    }
    private boolean loginCheck(String login_email, String login_password) {
        User user = null;
        try {
            user = userService.selectUser(login_email);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return user!=null && user.getPassword().equals(login_password);
//        return "asdf".equals(id) && "1234".equals(pwd);
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