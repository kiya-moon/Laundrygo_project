package com.project.laundrygo;

import com.project.dao.CsDao;
import com.project.dto.CSImg;
import com.project.dto.Cs;
import com.project.service.CsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
public class CSController {
	@Autowired
	private CsService csService;

	@Autowired
	private CsDao csDao;

	// 고객센터 페이지
	@GetMapping("/cs")
	public String cs() {
		return "customer_center";
	}

	// 나의 문의내역 페이지
	@GetMapping("/qna")
	public String qna( Model model, HttpSession session, RedirectAttributes rattr ) throws Exception {
		String email = (String)session.getAttribute("email");

		if( email == null ) {
			rattr.addFlashAttribute("qna_login", "not");

			return "redirect:/cs";
		}

		// CS문의내역 텍스트 받아오는 로직
		List<Cs> css = csService.selectCs(email);

		if( css != null ) {
			model.addAttribute("css", css);
		}

		// CS문의내역 이미지 받아오는 로직
		List<CSImg> csImg = csService.selectCsImg(email);

		if( csImg.size() > 0  ) {
			model.addAttribute("csImg", csImg);
		}

		return "questions";
	}

	// 이미지 처리 로직
	@GetMapping("/upload/{img_name}")
	@ResponseBody
	public Resource img(@PathVariable("img_name") String img_name, Model model) throws Exception {
		String path = csService.findImg(img_name);
		return new UrlResource("file:" + path);
	}

	// 1:1 문의내역 등록
	@PostMapping("/qna")
	public String insert_qna(String cs_type, String cs_content, Model model,
							 HttpSession session, RedirectAttributes rattr, List<MultipartFile> cs_img) throws Exception {

		// 텍스트 저장 및 이미지 저장 공통 로직
		// 세션에서 이메일 받아오기
		String email = (String)session.getAttribute("email");

		// cs_uuid 만드는 로직
		UUID uuid = UUID.randomUUID();
		String cs_uuid = uuid + "";
		// 공통 로직 끝

		// 문의내역 텍스트 등록
		int csCnt = csService.cs_insert(email, cs_type, cs_content, cs_uuid);
		System.out.println("csCnt = " + csCnt);

		// 문의내역 이미지 등록
		csService.imgSave(cs_img, cs_uuid);

		// 에러 처리
		List<Cs> css = csService.selectCs(email);

		if( csCnt == 1 ) {
			rattr.addFlashAttribute("qna_insert_result", "insert_ok");
		} else {
			rattr.addFlashAttribute("qna_insert_result", "insert_error");
		}

		model.addAttribute("css", css);
		return "redirect:/qna";

	}

}