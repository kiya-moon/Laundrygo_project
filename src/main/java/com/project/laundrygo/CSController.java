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

	@GetMapping("/cs")
	public String cs() {
		return "customer_center";
	}

	@GetMapping("/qna")
	public String qna( Model model, HttpSession session, RedirectAttributes rattr ) throws Exception {
		String email = (String)session.getAttribute("email");

		if( email == null ) {
			rattr.addFlashAttribute("qna_login", "not");

			return "redirect:/cs";
		}

		List<Cs> css = csService.selectCs(email);
		System.out.println("css = " + css);

		if( css != null ) {
			model.addAttribute("css", css);
		}

		List<String> cs_uuid = csService.selectUuid(email);
		System.out.println("cs_uuid = " + cs_uuid);

		List<CSImg> csImg = new ArrayList<>();

		for (int i=0; i<cs_uuid.size(); i++){
			List<CSImg> csImgList = new ArrayList<>();
			String idx = cs_uuid.get(i);
			System.out.println("디비에서 받아온 uuid : " + csService.selectCsImg(idx));
			csImgList = csService.selectCsImg(idx);
			for(int j=0; j<csImgList.size(); j++){
				csImg.add(csImgList.get(j));
			}
		}

		if( csImg.size() > 0  ) {
			System.out.println("이거야?" + csImg.get(0).getImg_name());
			model.addAttribute("csImg", csImg);
		}

		return "questions";
	}

	@GetMapping("/upload/{img_name}")
	@ResponseBody
	public Resource img(@PathVariable("img_name") String img_name, Model model) throws Exception {
		System.out.println(img_name);
		String path = csService.findImg(img_name);
		System.out.println("컨트롤러 패스 : " + path);
//		Resource url = new ArrayList();
//		for(String path : csImg){
//			 url.add(new UrlResource("file:" + path));
//
		System.out.println("url리소스를 뽑아보자 : " + new UrlResource("file:"+path));
		return new UrlResource("file:" + path);
	}

	@PostMapping("/qna")
	public String insert_qna(String cs_type, String cs_content, Model model,
							 HttpSession session, RedirectAttributes rattr, List<MultipartFile> cs_img) throws Exception {

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

		// cs_uuid 만드는 로직
		UUID uuid = UUID.randomUUID();
		String cs_uuid = uuid + "";

		// 문의하기 객체 생성
		Cs cs = new Cs(email, cs_type, cs_title, cs_content, cs_uuid);

		// 이미지 저장 처리
		// img_name은 UUID + 사용자가 저장한 이미지 이름
		// img_file은 저장경로
		String imgPath = "C:\\uploadImg\\";

		Map<String, Object> listMap = new HashMap<>();


		for(MultipartFile mf : cs_img){
			UUID uuid2 = UUID.randomUUID();
			String imgName = uuid2 + "_" + mf.getOriginalFilename();
			File saveImg = new File(imgPath, imgName);
			mf.transferTo(saveImg);

			int extra = imgName.lastIndexOf(".");

			String imgName_x = imgName.substring(0, extra);

			listMap.put("img_name", imgName_x);
			listMap.put("img_file", imgPath + imgName);
			listMap.put("cs_uuid", cs_uuid);
			System.out.println("map에 들어가는지 ???? " + listMap);

			// 서비스 단에 map 넘기기
			csService.imgSave(listMap);
		}

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