package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.User;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpOutputMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;

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
    public String login(String login_email, String login_password, HttpServletRequest request, Model m) throws Exception{
//        userService.user_select(login_email, login_password);

        if(!loginCheck(login_email, login_password)) {
            m.addAttribute("msg", "login_err");

            return "index";
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

    @RequestMapping(value="/findId", method = RequestMethod.POST)
    public String findId(User user, Model model, HttpServletRequest req) throws Exception {
        System.out.println("id찾기 controller");

        String username = req.getParameter("find_email_name");
        String userphone = req.getParameter("find_email_tel");

        String id = userService.findId(username, userphone);
        System.out.println("id = " + id);

        req.setAttribute("id",id);
        if(id == null){
            model.addAttribute("check", 1);
        } else {
            model.addAttribute("check", 0);
            model.addAttribute("id", user.getEmail());
            req.setAttribute("message","아이디는 "+ id +" 입니다.");
        }
        return "index";
    }

    @RequestMapping(value="/findPw", method = RequestMethod.POST)
    public String findPw(User user, Model model, HttpServletRequest req) throws Exception{
        System.out.println("pw찾기 controller");

        String userEmail = req.getParameter("find_pw_email");
        String userName = req.getParameter("find_pw_name");
        String userPhone = req.getParameter("find_pw_tel");

        String pw = userService.findPw(userEmail, userName, userPhone);
        System.out.println("pw = " + pw);
        req.setAttribute("pw",pw);
        if (pw == null){
            model.addAttribute("check_pw", 1);
        }else{
            model.addAttribute("check_pw", 0);
            model.addAttribute("pw", user.getPassword());
            req.setAttribute("message_pw","비밀번호는 "+ pw +" 입니다.");
        }
        return "index";

    }

    @RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public void userInfo(String login_email, String login_password, HttpSession session, Model model)throws Exception {
        if(loginCheck(login_email, login_password)){
            String email = (String)session.getAttribute("email");
            model.addAttribute("username",userService.userInfo(email));
        }
    }

}