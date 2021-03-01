<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새 글 쓰기</title>
<link href="${pageContext.request.contextPath}/resources/css/board.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-1.7.1.js"></script>
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

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-1.7.1.js"></script>
<script type="text/javascript">
	function writeFormCheck() {
		if ($("#title").val() == null || $("#title").val() == "") {
			alert("제목을 입력해 주세요!");
			$("#title").focus();
			return false;
		}

		if ($("#content").val() == null || $("#content").val() == "") {
			alert("내용을 입력해 주세요!");
			$("#content").focus();
			return false;
		}
		return true;
	}
</script>
</head>

<body style="background: #FFFFFF;">
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
				<li><a href="/bbs/board/list.do">게시판</a></li>
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

	<header class="mb-2" style="height: 40px; background: #EAEAEA;">
	<div class="container">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li style="right: -115px; padding-top: 10px; margin-top: 7;"><label>게시판리스트</label></li>
		</ul>
	</div>
	</header>
	<br>
	<div class="wrapper" style="background: #FFFFFF;">
		<form action="write.do" method="post"
			onsubmit="return writeFormCheck()" enctype="multipart/form-data">
			<table class="table table-hober">
				<tr>
					<td><input type="text" id="title" name="title"
						class="boardSubject"
						style="font-size: 18px; margin-bottom: 5px; width: 850px; height: 31px; margin-left: 40px;"
						placeholder="제목을 입력해 주세요." /> <input type="hidden" id="writer"
						name="writer" value="${userName}" /> <!-- 세션변수 --> <input
						type="hidden" id="writerId" name="writerId" value="${userId}" />
						<input type="text" id="title" name="title" class="boardSubject"
						placeholder="※허위신고 게시글은 민, 형사상의 책임을 질 수 있습니다."
						style="font-size: 12px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; margin-left: 140px;"
						onfocus="this.blur()" readonly="readonly" /> <input type="text"
						id="title" name="title" class="boardSubject"
						placeholder="※보호자가 알 수 있도록 정보를 적어주세요"
						style="font-size: 12px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; margin-left: 140px;"
						onfocus="this.blur()" readonly="readonly" /></td>
				</tr>
				<tr>
					<td><textarea id="content" name="content" class="boardContent"
							style="width: 850px; margin-left: 40px;"></textarea></td>
				</tr>
				<!-- <span class="date" style="margin-left: px;">&nbsp;&nbsp;*&nbsp;보호 대상자의 위치나 사진을 올려주세요</span> -->
			</table>
			<table style="margin-top: -10px; margin-left: 50px;">
				<tr>
					<td><label for="file"
						style="text-align: left; margin-right: 5px; margin-bottom: 0px; margin-left: 90px;">파일</label></td>
					<td><input type="file" id="file" name="file"
						style="margin-left: 0px; padding-top: -10px;" multiple /> </td.>
				</tr>
				<tr>
					<td></td>
					<td><span class="date"
						style="margin-left: px; margin-left: 0px; margin-right: 110px;">&nbsp;&nbsp;*&nbsp;보호
							대상자의 위치나 사진을 올려주세요</span> </td.>
				</tr>
			</table>
			<br /> <input type="reset" value="재작성" class="writeBt btn btn-outline-secondary" /> <input
				type="submit" value="확인" class="writeBt btn btn-outline-secondary" />
		</form>
	</div>
</body>
</html>