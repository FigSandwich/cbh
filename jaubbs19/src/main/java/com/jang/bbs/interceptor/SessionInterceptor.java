package com.jang.bbs.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Object userId = request.getSession().getAttribute("userId");
		if (request.getRequestURI().equals("/bbs/member/login.do")
				|| request.getRequestURI().equals("/bbs/member/joinForm.do") 
				|| request.getRequestURI().equals("/bbs/member/checkid.do") 
				|| request.getRequestURI().equals("/bbs/member/edituser.do") 
				|| request.getRequestURI().equals("/bbs/member/updateLoc.do") 
				|| request.getRequestURI().equals("/bbs/member/findId.do")
				|| request.getRequestURI().equals("/bbs/member/editPass.do") 
				|| request.getRequestURI().equals("/bbs/member/loginSuccess.do") 
				|| request.getRequestURI().equals("/bbs/member/mypage.do")
				|| request.getRequestURI().equals("/bbs/member/updateLocUser.do.do") 
				|| request.getRequestURI().equals("/bbs/member/ajaxlogin.do")
				|| request.getRequestURI().equals("/bbs/member/userlist.do")
				|| request.getRequestURI().equals("/bbs/member/userlistdata.do")
				|| request.getRequestURI().equals("/bbs/insertcustomer.do")
				|| request.getRequestURI().equals("/bbs/m.insertcustomer.do")
				|| request.getRequestURI().equals("/bbs/customer.do")
				|| request.getRequestURI().equals("/bbs/m.customer.do")
				|| request.getRequestURI().equals("/bbs/m.home"))
			

		{
			if (userId != null) {
				response.sendRedirect(request.getContextPath() + "/board/list.do");
				response.sendRedirect(request.getContextPath() + "/mboard/list.do");
				return true;
			} else {
				return true;
			}
		}
		if (userId == null) {
			response.sendRedirect(request.getContextPath() + "/member/ajaxlogin.do");
			return false;
		} else {
			return true;
		}
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}
	
	

}
