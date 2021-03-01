package com.jang.bbs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.jang.bbs.model.UserVO;
import com.jang.bbs.service.LoginService;
import com.jang.bbs.utils.BCrypt;

@Controller
@RequestMapping("/member/*")
public class LoginController {

	@Autowired
	private LoginService loginService;


	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		return "/member/login";
	}
	
	@RequestMapping(value = "/loginSuccess.do", method = RequestMethod.GET)
	public String loginProc() {
		return "/member/loginSuccess";
	}

	@RequestMapping(value = "/loginSuccess.do", method = RequestMethod.POST)
	public String loginProc(@Valid UserVO userVO, BindingResult result, Model model, HttpSession session) {

		if (result.hasFieldErrors("userId") || result.hasFieldErrors("passwd")) {
			model.addAllAttributes(result.getModel());
			return "/member/login";
		}

		UserVO loginUser = this.loginService.getUser(userVO.getUserId());
		userVO.setPasswd(BCrypt.hashpw(userVO.getPasswd(), BCrypt.gensalt(12)));
		if (loginUser == null) {
			model.addAttribute("userId", "");
			model.addAttribute("errCode", "1");
			return "/member/login";

		} else if (BCrypt.checkpw(userVO.getPasswd(), loginUser.getPasswd())) { 
			model.addAttribute("loginUser", loginUser);
			session.setAttribute("userId", loginUser.getUserId());
			session.setAttribute("passwd", loginUser.getPasswd());
			session.setAttribute("dev_no", loginUser.getDev_no());
			session.setAttribute("userName", loginUser.getName()); 
			return "/member/loginSuccess";
		} else {
			model.addAttribute("passwd", "");
			model.addAttribute("errCode", 4);
			session.setAttribute("userId", loginUser.getUserId());
			session.setAttribute("passwd", loginUser.getPasswd());
			session.setAttribute("dev_no", loginUser.getDev_no());
			session.setAttribute("userName", loginUser.getName()); 
			// return "/member/login";
			return "/member/loginSuccess";
		}
	} 

	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/login.do";

	}


	@RequestMapping(value = "/joinForm.do", method = RequestMethod.GET)
	public String joinForm(Model model) {
		model.addAttribute("userVO", new UserVO());
		return "/member/joinForm";
	}

	@RequestMapping(value = "/checkid.do", method = RequestMethod.GET)
	public String dupCheckId(@RequestParam("userId") String userId, Model model) { // ��� -join d

		String message = "";
		int reDiv = 0;
		System.out.println(userId);
		UserVO loginuser = this.loginService.getUser(userId);
		System.out.println(loginuser.getUserId());

		if (loginuser.getUserId().equals(userId)) {
			message = "�̹� ���� ���̵� �Դϴ�";
			userId = "";
			reDiv = 1;
		} else {
			reDiv = 1;
			message = "��� ������ ���̵� �Դϴ�";
		}
		model.addAttribute("message", message);
		model.addAttribute("reDiv", reDiv);
		model.addAttribute("userId", userId);
		return "/member/joinSuccess";
	}

	@RequestMapping(value = "/joinForm.do", method = RequestMethod.POST)
	public String joinSubmit(@Valid UserVO userVO, BindingResult result, Model model) throws Exception {
		if (result.hasErrors()) {
			model.addAllAttributes(result.getModel());
			return "/member/joinForm";
		} 
		String hashPass = BCrypt.hashpw(userVO.getPasswd(), BCrypt.gensalt(12));
		userVO.setPasswd(hashPass); 
		System.out.println(userVO.toString());
		if (this.loginService.insertUser(userVO) != 0) {
			model.addAttribute("userVO", userVO);
			model.addAttribute("errCode", 3);
			return "/member/login";
		} else {
			model.addAttribute("errCode", 5);
			return "/member/joinForm";
		}
	}

	// ajax//
	@RequestMapping(value = "/ajaxlogin.do")
	public String ajlogin() {
		return "/member/ajaxlogin";
	}

	@RequestMapping(value = "/ajaxlogin.do", method = RequestMethod.POST)
	public @ResponseBody String AjaxView(@Valid UserVO userVO, BindingResult bindingResult, HttpSession session) {
		Gson gson = new Gson();
		JsonObject object = new JsonObject();
		object.addProperty("msg", "Fail");
		if (bindingResult.hasFieldErrors("userId")) {
			object.addProperty("err", "empty_id");
			return gson.toJson(object).toString();
		} else if (bindingResult.hasFieldErrors("passwd")) {
			object.addProperty("err", "empty_pass");
			return gson.toJson(object).toString();
		}
		UserVO loginUser = this.loginService.findUser(userVO);
		if (loginUser == null) {
			object.addProperty("id", "Null");
			object.addProperty("err", "noUser");
			return gson.toJson(object).toString();
		} else {
			session.setAttribute("userId", loginUser.getUserId()); 
																
			object.addProperty("id", loginUser.getUserId());
			object.addProperty("msg", "Success");
			object.addProperty("err", "");
			return gson.toJson(object).toString();
		}
	}

	@RequestMapping(value = "/edituser.do", method = RequestMethod.GET)
	public String toUserEditView(HttpServletRequest request, HttpSession session, Model model) {

		String userId = session.getAttribute("userId").toString();
		UserVO loginUser = this.loginService.getUser(userId);

		if (loginUser == null) {
			model.addAttribute("userId", "");
			model.addAttribute("errCode", 1);
			return "/member/login";
		}
		model.addAttribute("userVO", loginUser);
		System.out.println(loginUser.toString());
		return "/member/editForm";
	}

	@RequestMapping(value = "/edituser.do", method = RequestMethod.POST)
	public String onEditSave(@Valid UserVO userVO, BindingResult result, Model model) throws Exception {
		if (result.hasErrors()) {
			model.addAllAttributes(result.getModel());
			return "/member/editForm";
		}
		System.out.println(userVO.getPasswd());
		userVO.setPasswd(BCrypt.hashpw(userVO.getPasswd(), BCrypt.gensalt(12)));
		System.out.println(userVO.getName() + userVO.getUserId());
		System.out.println(userVO.getPasswd());

		if (this.loginService.updateUser(userVO) != 0) {
			model.addAttribute("userVO", userVO);
			model.addAttribute("errCode", 3);
			model.addAttribute("message", "정보가 올바르지 않습니다. ");
			return "/member/loginSuccess";
		} else {
			model.addAttribute("errCode", 5);
			model.addAttribute("errMsg", "정보가 올바르지 않습니다.");
			return "/member/editForm";
		}
	}


	@RequestMapping(value = "/updateLoc.do", method = RequestMethod.GET)
	public String updateLoc(HttpServletRequest request, HttpSession session, Model model) {

		String userId = session.getAttribute("userId").toString();
		UserVO loginUser = this.loginService.getUser(userId);

		if (loginUser == null) {
			model.addAttribute("userId", "");
			model.addAttribute("errCode", 1);
			return "/member/mypage";
		}
		model.addAttribute("userVO", loginUser);
		System.out.println(loginUser.toString());
		return "/member/updateLoc";
	}

	@RequestMapping(value = "/updateLoc.do", method = RequestMethod.POST)
	public String updateLocOn(@Valid UserVO userVO, BindingResult result, Model model) throws Exception {
		if (result.hasErrors()) {
			model.addAllAttributes(result.getModel());
			return "/member/updateLoc";
		}
		System.out.println(userVO.getPasswd());
		userVO.setPasswd(BCrypt.hashpw(userVO.getPasswd(), BCrypt.gensalt(12)));
		System.out.println(userVO.getName() + userVO.getUserId());
		System.out.println(userVO.getPasswd());

		if (this.loginService.updateLoc(userVO) != 0) {
			model.addAttribute("userVO", userVO);
			model.addAttribute("errCode", 3);
			model.addAttribute("message", "정보가 올바르지 않습니다.");
			return "/member/loginSuccess";
		} else {
			model.addAttribute("errCode", 5);
			model.addAttribute("errMsg", "정보가 올바르지 않습니다.");
			return "/member/updateLoc";
		}
	}


	@RequestMapping(value = "/LocUser.do", method = RequestMethod.GET)
	public String LocUser(@ModelAttribute("UserVO") UserVO userVO, Model model, HttpSession session) throws Exception {

		List<UserVO> loc = loginService.getLocUser(userVO);
		model.addAttribute("UserVO", loc);

		return "member/LocUser";
	}
	

	@RequestMapping(value = "/updateLocUser.do", method = RequestMethod.GET)
	public String updateLocUser(HttpServletRequest request, HttpSession session, Model model) {

		String userId = session.getAttribute("userId").toString();
		UserVO loginUser = this.loginService.getUser(userId);

		if (loginUser == null) {
			model.addAttribute("userId", "");
			model.addAttribute("errCode", 1);
			return "/member/mypage";
		}
		model.addAttribute("userVO", loginUser);
		System.out.println(loginUser.toString());
		return "/member/updateLocUser";
	}
	
	@RequestMapping(value = "/updateLocUser.do", method = RequestMethod.POST)
	public String updateLocUserOn(@Valid UserVO userVO, BindingResult result, Model model) throws Exception {
		if (result.hasErrors()) {
			model.addAllAttributes(result.getModel());
			return "/member/updateLocUser";
		}
		System.out.println(userVO.getPasswd());
		userVO.setPasswd(BCrypt.hashpw(userVO.getPasswd(), BCrypt.gensalt(12)));
		System.out.println(userVO.getName() + userVO.getUserId());
		System.out.println(userVO.getPasswd());

		if (this.loginService.updateLocUser(userVO) != 0) {
			model.addAttribute("userVO", userVO);
			model.addAttribute("errCode", 3);
			model.addAttribute("message", "정보가 올바르지 않습니다.");
			return "/member/loginSuccess";
		} else {
			model.addAttribute("errCode", 5);
			model.addAttribute("errMsg", "정보가 올바르지 않습니다.");
			return "/member/updateLocUser";
		}
	}
	
	


	@RequestMapping(value = "/findId.do", method = RequestMethod.GET)
	public String findId(Model model) {
		return "/member/findId";
	}

	@RequestMapping(value = "/findId.do", method = RequestMethod.POST)
	public String findId(@Valid UserVO userVO, BindingResult result, Model model, HttpSession session) {

		if (result.hasFieldErrors("name") || result.hasFieldErrors("email")) {
			model.addAllAttributes(result.getModel());
			return "/member/findId";
		}
		UserVO loginUser = this.loginService.findId(userVO);
		if (loginUser == null) {
			model.addAttribute("errCode", 1);
			return "/member/findId";
		} else {
			model.addAttribute("userId", loginUser.getUserId());
			model.addAttribute("userName", loginUser.getName());
			model.addAttribute("errCode", 4);
			return "/member/findIdSuccess";
		}
	}

	@RequestMapping(value = "/findPass.do", method = RequestMethod.GET)
	public String findPass(Model model) {
		return "/member/findPass";
	}

	@RequestMapping(value = "/editPass.do", method = RequestMethod.GET)
	public String onEditpass(@Valid UserVO userVO, BindingResult result, Model model) throws Exception {
		if (result.hasFieldErrors("userId") || result.hasFieldErrors("name") || result.hasFieldErrors("email")) {
			model.addAllAttributes(result.getModel());
			return "/member/findPass";
		}

		UserVO loginuser = this.loginService.findPass(userVO);
		if (loginuser == null) {
			model.addAttribute("errCode", 1);
			model.addAttribute("userId");
			return "/member/findPass";
		} else {
			model.addAttribute("userId", loginuser.getUserId());
			model.addAttribute("email", loginuser.getEmail());
			model.addAttribute("name", loginuser.getName());
			System.out.println(loginuser.toString());
			return "/member/editPass";
		}
		
	}
	
	@RequestMapping(value = "/editPass.do", method = RequestMethod.POST)
	public String onEditpassSave(@Valid UserVO userVO, BindingResult result, Model model) throws Exception {
		if (result.hasFieldErrors("userId") || result.hasFieldErrors("email")) {
			model.addAllAttributes(result.getModel());
			System.out.println("result ����!");
			return "/member/editPass";
		}
		userVO.setPasswd(BCrypt.hashpw(userVO.getPasswd(), BCrypt.gensalt(12)));
		try {
			loginService.updatePass(userVO);
			System.out.println(userVO.toString());
			return "/member/editPass";
		} catch (DataAccessException e) {
			result.reject("error.duplicate.user");
			model.addAllAttributes(result.getModel());
			return "/member/editPass";
		}
	} 

	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String mypage(HttpServletRequest request, HttpSession session, Model model) {

		String userId = session.getAttribute("userId").toString();
		UserVO loginUser = this.loginService.getUser(userId);

		if (loginUser == null) {
			model.addAttribute("userId", "");
			model.addAttribute("errCode", 1);
			return "/member/loginSuccess";
		}
		model.addAttribute("userVO", loginUser);
		session.setAttribute("userName", loginUser.getName());
		System.out.println(loginUser.toString());
		return "/member/mypage";
	}
	
	
		
	@RequestMapping(value = "/userlist.do", method = RequestMethod.GET)
	public String userlist(@ModelAttribute("UserVO") UserVO userVO, Model model, HttpSession session) throws Exception {

		List<UserVO> user = loginService.getuserlist(userVO);
		model.addAttribute("UserVO", user);

		return "member/userlist";
	}
	

	@RequestMapping(value = "/userlistdata.do", method = RequestMethod.GET)
	public String userlistdata(@ModelAttribute("UserVO") UserVO userVO, Model model, HttpSession session) throws Exception {

		List<UserVO> user = loginService.getuserlistdata(userVO);
		model.addAttribute("UserVO", user);

		return "member/userlistdata";
	}
	
	
	
}
