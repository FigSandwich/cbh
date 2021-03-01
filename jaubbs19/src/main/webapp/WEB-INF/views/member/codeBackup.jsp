<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta charset="UTF-8">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DressFi</title>
<style>
#hr {
	display: block;
	margin-top: 0.5em;
	margin-left: auto;
	margin-right: auto;
	border-style: inset;
	border-width: 1px;
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

.form-group .row .col-lg-8 {
	font-size: 0.813em;
}

a img {
	width: 1.5em;
	height: 1.5em;
}

a span {
	font-stretch: expanded;
	font-size: 1.5em;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/profile.css">
<!-- 구글 icon -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%-- <link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet" type="text/css"> --%>
<c:if test="${errCode == null}">
	<c:set var="errCode" value="\"\""></c:set>
</c:if>
<script type="text/javascript">
	function checkErrCode() {
		var errCode = $
		{
			errCode
		}
		;
		if (errCode != null || errCode != "") {
			switch (errCode) {
			case 1:
				alert("회원정보가 없습니다!");
				break;
			case 2:
				alert("주민번호를 올바르게 입력해주세요!");
				break;
			}
		}
	}
</script>
</head>
<%-- <body onload="checkErrCode()">
	<div class="wrapper">
		<h2>비밀번호찾기</h2>
		<form:form modelAttribute="userVO" method="post" action="findPass.do">
			<fieldset>
				<label for="userId">아 이 디 : </label>
				<input type="text" id="userId" name="userId" class="loginInput" value="${member.userId}">
				<span class="error"><form:errors path="userId" /></span><br />
				<label for="name">이 &nbsp 름 : </label>
				<input type="text" id="name" name="name" class="loginInput" value="${member.name}">
				<span class="error"><form:errors path="name" /></span><br />
				<label for="jumin">주민번호 : </label>
				<input type="text" id="jumin" name="jumin" class="loginInput" value="${member.jumin}">
				<span class="error"><form:errors path="jumin" /></span><br />
				<label for="jumin">E - Mail : </label>
				<input type="text" id="email" name="email" class="loginInput" value="${member.email}">
				<span class="error"><form:errors path="email" /></span><br />
				<center>
					<input type="submit" class="submitBt" value="비밀번호찾기" />
					<input type="button" class="submitBt" onclick="location.href='login.do'" value="돌아가기" />
				</center>
			</fieldset>
		</form:form>
	</div>
</body> --%>
<body onload="checkErrCode()" class="bg-light">
	<%-- <div class="wrapper">
		<h2>아이디찾기</h2>
		<form:form modelAttribute="userVO" method="post" action="findId.do">
			<fieldset>
				<label for="name">이 &nbsp 름 : </label><input type="text" id="name" name="name" class="loginInput" value="${member.name}">
				<span class="error"><form:errors path="name" /></span><br />
				<label for="jumin">주민번호 : </label><input type="text" id="jumin" name="jumin" class="loginInput" value="${member.jumin}">
				<span class="error"><form:errors path="jumin" /></span><br />
				<label for="jumin">E - Mail : </label> <input type="text" id="email" name="email" class="loginInput" value="${member.email}">
				<span class="error"><form:errors path="email" /></span><br />
				<center>
					<input type="submit" class="submitBt" value="아이디찾기" onclick="retrun check()" /> <input
						type="button" class="submitBt" onclick="location.href='login.do'"
						value="돌아가기" />
				</center>
			</fieldset>
		</form:form>
	</div> --%>
	<header class="mb-2 bg-white">
		<div class="container p-auto">
			<div class="row navbar navbar-light">
				<a class="col-lg-6 offset-lg-3 navbar-brand" href="/bbs/">
					<span class="d-inline-block align-bottom"></span>
				</a>
			</div>
		</div>
	</header>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<form:form modelAttribute="userVO" action="/bbs/member/editPass.do" method="post">
						<div class="form-group needs-validation mt-3">
							<h4 class="font-weight-bolder">비밀번호 찾기</h4>
						</div>
						<div class="form-group">
							<label for="email">아이디</label>
							<input type="text" class="form-control" id="email" path="email" name="email" value="${member.userId}" />
						</div>
						<div class="form-group">
							<label for="email">이메일</label>
							<input type="text" class="form-control" id="email" path="email" name="email" value="${member.email}" />
						</div>

						<div class="form-group">
							<label for="name">성명</label>
							<input type="text" class="form-control" id="name" path="name" name="name" maxlength="10" value="${member.name}" />
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-secondary w-100" value="비밀번호 변경하러 가기" onclick="retrun checkErrCode()" />
							<!-- <input type="button" class="submitBt btn btn-secondary w-50" onclick="location.href='login.do'" value="돌아가기" /> -->
						</div>


						<!-- <button type="submit" class="btn btn-secondary w-100">아이디 찾기</button> -->
					</form:form>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer bg-light mt-5">
		<div class="container p-auto">
			<div class="row sticky-bottom justify-content-center">
				<div>
					<p class="text-muted">Copyright © 2019 by </p>
				</div>
			</div>
		</div>
	</footer>
</html>