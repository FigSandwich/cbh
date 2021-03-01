<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디찾기</title>
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f3e52b22aa7a2f504ea39f5cb27cf97a"></script>
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
<body onload="checkErrCode()" class="bg-light">
	<nav class="navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/bbs/">컴백홈</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li style="margin-top: 4px;"><a href="findPass.do">패스워드찾기</a></li>
					<li
						style="right: -519px; font-size: 13px; padding-top: 1px; margin-top: -4;"><a
						href="/bbs/member/login.do"><input type='button'
							style="background-color: #FFFFFF;margin-left: 200px;" value='로그인'></a></li>
					<!--
					<article class="right">
				    <iframe name="page" src="/bbs/member/loginSuccess.do" seamless="true"
				            width="500px" height="50px" frameborder="0" ;>       
				    </iframe>
					</article>
					 -->

				</ul>
			</div>
		</div>
	</nav>
	<section>
		<div class="container" style="padding-top:10px; background: #FFFFFF;">	
		<br>
		<form:form modelAttribute="userVO" Name='findPass' Method='post'
			Action="/bbs/member/editPass.do">
	
			<TABLE border='2' width='600' cellSpacing=0 cellPadding=5
				align=center>

<div class="col-md-3" style="background:#FFFFFF; min-height:250px;">
<div class="thumbnail" style="background:#FFFFFF; min-height:250px; border:none;">
<div class="caption">         

</div>
</div>
</div>	

<div class="col-md-5" style="background:#FFFFFF; min-height:300x;">
<div class="thumbnail" style="background:#F6F6F6; min-height:300px;">
<h4 style="
    padding-left: 15px;
    margin-top: 25px;
    margin-bottom:20px;">패스워드 찾기</h4>
<div class="caption">  

						<div class="form-group">
						<div class="form-inline">
							<label for="email">아이디</label> 
							</div>
							<div class="form-inline">
							<input type="text" class="form-control" id="userId" path="userId" name="userId" value="${userId}"  placeholder="아이디을 적어주세요"  />
						</div></div>   

						<div class="form-group">
						<div class="form-inline">
							<label for="email">E-mail</label> 
							</div>
							<div class="form-inline">
							<input type="text" class="form-control" id="email" path="email" name="email" value="${email}"  placeholder="이메일을 적어주세요"  />
						</div></div>
						
						<div class="form-group">
						<div class="form-inline">
							<label for="name">성명</label>
							</div>
							<div class="form-inline">
							<input type="text" class="form-control" id="name" path="name" name="name" maxlength="10" value="${name}" placeholder="이름을 적어주세요" />							
						</div></div>
						
						<div class="form-group">
							<input type="submit" class="btn btn-secondary w-100" value="패스워드변경" onclick="retrun checkErrCode()" style="margin-top: 50px;margin-left: 0px;padding-left: 180px;padding-right: 165px;margin-right: 0px;" />
							<!-- <input type="button" class="submitBt btn btn-secondary w-50" onclick="location.href='login.do'" value="돌아가기" /> -->
						</div>
					
						
</div>
</div>
</div>


<div class="col-md-4" style="background:#FFFFFF; min-height:250px;">
<div class="thumbnail" style="background:#FFFFFF; min-height:250px; border:none;">
<div class="caption">         

</div>
</div>
</div>
				
			</TABLE>
		</form:form>
		
		
		<footer class="footer bg-light mt-5">
		<div class="container p-auto">
			<div class="row sticky-bottom justify-content-center">
				<div>
					<p class="text-muted" style="margin-top: 370px;margin-left: 375px;">Copyright © CombackHome. All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</footer>
				
		</div>
		
	</section>
	
	
	

</body>
</html>