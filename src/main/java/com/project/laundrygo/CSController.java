package com.project.laundrygo;

import com.project.dao.CsDao;
import com.project.dto.Cs;
import com.project.service.CsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CSController {
	@Autowired
	private CsService csService;

	@Autowired
	private CsDao csDao;

	@RequestMapping("/cs")
	public String cs() {
		return "customer_center";
	}
	
	@RequestMapping("/qna")
	public String qna( Model model, HttpSession session ) throws Exception {
		String email = (String)session.getAttribute("email");

		List<Cs> css = csService.selectCs(email);
		System.out.println("css = " + css);
		model.addAttribute("css", css);

		return "questions";
	}

	@PostMapping("/qna")
	public String insert_qna(String cs_type, String cs_content, String cs_img, Model model,
							 HttpSession session, RedirectAttributes rattr) throws Exception {

		String email = (String)session.getAttribute("email");
		List<Cs> css = null;

		System.out.println("cs_content = " + cs_content);
		System.out.println("cs_type = " + cs_type);
		String cs_title = null;

		if( cs_content.length() < 10 ) {
			cs_title = cs_content;
		} else {
			cs_title = cs_content.substring(0, 9);
		}

		Cs cs = new Cs(email, cs_type, cs_title, cs_content, cs_img);

		int csCnt = csService.cs_insert(cs);
		System.out.println("csCnt = " + csCnt);

		if( csCnt == 1 ) {
			rattr.addFlashAttribute("qna_insert_result", "insert_ok");
			css = csService.selectCs(email);
			System.out.println("css = " + css);
			model.addAttribute("css", css);
			return "redirect:/qna";
		} else {
			rattr.addFlashAttribute("qna_insert_result", "insert_error");
			css = csService.selectCs(email);
			model.addAttribute("css", css);
			return "redirect:/qna";
		}

	}

}
