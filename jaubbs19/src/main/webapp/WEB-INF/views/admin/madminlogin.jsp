<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<style>
a img {
	width: 2.0rem;
	height: 2.0rem;
}

a span {
	font-stretch: expanded;
	font-size: 2.0rem;
}

#hr {
	display: block;
	margin-top: 0.5em;
	margin-left: auto;
	margin-right: auto;
	border-style: inset;
	border-width: 1px;
}

.all {
	margin-top: 10.0em;
}

.carousel-item img {
	width: 0 auto;
	height: 400px;
	max-height: 400px;
}

.col input {
	width: 300px;
	max-width: 300px;
}

.col button {
	width: 300px;
	max-width: 300px;
}

.notuser a {
	font-stretch: expanded;
	font-size: 1.0em;
}

.notuser a { /*클릭하지 않은 링크*/
	color: black;
	text-decoration: none;
}

.notuser a:hover { /*링크를 클릭하려고 마우스를 가져갔을때*/
	color: gray;
	text-decoration: none; /*밑줄 없음*/
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/profile.css">
<!-- 구글 icon -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
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
				alert("아이디 또는 비밀번호가 일치하지 않습니다!");
				break;
			}
		}
	}
</script>
</head>
<body onload="checkErrCode()" class="bg-light">
	<div class="all">
		<div class="container">
			<div class="row justify-content-center">
				<div class="row navbar navbar-light">
					<a class="col-lg-6 offset-lg-3 navbar-brand" href="/bbs/mobile/m.home" style="margin-left: 20px;">
					<span class="d-inline-block align-bottom"></span>
						<img src="${pageContext.request.contextPath}/resources/img/icon.png" class="d-inline-block align-baseline" alt="cbh" style="width: 150px;height: 150px;">
					</a>
				</div>
			</div>
			<form:form modelAttribute="userVO" method="post" action="m.adminpage.do">
				<div class="row justify-content-center">
					<div class="list-group row">
						<div class="col">
							<input type="text" class="list-group-item" id="adminid" name="adminid" placeholder="아이디" required id="id" />
							<span class="error"><form:errors path="adminid" /></span>
							<input type="password" class="list-group-item" id="password" name="password" placeholder="패스워드" minlength="6" maxlength="16"  class="loginInput" required id="id" />
							<span class="error"><form:errors path="password" /></span>

							<%-- <input type="text" id="userId" name="userId" class="loginInput" value="${userId}" />  --%>
							<!-- <input type="password" id="passwd" name="passwd" class="loginInput" /> -->
						</div>
					</div>
				</div>
				<div class="row justify-content-center mt-3">
					<div class="row">
						<div class="col">
							<button type="submit" class="btn btn-secondary">L O G I N</button>
						</div>
					</div>
				</div>
			</form:form>
			
			<!-- 소셜로그인부분 -->
			<div class="row justify-content-center mt-3">
				<div class="row">
					<div class="col"></div>
				</div>
			</div>
		</div>
		<footer class="footer bg-light mt-5">
		<div class="container p-auto">
			<div class="row sticky-bottom justify-content-center">
				<div>
					<p class="text-muted">© CombackHome.</p>
				</div>
			</div>
		</div>
	</footer>
	</div>
</body>
</html>
