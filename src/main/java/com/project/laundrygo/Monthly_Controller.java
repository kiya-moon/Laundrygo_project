package com.project.laundrygo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Monthly_Controller {
	
	@RequestMapping("/monthly")
	public String monthly() {
		return "Monthly";
	}
}
