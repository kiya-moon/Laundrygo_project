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

//@RequestMapping("/laundrygo")
@Controller
public class MonthlyController {

	@Autowired
	private MonthlyService monthlyService;

	@Autowired
	private PickupService pickupService;

	@Autowired
	UserDao userDao;

	@GetMapping("/monthly")
	public String monthly() {
		return "monthly";
	}

	@GetMapping("monthly/{name}")
	public String apply(@PathVariable("name") String name, Model m, HttpSession httpSession,
						HttpServletRequest request, HttpServletResponse response,
						RedirectAttributes rattr) throws Exception {
		if(!emailCheck(request)) {
//			m.addAttribute("login_ch_msg", "login_ch");
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 후 이용 가능합니다.'); location.href='/laundrygo/monthly'; </script>");

			out.flush();
			// 로그인이 안돼어있으면 월정액페이지로 이동
		}

		String email = (String)httpSession.getAttribute("email");

		MonthlyPayList monthlyPayList = pickupService.monthlyList(email);

		if( monthlyPayList != null ) {
			rattr.addFlashAttribute("exist_M", "exist_M");
			return "redirect:/monthly";
		}

		System.out.println(httpSession.getAttribute("email"));
		User user = monthlyService.userInfo(email);
		System.out.println(user);
		m.addAttribute(user);
		System.out.println(user);

		System.out.println(name);
		Monthly monthly = monthlyService.monthlyInfo(name);
		m.addAttribute(monthly);
		System.out.println(monthly);

		Card card = monthlyService.cardInfo(email);

		if(card==null){
			Card temp = new Card();
			temp.setCard_num("카드를 등록해주세요");
			temp.setCard_type("정보없음");
			temp.setEmail("");

			m.addAttribute(temp);
			System.out.println(temp);
		} else{
			m.addAttribute(card);
			System.out.println(card);
		}
		return "apply";
	}

	private boolean emailCheck(HttpServletRequest request) {
		// 세션에 이메일이 들어와 있는지 확인
		HttpSession session = request.getSession();
		return session.getAttribute("email")!=null;
	}

	@PostMapping("/monthly")
	public String applyfinish (MonthlyPayList monthlyPayList, PayList payList, int point_in, int m_point, HttpSession httpSession) throws Exception{
		// 세션 받아오기
		String email = (String)httpSession.getAttribute("email");

		// monthlyPayList 저장
		LocalDateTime date = LocalDateTime.now().withNano(0);
		monthlyPayList.setEmail(email);
		monthlyPayList.setStart_date(date);
		monthlyPayList.setEnd_date(date.plusMonths(1));


		String m_name = monthlyPayList.getM_name();

		monthlyService.payment(monthlyPayList);

		// payList 저장
		payList.setEmail(email);
		payList.setPay_date(date);
		payList.setTotal_price(payList.getM_price());

		monthlyService.payListInsert(payList);

		// point 업데이트
		int c_point = point_in - m_point;
		System.out.println(c_point);
		monthlyService.pointUpdate(email, c_point);

		// use_point 저장
		if( c_point == 0 && m_point != 0 ) {
			monthlyService.usePointInsert(email, m_name, m_point);
		}


		return "index";
	}

}