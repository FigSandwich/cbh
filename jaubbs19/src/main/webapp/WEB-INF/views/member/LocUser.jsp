<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html>
<html>
<head>
<title>보호자 조회</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
.navbar {
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 5px;
}

.navbar-nav  li a:hover {
	color: #1abc9c !important;
}
</style>

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50"
	style="background: #FFFFFF">

	<nav class=" navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href=""
					style="margin-left: 0px; padding-bottom: 0px; padding-left: 21px; padding-right: 0px; padding-top: 10px;">
					<img src="${pageContext.request.contextPath}/resources/img/qr.png"
					class="d-inline-block align-baseline"
					style="width: 28px; height: 28px; background-color: #747474;">
				</a> <a class="navbar-brand"
					href="/bbs/member/LocUser.do?dev_no=${dev_no}">보호자 정보 조회</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/bbs/mboard/listhome">게시판</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<div class="container-fluid" style="background: #FFFFFF">


		<div style="background: #FFFFFF" class="col-sm-12 col-md-12">
			<div class="container" style="margin-top: 100px;">
				<div class="thumbnail"
					style="background: #EAEAEA; padding-bottom: 8px; padding-top: 8px; padding-left: 8px; padding-right: 8px;">
					<div class="caption" style="background: #FFFFFF">


						<table class="table table-bordered table table-hover"
							style="margin-top: 10px; margin-bottom: 10px;">
							<tbody>
								<c:if test="${!empty UserVO }">


									<c:forEach var="loc" items="${UserVO}">

										<tr>
											<th>보호자이름</th>
											<td>${loc.name}</td>
										</tr>


										<tr>
											<th>연락처&nbsp&nbsp</th>
											<td>${loc.phone}</td>

										</tr>

										<tr>

											<th>이메일&nbsp&nbsp</th>
											<td>${loc.email}</td>
										</tr>


										<tr>
											<th>보호
												<p style="margin-bottom: 0px;">대상자
											</th>
											<td>${loc.missing}</td>
										</tr>

										<tr>
											<th>메모</th>
											<td>${loc.memo}</td>
										</tr>

									</c:forEach>
								</c:if>


							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>





	</div>

	<footer class="footer bg-light mt-5">
		<div class="container p-auto">
			<div class="row sticky-bottom justify-content-center">
				<div>
					<p class="text-muted"></p>
				</div>
			</div>
		</div>
	</footer>


	<script>
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		})
	</script>


</body>
</html>