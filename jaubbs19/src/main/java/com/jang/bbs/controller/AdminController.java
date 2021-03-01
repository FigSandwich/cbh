package com.jang.bbs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jang.bbs.model.AdminVO;
import com.jang.bbs.model.CustomerVO;
import com.jang.bbs.model.NoticeVO;
import com.jang.bbs.service.AdminService;
import com.jang.bbs.service.NoticeService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private NoticeService noticeService;

	// 로그인
	@RequestMapping(value = "/adminlogin.do", method = RequestMethod.GET)
	public String login() {
		return "/admin/adminlogin";
	}

	// 마이페이지
	@RequestMapping(value = "/adminpage.do", method = RequestMethod.GET)
	public String adminpage(HttpServletRequest request, HttpSession session, Model model) {

		String adminid = session.getAttribute("adminid").toString();
		AdminVO loginAdmin = this.adminService.getAdmin(adminid);

		if (loginAdmin == null) {
			model.addAttribute("adminid", "");
			model.addAttribute("errCode", 1);// 등록되지않은 아이디
			return "/admin/adminlogin";
		}
		model.addAttribute("AdminVO", loginAdmin);
		System.out.println(loginAdmin.toString());
		return "/admin/adminpage";
	}

	@RequestMapping(value = "/adminpage.do", method = RequestMethod.POST)
	public String adminProc(@Valid AdminVO adminVO, BindingResult result, Model model, HttpSession session) {

		if (result.hasFieldErrors("adminid") || result.hasFieldErrors("password")) {
			model.addAllAttributes(result.getModel());
			return "/admin/adminlogin";
		}

		AdminVO loginAdmin = this.adminService.findAdmin(adminVO);

		if (loginAdmin == null) {
			model.addAttribute("adminid", "");
			model.addAttribute("errCode", "1");
			return "/admin/adminlogin";
		} else {
			model.addAttribute("loginAdmin", loginAdmin);
			session.setAttribute("adminid", loginAdmin.getAdminid());
			session.setAttribute("adminName", loginAdmin.getName());

			return "/admin/adminpage";
		}

	}

	// 로그아웃
	@RequestMapping("/adminlogout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/adminlogin.do";

	}

	//////// 모바일///////////////////////////////////////////////////////
	// 로그인
	@RequestMapping(value = "/m.adminlogin.do", method = RequestMethod.GET)
	public String mlogin() {
		return "/admin/madminlogin";
	}

	// 마이페이지
	@RequestMapping(value = "/m.adminpage.do", method = RequestMethod.GET)
	public String madminpage(HttpServletRequest request, HttpSession session, Model model) {

		String adminid = session.getAttribute("adminid").toString();
		AdminVO loginAdmin = this.adminService.getAdmin(adminid);

		if (loginAdmin == null) {
			model.addAttribute("adminid", "");
			model.addAttribute("errCode", 1);// 등록되지않은 아이디
			return "/admin/adminlogin";
		}
		model.addAttribute("AdminVO", loginAdmin);
		System.out.println(loginAdmin.toString());
		return "/admin/madminpage";
	}

	@RequestMapping(value = "/m.adminpage.do", method = RequestMethod.POST)
	public String madminProc(@Valid AdminVO adminVO, BindingResult result, Model model, HttpSession session) {

		if (result.hasFieldErrors("adminid") || result.hasFieldErrors("password")) {
			model.addAllAttributes(result.getModel());
			return "/admin/madminlogin";
		}

		AdminVO loginAdmin = this.adminService.findAdmin(adminVO);

		if (loginAdmin == null) {
			model.addAttribute("adminid", "");
			model.addAttribute("errCode", "1");
			return "/admin/madminlogin";
		} else {
			model.addAttribute("loginAdmin", loginAdmin);
			session.setAttribute("adminid", loginAdmin.getAdminid());
			session.setAttribute("adminName", loginAdmin.getName());

			return "/admin/madminpage";
		}
	}

	// 로그아웃
	@RequestMapping("/m.adminlogout.do")
	public String mlogout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/m.adminlogin.do";

	}
	
	//공지사항 조회
	@RequestMapping(value = "/notice.do", method = RequestMethod.GET)
	public String notice(@ModelAttribute("NoticeVO") NoticeVO noticeVO, Model model, HttpSession session) throws Exception {

		List<NoticeVO> no = noticeService.getnotice(noticeVO);
		model.addAttribute("NoticeVO", no);
		
		return "/admin/notice";
	}
	
	//공지사항 입력
	@RequestMapping(value = "/insertnotice.do", method = RequestMethod.GET)
	public String insertnotice(@ModelAttribute("NoticeVO") NoticeVO noticeVO, HttpSession session,
			HttpServletRequest request) throws Exception {

		return "/admin/madminpage";
	}

	@RequestMapping(value = "/insertnotice.do", method = RequestMethod.POST)
	public String insertnoticepost(@ModelAttribute("NoticeVO") NoticeVO noticeVO, HttpSession session,
			HttpServletRequest request) throws Exception {
		this.noticeService.insertnotice(noticeVO);

		return "/admin/madminpage";
	}
	
	
	
}
