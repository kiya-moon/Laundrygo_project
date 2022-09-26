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
	public String pickupdate(MonthlyPayList monthlyPayList, String laundry, String p_addr , HttpSession httpSession) throws Exception{
		// 세션 받아오기
		String email = (String)httpSession.getAttribute("email");

		// 월정액 이름 넘기기
		String m_name = monthlyPayList.getM_name();

		// 픽업 내역 저장
		pickupService.pickupInsert(p_addr, m_name, email);

		// MonthlytPayList cnt 차감
		int lifeCnt = monthlyPayList.getLife_cnt();
		int cleaningCnt = monthlyPayList.getCleaning_cnt();

		int new_lifeCnt = 0;
		int new_cleaningCnt = 0;

		if (laundry.equals("living") ) {
			new_lifeCnt = lifeCnt-1;
		}
		if (laundry.equals("each") ) {
			new_cleaningCnt = cleaningCnt-1;
		}

		int new_freeCnt = monthlyPayList.getFree_cnt()-1;

		pickupService.cntUpdate(new_lifeCnt,new_cleaningCnt,new_freeCnt, email);

		return "index";
	}
	private boolean emailCheck(HttpServletRequest request) {
		// 세션에 이메일이 들어와 있는지 확인
		HttpSession session = request.getSession();
		return session.getAttribute("email")!=null;
	}
}
