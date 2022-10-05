package com.project.laundrygo;

import com.project.dao.UserDao;
import com.project.dto.*;
import com.project.service.MonthlyService;
import com.project.service.PickupService;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MypageController {

	@Autowired
	private UserService userService;

	@Autowired
	private PickupService pickupService;

	@Autowired
	private MonthlyService monthlyService;

	@Autowired
	UserDao userDao;

	// 마이페이지
	@GetMapping("/mypage")
	public String mypage(Model model, HttpSession session, RedirectAttributes rattr) throws Exception {
		// 세션에서 이메일 받아오기
		String email = (String)session.getAttribute("email");

		if( email == null ) {
			rattr.addFlashAttribute("mypage_msg", "mypage_err");

			return "redirect:/";
		}

		// 이용내역 받아오기
		List<Pickup> pickup = pickupService.pickupList(email);
		if(pickup != null){
			model.addAttribute("pickup",pickup);
		}

		// 포인트 정보 받아오기
		List<Point> point = userService.usePointList(email);
		if( point != null ) {
			model.addAttribute("point", point);
			model.addAttribute("point_length", point.size());
		}

		// 결제내역 받아오기
		List<PayList> paylist = userService.userPayList(email);
		if( paylist != null){
			model.addAttribute("paylist", paylist);
		}

		// 유저 정보 받아오기
		User user = userService.selectUser(email);
		model.addAttribute(user);

		// 카드 정보 받아오기
		Credit credit = userService.selectCredit(email);
		if( credit != null ) {
			model.addAttribute(credit);
		}

		// 구입한 월정액 정보 받아오기
		MonthlyPayList monthlyPayList = pickupService.monthlyList(email);

		if( monthlyPayList != null){
			if(monthlyPayList.getLife_cnt()<0){
				monthlyPayList.setLife_cnt(0);
			}
			if(monthlyPayList.getCleaning_cnt()<0){
				monthlyPayList.setCleaning_cnt(0);
			}
			if(monthlyPayList.getFree_cnt()<0){
				monthlyPayList.setFree_cnt(0);
			}
			model.addAttribute(monthlyPayList);
		} else{
			MonthlyPayList temp = new MonthlyPayList();
			temp.setM_name("이용중인 상품이 없습니다.");
			temp.setCleaning_cnt(0);
			temp.setFree_cnt(0);
			temp.setLife_cnt(0);
			model.addAttribute(temp);
		}

		return "mypage";
	}

	// 회원정보 수정
	@PostMapping("/mypage")
	public String modify(String pwd_mod, String phone_mod, String addr_mod, String account_mod,
						 String account_num_mod, Model model, HttpSession session, RedirectAttributes rattr) throws Exception {
		// 세션에서 이메일 받아오기
		String email = (String)session.getAttribute("email");

		// 기존 정보 받아오기
		User user = userService.selectUser(email);
		Credit credit = userService.selectCredit(email);
		MonthlyPayList monthlyPayList = pickupService.monthlyList(email);

		// 회원정보 수정
		int mod_cnt = userService.userModify(pwd_mod, phone_mod, addr_mod, email, user);

		// 카드정보 수정
		int account_cnt = userService.cardModify(account_mod, account_num_mod, email, credit, monthlyPayList);

		// 수정 정보 유무 확인 후 처리
		if( mod_cnt == 1 || account_cnt == 1 ) {
			rattr.addFlashAttribute("mod_result", "mod_ok");
			user = userService.selectUser(email);
			credit = userService.selectCredit(email);
			model.addAttribute(user);
			model.addAttribute(credit);
			return "redirect:/mypage";
		} else {
			rattr.addFlashAttribute("mod_result", "mod_error");
			return "redirect:/mypage";
		}
	}

	// 비밀번호 확인
	@ResponseBody
	@RequestMapping(value="/mypage/pwdChk", method = RequestMethod.POST)
	public int mod_pwdChk(@RequestParam("mod_password") String mod_password, HttpSession session) throws Exception {
		// 세션에서 이메일 받아오기
		String email = (String)session.getAttribute("email");

		// 비밀번호 확인
		int cnt = userService.pwdChk(email, mod_password);

		return cnt;
	}

	// 탈퇴
	@PostMapping("/delete")
	public String delete(HttpSession session, Model model, RedirectAttributes rattr) throws Exception {
		// 세션에서 이메일 받아오기
		String email = (String)session.getAttribute("email");

		// 예외처리
		try {
			int cnt = userService.delete(email);
			System.out.println("cnt = " + cnt);
			if(cnt == 1) {
				session.invalidate();
			}
		} catch (Exception e) {
			e.printStackTrace();
			rattr.addFlashAttribute("del_msg","DEL_ERR");
		}

		rattr.addFlashAttribute("del_msg", "DEL_OK");
		return "redirect:/";
	}

	// 해지/해지취소
	@GetMapping("cancel{keep}")
	public String cancel(@PathVariable("keep") int keep, HttpSession session) throws Exception {
		// 세션에서 이메일 받아오기
		String email = (String)session.getAttribute("email");

		// 해지/해지취소 업데이트
		userService.cancel(email, keep);

		return "redirect:/mypage";
	}

}