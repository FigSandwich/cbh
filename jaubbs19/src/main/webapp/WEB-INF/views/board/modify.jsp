<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정: ${board.title}</title>
<link href="${pageContext.request.contextPath}/resources/css/board.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.7.1.js"></script>
<script type="text/javascript">
	function writeFormCheck() {
		if($("#title").val() == null || $("#title").val() == ""){
			alert("제목을 입력해 주세요!");
			$("#title").focus();
			return false;
		}
		
		if($("#content").val() == null || $("#content").val() == ""){
			alert("내용을 입력해 주세요!");
			$("#content").focus();
			return false;
		}
		
		return true;
	}
</script>
</head>
<body>
<div class="wrapper">	
	<h3>글수정</h3>
	<form action="modify.do" method="post" onsubmit="return writeFormCheck()" enctype="multipart/form-data">	
	<table class="boardWrite">	
		<tr>
			<th>제목</th>
			<td align="left">
				<input type="text" id="title" name="title" class="boardSubject" value="${board.title}"/>
				<input type="hidden" id="writer" name="writer" value="${userName}" />
				<input type="hidden" id="writerId" name="writerId" value="${userId}" />
				<input type="hidden" id="bno" name="bno" value="${board.bno}" />
			</td>			
		</tr>
		<tr>
			<th>내용</th>
			<td align="left"><textarea id="content" name="content" class="boardContent">${board.content}</textarea></td>			
		</tr>
		<tr>
			<th><label for="file">첨부파일</label></th>
			<td align="left">
				<c:forEach var="file" items="${fileList}">	     
				     <p>  <input type="checkbox" name="fileno" value="<c:out value="${file.fno}"/>">
				     <c:out value="${file.ofilename}"/> <c:out value="(${file.filesize} byte)"/><span class="date">&nbsp;&nbsp;*&nbsp; ✔-삭제</span>
				         </p> 
			    </c:forEach>
			    <c:if test="${empty fileList}">
			         <font color="#A6A6A6" size="2px"> 첨부된 파일이 없습니다. </font>
			    </c:if>
			</td>			
		</tr>	✔
	

	
		<tr>
			<th><label for="file">파일수정</label></th>
			<td align="left"><input type="file" id="file" name="file" multiple /><span class="date">&nbsp;&nbsp;*&nbsp;파일명이 변경될 수 있습니다.</span></td>			
		</tr>	

	</table>
	
	<br />
	<input type="reset" value="재작성" class="writeBt"/>
	<input type="submit" value="확인" class="writeBt"/>	
	</form>
</div>
</body>
</html>