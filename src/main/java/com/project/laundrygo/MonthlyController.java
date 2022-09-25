package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.Card;
import com.project.dto.Monthly;
import com.project.dto.MonthlyPayList;
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
import java.time.LocalDateTime;
import java.util.Date;

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
		System.out.println(user);
		m.addAttribute(user);

		Monthly monthly = monthlyService.monthlyInfo(name);
		m.addAttribute(monthly);

		System.out.println("무사통과 test1");
		Card card = monthlyService.cardInfo(email);
		System.out.println("무사통과 test2");
		System.out.println(card);

		if(card==null){
			System.out.println("여길 들어오긴 하는구나?");
			Card temp = new Card();
			temp.setCard_num("카드를 등록해주세요");
			temp.setCard_type("정보없음");
			temp.setEmail("");
			System.out.println(temp.getCard_num() + ", " + temp.getCard_type());

			m.addAttribute(temp);
		} else{
			System.out.println("여기는 왜 안들어와?");
			m.addAttribute(card);
		}
		return "apply";
	}

	private boolean emailCheck(HttpServletRequest request) {
		// 세션에 이메일이 들어와 있는지 확인
		HttpSession session = request.getSession();
		return session.getAttribute("email")!=null;
	}

	@PostMapping("/monthly")
	public String applyfinish (MonthlyPayList monthlyPayList, int m_point, HttpSession httpSession) throws Exception{
		System.out.println("컨트롤러 도착");
		LocalDateTime date = LocalDateTime.now().withNano(0);
		String email = (String)httpSession.getAttribute("email");
		monthlyPayList.setEmail(email);
		System.out.println(email);
		System.out.println(m_point);
		monthlyPayList.setStart_date(date);
		monthlyPayList.setEnd_date(date.plusMonths(1));
		System.out.println("start" + monthlyPayList.getStart_date() + ", end" + monthlyPayList.getEnd_date());

		monthlyService.payment(monthlyPayList);

		return "index";
	}

}