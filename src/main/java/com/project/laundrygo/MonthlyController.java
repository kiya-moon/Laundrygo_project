package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.Card;
import com.project.dto.Monthly;
import com.project.dto.User;
import com.project.service.MonthlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

//@RequestMapping("/laundrygo")
@Controller
public class MonthlyController {
	@Autowired
	private MonthlyService monthlyService;

	@Autowired
	UserDao userDao;

	@GetMapping("/monthly")
	public String monthly() {
		return "monthly";
	}

	@GetMapping("monthly/{name}")
	public String apply(@PathVariable("name") String name, Model m, HttpSession httpSession, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(!emailCheck(request)) {
//			m.addAttribute("login_ch_msg", "login_ch");
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 후 이용 가능합니다.'); location.href='/laundrygo/monthly'; </script>");

			out.flush();
			 // 로그인이 안돼어있으면 월정액페이지로 이동
		}

		String email = (String)httpSession.getAttribute("email");
		System.out.println(httpSession.getAttribute("email"));
		User user = monthlyService.userInfo(email);
		m.addAttribute(user);

		Monthly monthly = monthlyService.monthlyInfo(name);
		m.addAttribute(monthly);

		Card card = monthlyService.cardInfo(email);
		m.addAttribute(card);

		return "apply";
	}

	private boolean emailCheck(HttpServletRequest request) {
		// 세션에 이메일이 들어와 있는지 확인
		HttpSession session = request.getSession();
		return session.getAttribute("email")!=null;
	}

	@PostMapping("/monthly")
	public String applyfinish (MonthlyPayList monthlyPayList){

		System.out.println(monthlyPayList.getM_price());
		return "index";
	}

}