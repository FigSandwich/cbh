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

<form action="customer.do">
<div style="width:100%; height: 390px;">	
<table class="table table-hober" border="0">
<tbody>
									<tr>
										<th>E-mail</th>
										<th>문의내용</th>
									</tr>

									<c:if test="${!empty CustomerVO }">


										<c:forEach var="cus" items="${CustomerVO}">
											<tr>
												<td>${cus.name}</td>
												<td>${cus.memo}</td>
											</tr>

										</c:forEach>
									</c:if>


								</tbody>
		
	</table>
</div>

</form>
</div>



</body>
</html>