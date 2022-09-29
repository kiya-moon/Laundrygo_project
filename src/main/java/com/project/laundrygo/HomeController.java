package com.project.laundrygo;

import java.text.DateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import com.project.dto.Monthly;
import com.project.dto.MonthlyPayList;
import com.project.dto.PayList;
import com.project.service.MonthlyService;
import com.project.service.PickupService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private MonthlyService monthlyService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );

		List<MonthlyPayList> monthlyPayList = monthlyService.monthlyList();
		LocalDateTime now = LocalDateTime.now();
		LocalDateTime end_date = null;
		int keep = 0;
		String name = null;
		String email = null;
		int life_cnt = 0;
		int cleaning_cnt = 0;
		int free_cnt = 0;
		int m_price = 0;
		int extra_charge = 0;
		String card_type = null;
		String card_num = null;
		PayList payList = new PayList();

		LocalDateTime start_date = LocalDateTime.now().withNano(0);
		LocalDateTime new_end_date = start_date.plusMonths(1);
		Monthly monthly = null;

		for( int i = 0; i < monthlyPayList.size(); i++ ) {
			email = monthlyPayList.get(i).getEmail();
			end_date = monthlyPayList.get(i).getEnd_date();
			keep = monthlyPayList.get(i).getKeep();
			name = monthlyPayList.get(i).getM_name();
			m_price = monthlyPayList.get(i).getM_price();
			card_type = monthlyPayList.get(i).getCard_type();
			card_num = monthlyPayList.get(i).getCard_num();
			extra_charge = monthlyPayList.get(i).getExtra_charge();

			if(now.isAfter(end_date)) {
				if( keep == 1 ) {
					monthly = monthlyService.monthlyInfo(name);
					life_cnt = monthly.getLife();
					cleaning_cnt = monthly.getCleaning();
					free_cnt = monthly.getFree();
					payList.setEmail(email);
					payList.setM_name(name);
					payList.setM_price(m_price);
					payList.setExtra_charge(extra_charge);
					payList.setTotal_price(m_price+extra_charge);
					payList.setPay_date(start_date);
					payList.setCard_num(card_num);
					payList.setCard_type(card_type);
					monthlyService.new_monthlyListUpdate(email, life_cnt, cleaning_cnt, free_cnt, start_date, new_end_date);
					monthlyService.payListInsert(payList);
				} else if( keep == 0) {
					if (extra_charge > 0 ) {
						payList.setEmail(email);
						payList.setM_name(name);
						payList.setM_price(0);
						payList.setExtra_charge(extra_charge);
						payList.setTotal_price(extra_charge);
						payList.setPay_date(start_date);
						payList.setCard_num(card_num);
						payList.setCard_type(card_type);
						monthlyService.payListInsert(payList);
					}
					monthlyService.monthlyListDelete(email);
				}
			}

		}
		
		return "index";
	}
	
}
