<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
<c:if test="${errCode == null}">
	<c:set var="errCode" value="\"\""></c:set>
</c:if>
<script type="text/javascript">
	function checkErrCode(){
		var errCode = ${errCode};
		if(errCode != null || errCode != ""){
			switch (errCode) {
			case 1:
				alert("등록되지않은 아이디입니다!");
				break;
			case 2:
				alert("아이디나 비밀번호가 입력되지않았습니다.");
				break;
			case 3:
				alert("회원가입 처리가 완료되었습니다! 로그인 해 주세요!");
				location.href = "<%=request.getContextPath()%>/member/login.do";
				break;	
			case 4:
				alert("비밀번호가 일치하지 않습니다!");
				break;
			}
		}
	}
</script>
</head>

<body onload="checkErrCode()">
<div class="wrapper">
<h3>스프링 게시판</h3>

	<form:form modelAttribute="userVO" method="post" action="login.do">
		<fieldset>
			<label for="userId">아 이 디 : </label>
			<input type="text" id="userId" name="userId" class="loginInput" value="${userId}" />
			<span class="error"><form:errors path="userId" /></span><br />
			<label for="userPw">비밀번호 : </label>
			<input type="password" id="passwd" name="passwd" class="loginInput"/>
			<span class="error"><form:errors path="passwd" /></span><br /><br />
			<center>
			<input type="submit" value="로그인" class="submitBt"/><br /><br />
			<a href="<%=request.getContextPath()%>/member/join.do">회원가입</a><a href="<%=request.getContextPath()%>/member/findId.do">/아이디찾기</a><a href="<%=request.getContextPath()%>/member/findPass.do">/비밀번호찾기</a>			
			</center>		
		</fieldset>			
	</form:form> 
</div>

</body>
</html>
