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

	@GetMapping("/pickup")
	public String pickup(HttpServletRequest request, HttpSession httpSession, Model m) throws Exception{
		if(!emailCheck(request)) {
			m.addAttribute("login_pickup_msg", "login_pickup");

			return "index";
		}
		String email = (String)httpSession.getAttribute("email");

		User user = monthlyService.userInfo(email);
		Credit credit = userService.selectCredit(email);
		m.addAttribute(user);
		MonthlyPayList monthlyPayList = pickupService.monthlyList(email);

		if( monthlyPayList != null){
			m.addAttribute(monthlyPayList);
		} else{
			m.addAttribute("monthly_arr_msg", "monthly_arr");
			return "monthly";
		}

		if( credit != null ) {
			m.addAttribute(credit);
		}

		return "pickup";
	}


	@PostMapping("/pickup")
	public String pickupdate(MonthlyPayList monthlyPayList, String laundry, String laundry2, String p_addr , HttpSession httpSession) throws Exception{
		// 세션 받아오기
		String email = (String)httpSession.getAttribute("email");

		// 월정액 이름 넘기기
		String m_name = monthlyPayList.getM_name();

		// O, X 체크용 변수
		String p_life;
		String p_cleaning;
		String p_free;

		// Extra 비용 변수
		int extra_life = 0;
		int extra_cleaning = 0;
		int extra_free = monthlyPayList.getFree_cnt()-1;
		int exTotal = 0;

		// MonthlytPayList cnt 차감 및 O, X 넘기는 로직
		int lifeCnt = monthlyPayList.getLife_cnt();
		int cleaningCnt = monthlyPayList.getCleaning_cnt();

		int new_lifeCnt = 0;
		int new_cleaningCnt = 0;
		int new_freeCnt = 0;

		if (laundry.equals("living") ) {
			extra_life = lifeCnt-1;

			if(extra_life <= 0){
				p_life = "X";
//				new_lifeCnt=0;
			}else{
				p_life = "O";
			}
			new_lifeCnt = extra_life;
		}else {
			p_life = "X";
		}
		if (laundry2.equals("each") ) {
			extra_cleaning = cleaningCnt-1;
			if(extra_cleaning <= 0){
				p_cleaning = "X";
//				new_cleaningCnt = 0;

			}else{
				p_cleaning = "O";
			}
			new_cleaningCnt = extra_cleaning;
		} else {
			p_cleaning = "X";
		}
		if(extra_free<=0){
			p_free = "X";
//			new_freeCnt = 0;

		} else {
			p_free = "O";
		}
		new_freeCnt = extra_free;

		// 그리고 엑스트라 비용들은 if문을 거쳐 0이상이면 0으로 고정
		if(extra_cleaning>=0){
			extra_cleaning = 0;
		}
		if(extra_life>=0){
			extra_life = 0;
		}
		if(extra_free>=0){
			extra_free = 0;
		}

		exTotal = Math.abs((extra_cleaning*5000) + (extra_life*9900) + (extra_free*3500));
		// exTotal은 monthlyPayList로 보내야 함

		System.out.println(new_cleaningCnt);
		System.out.println(new_freeCnt);
		System.out.println(new_lifeCnt);

		// 픽업 내역 저장
		pickupService.pickupInsert(p_addr, m_name, email, p_life, p_cleaning, p_free);

		pickupService.cntUpdate(new_lifeCnt,new_cleaningCnt,new_freeCnt, email, exTotal);

		return "index";
	}
	private boolean emailCheck(HttpServletRequest request) {
		// 세션에 이메일이 들어와 있는지 확인
		HttpSession session = request.getSession();
		return session.getAttribute("email")!=null;
	}
}
