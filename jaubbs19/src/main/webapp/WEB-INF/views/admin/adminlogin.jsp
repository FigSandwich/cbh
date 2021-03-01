<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
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

<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/profile.css">
<!-- 구글 icon -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<c:if test="${errCode == null}">
	<c:set var="errCode" value="\"\""></c:set>
</c:if>
<script type="text/javascript">
	function checkErrCode(){
		var errCode = ${errCode};
		if(errCode != null || errCode != ""){
			switch (errCode) {
			case 1:
				alert("다시입력해주세요!");
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

<body onload="checkErrCode()" class="bg-light">
<br>
<header class="mb-2 bg-#f6f6f6f6 center">
		<div class="container p-auto" style="padding-left: 275px;">
		<select id="locale_switch" name="locale_switch" class="sel" onchange="switchlocale();nclks_select(this.value,'',{'ko_KR':'log.lankr','en_US':'log.lanen','zh-Hans_CN':'log.lancn','zh-Hant_TW':'log.lantw'},this,event);"
				style="margin-left: 450px;">
				<option value="">관리자</option>
			</select>
			<div class="row navbar navbar-center" style="margin-left: -20;margin-left: 0px;margin-right: 60px;" >
				<a class="col-lg-6 offset-lg-3 navbar-brand" href="/bbs/">
				<img src="${pageContext.request.contextPath}/resources/img/icon.png" class="d-inline-block align-baseline" alt="cbh" style="width: 150px;height: 150px;">
				</a>
			</div>
		</div>
	</header>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3" style="margin-left: 355px;">

	<form:form modelAttribute="userVO" method="post" action="adminpage.do">
		<fieldset>
		<div class="form-group needs-validation mt-3">
						</div>
		
		
		<div class="form-group">
			<div class="form-inline">
			<input class="form-control" type="text" id="adminid" name="adminid" class="loginInput" value="${adminid}" placeholder="아이디" required id="id" style="width:390px;" />
			<span class="error"><form:errors path="adminid" /></span><br />
			</div>
		</div>
		
		<div class="form-group">
			<div class="form-inline">
			<input type="password" class="form-control" id="password" name="password" minlength="6" maxlength="16"  class="loginInput" required id="id" placeholder="비밀번호" style="width:390px;"/>
			<span class="error"><form:errors path="password" /></span><br /><br />
		</div>
		</div>	
			
			<div class="form-group">
			<div class="form-inline">	
				<input type="submit" value="로그인" class="btn btn-secondary w-0" style="padding-right: 171px;padding-left: 171px;"/><br /><br />
		</div></div>
				
		</fieldset>			
	</form:form> 

	
	</div>
			</div>
		</div>
		
		
	</section>
	<footer class="footer bg-light mt-5">
		<div class="container p-auto">
			<div class="row sticky-bottom justify-content-center">
				<div>
					<p class="text-muted" style="margin-top: 326px;">Copyright © CombackHome. All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</footer>

</body>
</html>
