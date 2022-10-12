package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.*;
import com.project.service.MonthlyService;
import com.project.service.PickupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.Date;

@Controller
public class MonthlyController {

	@Autowired
	private MonthlyService monthlyService;

	@Autowired
	private PickupService pickupService;

	@Autowired
	UserDao userDao;

	// 월정액 페이지
	@GetMapping("/monthly")
	public String monthly() {
		return "monthly";
	}

	// 월정액 가입 페이지
	@GetMapping("monthly/{name}")
	public String apply(@PathVariable("name") String name, Model m, HttpSession httpSession,
						HttpServletRequest request, HttpServletResponse response,
						RedirectAttributes rattr) throws Exception {
		// 로그인 여부 체크
		if(!emailCheck(request)) {
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			// 로그인이 안돼어있으면 월정액페이지로 이동
			out.println("<script>alert('로그인 후 이용 가능합니다.'); location.href='/laundrygo/monthly'; </script>");

			out.flush();
		}

		// 세션에서 이메일 받아오기
		String email = (String)httpSession.getAttribute("email");

		// 월정액 가입 여부 체크
		MonthlyPayList monthlyPayList = pickupService.monthlyList(email);
		// 이미 가입되어 있으면 가입불가 안내
		if( monthlyPayList != null ) {
			rattr.addFlashAttribute("exist_M", "exist_M");
			return "redirect:/monthly";
		}

		// 선택한 월정액 정보 받아오기
		Monthly monthly = monthlyService.monthlyInfo(name);
		m.addAttribute(monthly);

		// 유저 정보 받아오기
		User user = monthlyService.userInfo(email);
		m.addAttribute(user);

		// 유저의 카드 정보 받아오기
		Credit card = monthlyService.cardInfo(email);

		// 카드 정보 유무 체크
		if(card==null){
			Credit temp = new Credit();
			temp.setCard_num("카드를 등록해주세요");
			temp.setCard_type("정보없음");
			temp.setEmail("");

			m.addAttribute("temp",temp);
		} else{
			m.addAttribute("credit",card);
		}
		return "apply";
	}

	// 세션에 이메일이 들어와 있는지 확인
	private boolean emailCheck(HttpServletRequest request) {
		HttpSession session = request.getSession();
		return session.getAttribute("email")!=null;
	}

	// 월정액 가입 정보 등록
	@PostMapping("/monthly")
	public String applyfinish (MonthlyPayList monthlyPayList, PayList payList, int point_in, int m_point, HttpSession httpSession) throws Exception{
		// 세션에서 이메일 받아오기
		String email = (String)httpSession.getAttribute("email");

		// 날짜 저장용 객체 선언
		LocalDateTime date = LocalDateTime.now().withNano(0);

		// monthlyPayList 저장
		monthlyPayList.setEmail(email);
		monthlyPayList.setStart_date(date);
		monthlyPayList.setEnd_date(date.plusMonths(1));
		monthlyService.payment(monthlyPayList);

		// payList 저장
		payList.setEmail(email);
		payList.setPay_date(date);
		String m_name = monthlyPayList.getM_name();
		payList.setTotal_price(payList.getM_price());
		monthlyService.payListInsert(payList);

		// 유저 인포 point 업데이트
		int c_point = point_in - m_point;
		monthlyService.pointUpdate(email, c_point);

		// use_point 저장
		if( c_point == 0 && m_point != 0 ) {
			monthlyService.usePointInsert(email, m_name, m_point);
		}

		return "index";
	}

}