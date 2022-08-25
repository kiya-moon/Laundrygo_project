package com.project.laundrygo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PickupController {

	@RequestMapping("/pickup")
	public String pickup() {
		return "pickup";
	}
}
