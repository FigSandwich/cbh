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


<style>
body {
	background-color: #474e5d; /* Dark Blue */
	color: #ffffff;
}
</style>
</head>
<body>
	<div class="container">

		<form action="notice.do">
			<div style="width: 100%; height: 100px;">
				<table border="0"
					style="border-right: none; border-left:none; border-top:none; border-bottom:none;">
					<tbody>
						<c:if test="${!empty NoticeVO }">
							<tr style="float:center;">
								<th style="font-color: #FFFFFF; font-size:20px; padding-bottom: 10px;">공지사항</th>
							</tr>

							<c:forEach var="no" items="${NoticeVO}">
								<tr>
									<td style="font-color: #FFFFFF;">${no.notice}</td>
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