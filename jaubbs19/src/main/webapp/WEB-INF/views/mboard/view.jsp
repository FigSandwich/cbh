<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 보기: ${board.title}</title>
<link href="${pageContext.request.contextPath}/resources/css/board.css" rel="stylesheet" type="text/css" />
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

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.7.1.js"></script>
<script type="text/javascript">
	function errCodeCheck(){
		var errCode = <%=request.getParameter("errCode")%>;
		if(errCode != null || errCode != ""){
			switch (errCode) {
			case 1:
				alert("댓글 내용이 없습니다!");
				break;
			case 2:
				alert("이미 추천하셨습니다!");
				break;
			case 3:
				alert("자기 글은 추천할 수 없습니다.!");
				break;
			case 4:
				alert("로그인하셔야 추천할 수 있습니다.!");
				break;
			}
		}		
	}
	
	function replyDelete(rno, bno){
		if(confirm("선택하신 댓글을 삭제하시겠습니까?")){
			location.href("deleteReply.do?rno=" + rno + "&bno=" + bno);

		}		
	}
	
	function recommandReply(rno, bno){
		if(confirm("선택하신 댓글을 추천하시겠습니까?")){
			location.href("recommandReply.do?rno=" + rno + "&bno=" + bno);	
		}		
	}
	
	function moveAction(where){
		switch (where) {
		case 1:
			if(confirm("글을 삭제하시겠습니까?")){
				location.href ="delete.do?bno=${board.bno}";
			}
			break;

		case 2:
			if(confirm("글을 수정하시겠습니까?")){
				location.href = "modify.do?bno=${board.bno}";
			}
			break;
			
		case 3:
			location.href = "list.do";			
			break;
			
		case 4:
			if(confirm("글을 추천하시겠습니까?")){
				location.href = "recommend.do?bno=${board.bno}";
			}
			break;
		}
	}
</script>
</head>
<body onload="errCodeCheck()">
<div class="container">	
	<table class="table table-striped">
		<tr>
			<th style="font-size:13px;">${board.title}</th>
		</tr>
		<tr>
			<th>글번호 ${board.bno} &nbsp&nbsp조회수 ${board.viewcnt} &nbsp&nbsp${board.regDate}</th>
		</tr>
		<tbody style=" text-align: left;">
		</tbody>
		
		<tr>
			<td colspan="4" align="left"><p>${board.content}</p><br /><br />
			<c:if test="${board.writerId != userId}">
				  <p align="center" > <a href="#" onclick="moveAction(4)"><small style="color:red" >추천 </small></a><span><small style="color:red" >${board.recommendcnt}</small></span> </p>
			</c:if>	
			
			</td>
		</tr>
		
		<tr>
			
			<td align="left" style="padding-left: 0px;padding-right: 0px;">첨부파일
		<!--	<td align="left" > -->
				<c:forEach var="file" items="${fileList}">
			         <a href="filedown.do?fileName=${file.ofilename}" class="fileview"><font size="2px">${file.ofilename}</font>
			         <font size="2px">(${file.filesize} byte)</font><br> </a> 
			    </c:forEach>
			    <c:if test="${empty fileList}">
			         <font color="#A6A6A6" size="2px"> 첨부된 파일이 없습니다. </font>
			    </c:if>
			</td>
		</tr>		
	</table>
	 
	<table class="commentView" >
		<tr><th style="background-color: #EAEAEA;" colspan="2" align="left">댓글</th>	</tr>		
		<c:forEach var="comment" items="${replyList}">
		<tr>
			<td class="writer">				
				<p>${comment.writerId}</p>
				<c:if test="${comment.writerId == userId}">
					<br><a href="/bbs/board/deleteReply.do?rno=${comment.rno}&bno=${comment.bno}" onclick="replyDelete(${comment.rno}, ${comment.bno})"><small style="color:red">삭제</small></a>				
				</c:if>
				</p>
			</td>
			<td class="content" align="left">
				<span class="date">${comment.regDate}</span>
				<p>${comment.content}</p>
				<c:if test="${comment.writerId != userId}">
				  <!--<p align="center" > <a href="/bbs/board/recommandReply.do?rno=${comment.rno}&bno=${comment.bno}" onclick="recommandReply(${comment.rno}, ${comment.bno})"><small style="color:red" >추천 ${comment.recommendcnt}</small></a> 
				  <span><small style="color:red" >${message}</small></span></p>-->
				</c:if>	
				
			</td>

		</tr>
		</c:forEach>
		<tr>
			<td class="writer"><strong>댓글 쓰기</strong></td>
			<td class="content">
				<form action="writeReply.do" method="post">
					<input type="hidden" id="writer" name="writer" value="${userName}" />
					<input type="hidden" id="writerId" name="writerId" value="${userId}" />
					<input type="hidden" id="bno" name="bno" value="${board.bno}" />
					<textarea id="content" name="content" class="commentForm"></textarea>
					<input type="submit" value="확인" class="commentBt" />
				</form>
			</td>
		</tr>
	</table>
	
	<br />
	<c:choose>
		<c:when test="${board.writerId == userId}">
			<input type="button" value="삭제" class="writeBt" onclick="moveAction(1)" />
		<!-- 	<input type="button" value="수정" class="writeBt" onclick="moveAction(2)" />-->
			<input type="button" value="목록" class="writeBt" onclick="moveAction(3)" />
		</c:when>
		<c:otherwise>
			<input type="button" value="목록" class="writeBt" onclick="moveAction(3)" />
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>