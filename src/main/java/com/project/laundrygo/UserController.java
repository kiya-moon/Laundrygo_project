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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
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

    // 회원가입
    @PostMapping("/member")
    public String member(User user) throws Exception {
        userService.user_insert(user);

        return "redirect:/";
    }

    // 로그인 페이지
    @GetMapping("/login")
    public String loginForm() {
        return null;
    }

    // 로그아웃
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        // 1. 세션을 종료
        session.invalidate();
        // 2. 홈으로 이동
        return "redirect:/";
    }

    // 로그인
    @PostMapping("/login")
    public String login(String login_email, String login_password,
                        HttpServletRequest request, RedirectAttributes rattr) throws Exception{

        // 이전 페이지의 url 및 파라미터
        String uri = request.getHeader("REFERER");

        // 로그인 에러처리
        if(!loginCheck(login_email, login_password)) {
            rattr.addFlashAttribute("msg", "login_err");

            return "redirect:"+uri;
        }

        // 세션 저장
        HttpSession session = request.getSession();
        session.setAttribute("email", login_email);

        return "redirect:"+uri;
    }

    // 로그인 체크
    private boolean loginCheck(String login_email, String login_password) {
        // 로그인 유저 정보 받을 객체 선언
        User user = null;

        // 유저 정보 받아오기
        try {
            user = userService.selectUser(login_email);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return user!=null && user.getPassword().equals(login_password);
    }

    // 중복체크
    @ResponseBody
    @RequestMapping(value="/dupliChk", method = RequestMethod.GET)
    public int dupliChk(@RequestParam("email") String email) throws Exception {

        // 중복체크 로직
        int cnt = userService.dupliChk(email);

        return cnt;
    }

    // 아이디 찾기
    @RequestMapping(value="/findId", method = RequestMethod.POST)
    public String findId(User user, RedirectAttributes rattr, HttpServletRequest req) throws Exception {
        // 이전 페이지의 url 및 파라미터
        String uri = req.getHeader("REFERER");

        // 뷰단에서 사용자 입력 정보 받아오기
        String username = req.getParameter("find_email_name");
        String userphone = req.getParameter("find_email_tel");

        // id 찾아오기
        List<User> id = userService.findId(username, userphone);

        // id 찾기 실행 후 alert 메세지 전달
        StringBuilder idList = new StringBuilder();
        if(id.size() == 0){
            rattr.addFlashAttribute("check", 1);
        } else {
            for( int i = 0; i < id.size(); i++ ) {
                idList.append(id.get(i).getEmail());
                idList.append(", ");
            }
            int lastEmail = idList.lastIndexOf(",");
            idList = new StringBuilder(idList.substring(0, lastEmail));
            rattr.addFlashAttribute("check", 2);
            rattr.addFlashAttribute("message","아이디는 "+ idList +" 입니다.");
        }

        return "redirect:"+uri;
    }

    // 비밀번호 찾기
    @RequestMapping(value="/findPw", method = RequestMethod.POST)
    public String findPw(User user, RedirectAttributes rattr, HttpServletRequest req) throws Exception{
        // 이전 페이지의 url 및 파라미터
        String uri = req.getHeader("REFERER");

        // 뷰단에서 사용자 입력 정보 받아오기
        String userEmail = req.getParameter("find_pw_email");
        String userName = req.getParameter("find_pw_name");
        String userPhone = req.getParameter("find_pw_tel");

        // pw 찾아오기
        String pw = userService.findPw(userEmail, userName, userPhone);

        // pw 찾기 실행 후 alert 메세지 전달
        if (pw == null){
            rattr.addFlashAttribute("check_pw", 1);
        }else{
            rattr.addFlashAttribute("check_pw", 2);
            rattr.addFlashAttribute("message_pw","비밀번호는 "+ pw +" 입니다.");
        }

        return "redirect:"+uri;
    }

}