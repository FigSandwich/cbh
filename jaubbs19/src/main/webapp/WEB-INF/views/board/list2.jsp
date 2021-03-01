<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글 목록</title>

<link href="${pageContext.request.contextPath}/resources/css/board.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.7.1.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 

href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f3e52b22aa7a2f504ea39f5cb27cf97a"></script>

<script type="text/javascript">

	function selectedOptionCheck(){
		$("#type > option[value=${param.type}]").attr("selected", "true");
	}
	
	function moveAction(where){
		switch (where) {
		case 1:
			location.href = "write.do";
			break;
		
		case 2:
			location.href = "list.do";
			break;
		}
	}

</script>
</head>

<body onload="selectedOptionCheck()"style="background-color:#FFFFFF;" >
<nav class="navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="adminpage.do">컴백홈위치추적</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a>게시판</a></li>
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
				<li style="right: -115px; padding-top: 1px; margin-top: 7;"><label>게시판리스트</label></li>
			</ul>
		</div>
	</header>

<div class="wrapper" style="background-color:#FFFFFF;">
	<div class="navBar">
		<ul>
			
		</ul>
		<form action="list.do"  modelAttribute="searchVO" method="get">	
		
			<select id="type" name="type">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="writerId">작성자</option>
			</select>
			<input type="text" id="keyword" name="keyword" value="<%if(request.getParameter("keyword") != null)
			{ out.print(request.getParameter("keyword")); } else { out.print(""); }%>" />
			<input type="submit" value="검색" />		
			
		</form>
	</div>	
	
	<div class="table-responsive">
		<table id="myTable" class="display table" width="100%" >
		<thead style="background-color:#FFFFFF;">
		<tr>
			<th> 글번호</th><th>제목</th><th>작성자</th><th>댓글수</th>	<th>조회수</th><th>추천수</th><th>작성일</th>	
		</tr>
		</thead>
		<tbody>
		<c:forEach var="board" items="${boardList}">
		<tr>
			<td class="idx">${board.bno}</td>
			<td align="left" class="subject">
				<c:if test="${board.replycnt >= 10}"><img src="${pageContext.request.contextPath}resources/img/hit.jpg" /></c:if>
				<a href="view.do?bno=${board.bno}">${board.title}</a></td>
			<td class="writer">  ${board.writerId}</td>
			<td class="comment">${board.replycnt}</td>
			<td class="hitcount">${board.viewcnt}</td>
			<td class="recommendcount">${board.recommendcnt}</td>
			<td class="writeDate">${board.regDate}</td>		
		</tr>
		</c:forEach>
		</tbody>
	</table>
	<br />
	<div>
	${pageHttp}
	</div>
	<br /><br />
	<input type="button" value="목록" class="writeBt" onclick="moveAction(2)"/>
	<input type="button" value="쓰기" class="writeBt" onclick="moveAction(1)"/>	
</div>

<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
</body>
</html>