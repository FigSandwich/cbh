<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>일반회원가입</title>
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
<script>
	/* 	//유효성 검사를 위한 소스
	 // Disable form submissions if there are invalid fields
	 (function() {
	 'use strict';
	 window.addEventListener('load', function() {
	 // Get the forms we want to add validation styles to
	 var forms = document.getElementsByClassName('needs-validation');
	 // Loop over them and prevent submission
	 var validation = Array.prototype.filter.call(forms, function(form) {
	 form.addEventListener('submit', function(event) {
	 if (form.checkValidity() === false) {
	 event.preventDefault();
	 event.stopPropagation();
	 }
	 form.classList.add('was-validated');
	 }, false);
	 });
	 }, false);
	 })(); */
	function Check_Pass() {
		if (join.passwd.value != join.pass2.value) {
			alert("패스워드가 일치하지않습니다.");
			join.passwd.value = "";
			join.pass2.value = "";
			join.passwd.focus();
			return false;
		}
		//alert("수정이 완료되었습니다.");
		return true;
	}
</script>
<script>
	//전체동의를 위한 소스
	$(document).ready(function() {
		$('.check-all').click(function() {
			$('.ck').prop('checked', this.checked);
		});
	});
</script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
	$(document).ready(function() {
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성 
				reader.onload = function(e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러 
					$('#blah').attr('src', e.target.result);
					//이미지 Tag의 SRC속성에 읽어들인 File내용을 지정 
					//(아래 코드에서 읽어들인 dataURL형식) 
				}
				reader.readAsDataURL(input.files[0]);
				//File내용을 읽어 dataURL형식의 문자열로 저장 
			}
		}//readURL()-- //file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드 
		$("#imgInp").change(function() {
			//alert(this.value); 
			//선택한 이미지 경로 표시 
			readURL(this);
		});
	});
</script>

</head>
<body class="bg-light">
	<header class="mb-2 bg-white" style="background-color:#F6F6F6">
		<div class="container p-auto">
			<div class="row navbar navbar-center">
				<a class="col-lg-6 offset-lg-3 navbar-brand" href="/bbs/">
				<img src="${pageContext.request.contextPath}/resources/img/icon.png" class="d-inline-block align-baseline" alt="cbh" style="width: 150px;height: 150px;margin-left: 185px; margin-bottom: -10px;">
				</a>
			</div>
		</div>
	</header>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<form:form modelAttribute="userVO" action="/bbs/member/joinForm.do" onsubmit="return Check_Pass()" method="post" name="joinForm" id="joinForm">
				
						<div class="form-group">
							<label for="userId">아이디</label>
							<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
							<div class="form-inline">
							<form:input type="text" class="form-control" id="userId" path="userId" name="userId" maxlength="10" style="padding-right:357px;" />
							</div>
						</div>
						<div class="form-group">
							<label for="passwd">비밀번호</label>
							<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
							<form:password class="form-control text-truncate" id="passwd" path="passwd" name="passwd" placeholder="6~16자의 영문, 숫자, 특수기호를 입력하세요" minlength="6" maxlength="16" />
						</div>
						 
						<div class="form-group">
							<label for="pass2">비밀번호 확인</label>
							<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
							<input type="password" class="form-control" id="pass2" name="pass2" minlength="6" maxlength="16" />
						</div>
						
						<div class="form-group">
							<label for="name">이름</label>
							<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
							<!-- 는 boolean과 같으므로  설정하면 false이다-->
							<form:input type="text" class="form-control" id="name" path="name" name="name" maxlength="10" />
						</div>
						
						<div class="form-group">
							<label for="name">주민번호</label>
							<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
							<!-- 는 boolean과 같으므로  설정하면 false이다-->
							<form:input type="text" class="form-control" id="jumin" path="jumin" name="jumin" maxlength="30" />
						</div>
						
						<div class="form-group">
							<label for="name">연락처</label>
							<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
							<form:input type="text" class="form-control" id="phone" path="phone" name="phone" value="010-" maxlength="30" />
						</div>
						 
						  
						<div class="form-group">
							<label for="name">E - mail</label>
							<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
							
							<div class="input-group w-100">
									<form:input type="text" class="form-control col-12" id="email" path="email" name="email" placeholder="이메일을 입력하세요" />
									<div class="input-group-append">
							<!-- <button class="btn btn-outline-secondary" type="button" id="button-addon2">인증하기</button>-->
									</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name">기기코드</label>					
							<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
							<form:input type="text" class="form-control col-12" id="dev_no" path="dev_no" name="dev_no" placeholder="기기가 없다면 비워두세요" />
							<p class="font-weight-bold text-danger" style = " font-size:11px; color:red;">등록은 로그인 후 내정보에서도 할 수 있습니다.</p>		
						</div>
					
						<button type="submit" class="btn btn-secondary w-100">가입하기</button>
					</form:form>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer bg-light mt-5">
		<div class="container p-auto">
			<div class="row sticky-bottom justify-content-center">
				<div>
					<p class="text-muted">Copyright © 2019 by CombackHome. All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>