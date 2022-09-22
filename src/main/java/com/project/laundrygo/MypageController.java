package com.project.laundrygo;

import com.project.dto.User;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class MypageController {
	@Autowired
	private UserService userService;

	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}

	@RequestMapping(value = "/mypage/member", method = RequestMethod.POST)
	public String modify() { return "mypage"; }

	@ResponseBody
	@RequestMapping(value="/mypage/pwdChk", method = RequestMethod.POST)
	public int mod_pwdChk(@RequestParam("mod_password") String mod_password, HttpSession session) throws Exception {
		User user = (User)session.getAttribute("user");
		String email = user.getEmail();

		System.out.println("현재 비밀번호 확인 가자");
		int cnt = userService.pwdChk(email, mod_password);
		System.out.println("cnt = " + cnt);

		return cnt;
	}
}
