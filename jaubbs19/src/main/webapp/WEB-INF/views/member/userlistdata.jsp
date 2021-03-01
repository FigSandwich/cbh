<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">



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



</head>
<body>
<div class="container">
<form action="userlist.do">	
<table class="table table-hober" border="0">
<tbody>
								

								<c:if test="${!empty UserVO }">


									<c:forEach var="user" items="${UserVO}">
									
									<tr>
									<th>회원번호</th>
									<td>${user.mno}</td>
									</tr>
									
									<tr>
									<th>회원아이디</th>
									<td>${user.userId}</td>
									</tr>
									
									<tr>
									<th>회원비밀번호</th>
									<td>${user.passwd}</td>
									</tr>
									
									<tr>
									<th>회원이름</th>
									<td>${user.name}</td>
									</tr>
									
									<tr>
									<th>휴대전화</th>
									<td>${user.phone}</td>
									</tr>
									
									<tr>
									<th>E-mail</th>
									<td>${user.email}</td>
									</tr>
									
									<tr>
									<th>주민번호</th>
									<td>${user.jumin}</td>
									</tr>
									
									<tr>
									<th>기기번호</th>
									<td>${user.dev_no}</td>
									</tr>
									
									<tr>
									<th>보호 대상자</th>
									<td>${user.missing}</td>
									</tr>
									

									</c:forEach>
								</c:if>
								


							</tbody>
		
	</table>


</form>
</div>






</body>
</html>