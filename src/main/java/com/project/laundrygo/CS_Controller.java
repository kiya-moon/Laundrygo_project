package com.project.laundrygo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CS_Controller {
	
	@RequestMapping("/cs")
	public String cs() {
		return "customer_center";
	}
}
