package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.Credit;
import com.project.dto.User;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
public class MypageController {

	@Autowired
	private UserService userService;

	@Autowired
	UserDao userDao;

	@GetMapping("/mypage")
	public String mypage(Model model, HttpSession session) throws Exception {
		String email = (String)session.getAttribute("email");
		System.out.println(email);

		User user = userService.selectUser(email);
		Credit credit = userService.selectCredit(email);
		model.addAttribute(user);

		if( credit != null ) {
			model.addAttribute(credit);
		}


		return "mypage";
	}

	@PostMapping("/mypage")
	public String modify(String pwd_mod, String phone_mod, String addr_mod, String account_mod,
						 String account_num_mod, Model model, HttpSession session, RedirectAttributes rattr) throws Exception {

//		User user = (User)session.getAttribute("user");
		String email = (String)session.getAttribute("email");
		String new_pwd = null;
		String new_phone = null;
		String new_addr = null;
		String new_account = null;
		String new_account_num = null;

		User user = userService.selectUser(email);
		Credit credit = userService.selectCredit(email);

		if( pwd_mod == "" ) {
			new_pwd = user.getPassword();
		} else {
			new_pwd = pwd_mod;
		}

		if( phone_mod == "" ) {
			new_phone = user.getPhone();
		} else {
			new_phone = phone_mod;
		}

		if( addr_mod == "" ) {
			new_addr = user.getAddr();
		} else {
			new_addr = addr_mod;
		}

		int mod_cnt = userService.modify(email, new_pwd, new_phone, new_addr);
		int account_cnt = 0;
		System.out.println("mod_cnt = " + mod_cnt);

		if( account_mod != "" & account_num_mod != "" ) {
			new_account = account_mod;
			new_account_num = account_num_mod;

			if( credit == null ) {
				account_cnt = userService.card_insert(new_account_num, new_account, email);
			} else if( credit != null ) {
				account_cnt = userService.card_modify(new_account_num, new_account, email);
			}

		}
		System.out.println("account_cnt = " + account_cnt);

		if( mod_cnt == 1 || account_cnt == 1 ) {
			rattr.addFlashAttribute("mod_result", "mod_ok");
//			session.invalidate();
			user = userService.selectUser(email);
			credit = userService.selectCredit(email);
			model.addAttribute(user);
			model.addAttribute(credit);

			return "redirect:/mypage";
		} else {
			rattr.addFlashAttribute("mod_result", "mod_error");
			return "redirect:/mypage";
		}
	}

	@ResponseBody
	@RequestMapping(value="/mypage/pwdChk", method = RequestMethod.POST)
	public int mod_pwdChk(@RequestParam("mod_password") String mod_password, HttpSession session) throws Exception {
//		User user = (User)session.getAttribute("user");
		String email = (String)session.getAttribute("email");

		System.out.println("현재 비밀번호 확인 가자");
		int cnt = userService.pwdChk(email, mod_password);
		System.out.println("cnt = " + cnt);

		return cnt;
	}

	@PostMapping("/delete")
	public String delete(HttpSession session, Model model, RedirectAttributes rattr) throws Exception {
		String email = (String)session.getAttribute("email");
		System.out.println("왔나??");

		try {
			int cnt = userService.delete(email);
			System.out.println("cnt = " + cnt);
			if(cnt == 1) {
				session.invalidate();
			}
		} catch (Exception e) {
			e.printStackTrace();
			rattr.addFlashAttribute("del_msg","DEL_ERR");
		}

		rattr.addFlashAttribute("del_msg", "DEL_OK");
		return "redirect:/";
	}

}