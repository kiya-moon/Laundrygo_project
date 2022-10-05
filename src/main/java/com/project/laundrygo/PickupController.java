package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.Credit;
import com.project.dto.MonthlyPayList;
import com.project.dto.User;
import com.project.service.MonthlyService;
import com.project.service.PickupService;
import com.project.service.UserService;
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
	private UserService userService;

	@Autowired
	private PickupService pickupService;

	@Autowired
	private MonthlyService monthlyService;

	@Autowired
	UserDao userDao;

	// 수거 신청 페이지
	@GetMapping("/pickup")
	public String pickup(HttpServletRequest request, HttpSession httpSession, Model m) throws Exception{
		// 로그인 체크
		if(!emailCheck(request)) {
			m.addAttribute("login_pickup_msg", "login_pickup");

			return "index";
		}

		// 세션에서 이메일 받아오기
		String email = (String)httpSession.getAttribute("email");

		// 유저 정보 받아오기
		User user = monthlyService.userInfo(email);
		m.addAttribute(user);

		// 가입한 월정액 정보 받아오기
		MonthlyPayList monthlyPayList = pickupService.monthlyList(email);
		// 월정액 상품 가입여부 확인
		if( monthlyPayList != null){
			m.addAttribute(monthlyPayList);
		} else{
			m.addAttribute("monthly_arr_msg", "monthly_arr");
			return "monthly";
		}

		// 카드 정보 받아오기
		Credit credit = userService.selectCredit(email);
		if( credit != null ) {
			m.addAttribute(credit);
		}

		return "pickup";
	}

	// 수거신청 등록
	@PostMapping("/pickup")
	public String pickupdate(MonthlyPayList monthlyPayList, String laundry, String laundry2, String p_addr, int inputCnt, HttpSession httpSession) throws Exception{
		// 세션 받아오기
		String email = (String)httpSession.getAttribute("email");

		// 수거신청 정보 저장
		pickupService.pickupUpdate(monthlyPayList, laundry, laundry2, p_addr, inputCnt, email);

		return "index";
	}
	private boolean emailCheck(HttpServletRequest request) {
		// 세션에 이메일이 들어와 있는지 확인
		HttpSession session = request.getSession();
		return session.getAttribute("email")!=null;
	}
}