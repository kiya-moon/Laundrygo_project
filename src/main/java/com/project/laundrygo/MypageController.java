package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.User;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MypageController {

	@Autowired
	private UserService userService;

	@Autowired
	UserDao userDao;
	
	@GetMapping("/mypage")
	public String mypage(Model model, HttpSession session) throws Exception {
		String name = (String)session.getAttribute("email");
		System.out.println(name);

		User user = userService.selectUser(name);
		model.addAttribute(user);

		return "mypage";
	}


}
