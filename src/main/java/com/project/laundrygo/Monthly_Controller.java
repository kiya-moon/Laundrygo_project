package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.User;
import com.project.service.MonthlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class Monthly_Controller {
	@Autowired
	private MonthlyService monthlyService;

	@Autowired
	UserDao userDao;

	@GetMapping("/monthly")
	public String monthly() {
		return "Monthly";
	}

	@GetMapping("/apply")
	public String apply(Model m, HttpSession httpSession) throws Exception {
		String email = (String)httpSession.getAttribute("email");
		System.out.println(httpSession.getAttribute("email"));
		User user = monthlyService.apply(email);
		m.addAttribute(user);

		return "apply";
	}
}