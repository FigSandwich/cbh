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

<body>
	<div class="container">
		<form action="write.do" method="post"
			onsubmit="return writeFormCheck()" enctype="multipart/form-data">
			<table class="table table-striped">
				<tr>
					<td style="padding-bottom: 0px;"><input type="text" id="title"
						name="title" class="boardSubject" placeholder="제목을 입력해 주세요."
						style="width: 100%;" /> <input type="hidden" id="writer"
						name="writer" value="${userName}" /> <input type="hidden"
						id="writerId" name="writerId" value="${userId}" /></td>
				</tr>
				<tr>
					<td style="padding-top: 0px;"><input type="text" id="title"
						name="title" class="boardSubject"
						style="font-size: 12px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; width: 100%;"
						placeholder="※허위신고 게시글은 민, 형사상의 책임을 질 수 있습니다."
						onfocus="this.blur()" readonly="readonly" /> <input type="text"
						id="title" name="title" class="boardSubject"
						style="font-size: 12px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; width: 100%;"
						placeholder="※보호자가 알 수 있도록 정보를 적어주세요" onfocus="this.blur()"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td><textarea id="content" name="content" class="boardContent"
							style="width: 100%; height: 300px;"></textarea></td>
				</tr>
				<!-- <span class="date" style="margin-left: px;">&nbsp;&nbsp;*&nbsp;보호 대상자의 위치나 사진을 올려주세요</span> -->
			</table>
			<table>
				<tr>
					<td><label for="file">파일</label></td>
					<td><input type="file" id="file" name="file" multiple /> </td.>
				</tr>
				<tr>
					<td></td>
					<td><span class="date">보호 대상자의 위치나 사진을 올려주세요</span> </td.>
				</tr>
			</table>
			<br /> <input type="reset" value="재작성"
				class="writeBt btn btn-outline-secondary" /> <input type="submit"
				value="확인" class="writeBt btn btn-outline-secondary" />
		</form>

	</div>
</body>
</html>