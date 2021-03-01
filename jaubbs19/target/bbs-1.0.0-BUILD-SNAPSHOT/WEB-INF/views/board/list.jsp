<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글 목록</title>

<link href="${pageContext.request.contextPath}/resources/css/board.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.7.1.js"></script>

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

<body onload="selectedOptionCheck()">
<div class="wrapper">
	<div class="navBar">
		<ul>
			<li><a href="list.do">스프링  게시판</a></li>
			<li><a href="../member/logout.do">로그아웃</a></li>	
			<c:if test="${not empty userId}">
			  <li><a href="../member/edituser.do">정보수정</a></li>		
			</c:if>	
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
	
	<table border="0" class="boardTable">
		<thead>
		<tr>
			<th>글번호</th><th>제목</th><th>작성자</th><th>댓글수</th>	<th>조회수</th><th>추천수</th><th>작성일</th>	
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
	${pageHttp}
	<br /><br />
	<input type="button" value="목록" class="writeBt" onclick="moveAction(2)"/>
	<input type="button" value="쓰기" class="writeBt" onclick="moveAction(1)"/>	
</div>
</body>
</html>