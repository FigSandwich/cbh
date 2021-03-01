package com.jang.bbs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jang.bbs.model.Location;
import com.jang.bbs.model.UserVO;
import com.jang.bbs.service.LocationService;
import com.jang.bbs.service.LoginService;

@Controller
@RequestMapping("/location")
public class LocationController {

	@Autowired
	private LocationService locationService;
	@Autowired
	private LoginService loginService;


	@RequestMapping(value = "/location_list.do", method = RequestMethod.GET)
	public String Locaiton(@ModelAttribute("location") Location location, Model model, HttpSession session)
			throws Exception {

		String userId = session.getAttribute("userId").toString();
		UserVO loginUser = this.loginService.getUser(userId);

		if (loginUser == null) {
			model.addAttribute("userId", "");
			model.addAttribute("errCode", 1);
			return "/member/login";
		}
		model.addAttribute("userVO", loginUser);
		session.setAttribute("dev_no", loginUser.getDev_no());

		List<Location> loc = locationService.getLocation(location);
		model.addAttribute("Location", loc);

		return "location/location_list";
	}


	@RequestMapping(value = "/iamhere.do", method = RequestMethod.GET)
	public String insertLoc(@ModelAttribute("location") Location location, HttpSession session,
			HttpServletRequest request) throws Exception {
		// int insert = locationService.insertLoc(location);
		this.locationService.insertLoc(location);
		/*
		 * String lat = request.getParameter("lat"); String lon =
		 * request.getParameter("lon"); System.out.println(lat + lon);
		 */
		return "home";
	}

	// location/iamhere.do?dev_no=dev_01&lat=5&lon=6
	/*
	 * @RequestMapping("/iamhere.do") public String insertLoc(Location l, Location
	 * location) throws Exception { location.insertLoc(l); return null; }
	 */


	@RequestMapping(value = "/userlistlocation.do", method = RequestMethod.GET)
	public String userlistlocation(@ModelAttribute("location") Location location, Model model, HttpSession session)
			throws Exception {

		List<Location> loc = locationService.getuserlistLoc(location);
		model.addAttribute("Location", loc);

		return "location/userlistlocation";
	}

	
	@RequestMapping(value = "/m.location_list.do", method = RequestMethod.GET)
	public String mLocaiton(@ModelAttribute("location") Location location, Model model, HttpSession session)
			throws Exception {

		String userId = session.getAttribute("userId").toString();
		UserVO loginUser = this.loginService.getUser(userId);

		if (loginUser == null) {
			model.addAttribute("userId", "");
			model.addAttribute("errCode", 1);
			return "/mobile/mlogin";
		}
		model.addAttribute("userVO", loginUser);
		session.setAttribute("dev_no", loginUser.getDev_no());

		List<Location> loc = locationService.getLocation(location);
		model.addAttribute("Location", loc);

		return "location/mlocation_list";
	}


	@RequestMapping(value = "/m.userlistlocation.do", method = RequestMethod.GET)
	public String muserlistlocation(@ModelAttribute("location") Location location, Model model, HttpSession session)
			throws Exception {

		List<Location> loc = locationService.getuserlistLoc(location);
		model.addAttribute("Location", loc);

		return "location/muserlistlocation";
	}

}
