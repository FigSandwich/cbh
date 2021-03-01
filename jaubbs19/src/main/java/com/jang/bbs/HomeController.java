package com.jang.bbs;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jang.bbs.model.CustomerVO;
import com.jang.bbs.service.CustomerService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private CustomerService customerService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	
	@RequestMapping(value = "/insertcustomer.do", method = RequestMethod.GET)
	public String insertcustomer(@ModelAttribute("customerVO") CustomerVO customerVO, HttpSession session,
			HttpServletRequest request) throws Exception {

		return "home";
	}

	@RequestMapping(value = "/insertcustomer.do", method = RequestMethod.POST)
	public String insertcustomerpost(@ModelAttribute("customerVO") CustomerVO customerVO, HttpSession session,
			HttpServletRequest request) throws Exception {
		this.customerService.insertcustomer(customerVO);

		return "home";
	}


	@RequestMapping(value = "/customer.do", method = RequestMethod.GET)
	public String customer(@ModelAttribute("CustomerVO") CustomerVO customerVO, Model model, HttpSession session)
			throws Exception {

		List<CustomerVO> cus = customerService.getcustomer(customerVO);
		model.addAttribute("CustomerVO", cus);

		return "customer";
	}


}
