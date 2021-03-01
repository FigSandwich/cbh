<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>로그인화면</title>
</head>
<% System.out.println("LoginSuccess.jsp ==> 로그인 성공 화면:"); %>
<body>
	<div align="center" class="body">
		<h2>로그인화면</h2>	
		<br>
		환영합니다. ${userName}씨！
		
		<br><br><br>
	
	<br><br>
	<a href="">[내정보]</a> 
	<a href="/bbs/member/edituser.do?userId=${userId}">[회원정보 수정]</a> 
	<a href="/bbs/member/updateLoc.do?userId=${userId}">[컴백홈 기기 등록]</a> 
	<a href="../member/logout.do">[logout]</a> 
	</div>	
	
	
	<div style="color:#FFFFFF;" >${userName}님 <a href="/bbs/member/mypage.do?userId=${userId}"><input type='button' style="background-color:#FFFFFF;" value='내정보'></a>  <a href="../member/logout.do"><input type='button' style="background-color:#FFFFFF;" value='로그아웃'></a>
		</div>	
	
</body>
</html>