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
				|| request.getRequestURI().equals("/bbs/member/joinForm.do") // 회원가입
				|| request.getRequestURI().equals("/bbs/member/checkid.do") // 중복체크
				|| request.getRequestURI().equals("/bbs/member/edituser.do") // 회원정보수정
				|| request.getRequestURI().equals("/bbs/member/updateLoc.do") // 기기코드 저장
				|| request.getRequestURI().equals("/bbs/member/findId.do") // 아디찾기
				|| request.getRequestURI().equals("/bbs/member/editPass.do") //비번찾기
				|| request.getRequestURI().equals("/bbs/member/loginSuccess.do") //로그인후
				|| request.getRequestURI().equals("/bbs/member/mypage.do") // 마이페이지
				|| request.getRequestURI().equals("/bbs/member/updateLocUser.do.do") //보호자 조회 정보 저장
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
