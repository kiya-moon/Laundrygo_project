package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.MonthlyPayList;
import com.project.dto.User;
import com.project.service.MonthlyService;
import com.project.service.PickupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class PickupController {

	@Autowired
	private PickupService pickupService;

	@Autowired
	private MonthlyService monthlyService;

	@Autowired
	UserDao userDao;

	@GetMapping("/pickup")
	public String pickup(HttpServletRequest request, HttpSession httpSession, Model m) throws Exception{
		if(!emailCheck(request)) {
			m.addAttribute("login_pickup_msg", "login_pickup");

			return "index";
		}
		String email = (String)httpSession.getAttribute("email");
		User user = monthlyService.userInfo(email);
		m.addAttribute(user);

		MonthlyPayList monthlyPayList = pickupService.monthlyList(email);
		m.addAttribute(monthlyPayList);

		return "pickup";
	}

	@PostMapping("/pickup")
	public String pickupdate(String laundry) throws Exception{


		return "index";
	}
	private boolean emailCheck(HttpServletRequest request) {
		// 세션에 이메일이 들어와 있는지 확인
		HttpSession session = request.getSession();
		return session.getAttribute("email")!=null;
	}
}
