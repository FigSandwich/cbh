<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>list</title>


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

<script>
    on.click(); 
</script>

<style>
.table-box-wrap {
	position: relative;
    margin-top: 20px;
    padding-top: 40px;
}
.table-box-wrap .table-box {
    max-height: 150px;
    overflow: auto;
    overflow-x: hidden;
}
.table-box-wrap .table-box table {
    width: 1100px;
    table-layout: fixed;
    border-spacing: 0;
    border-collapse: collapse;
}
.table-box-wrap .table-box table thead tr {
    position: absolute;
    top: 0;
}

.table-box-wrap .table-box table td {
    text-align: left;
    height: 40px;
}

.table-box-wrap .table-box table tr {
    display: inline-table;
    width: 1100px;
    table-layout: fixed;
}

.table-box-wrap .table-box table tbody tr {
   display: table-row;
}

</style>

</head>
<body onload="javascript:markertTest(${loc.lat},${loc.lon})">

	<nav class="navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand">컴백홈</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li style="margin-top: 4px;"><a
						href="../location/location_list.do?dev_no=${dev_no}">위치조회</a></li>
					<li style="right: -631px; font-color: #FFFFFF; font-size: 18px;"><a>${userName}님
					</a></li>
					<li
						style="right: -608px; font-size: 13px; padding-top: 1px; margin-top: -4px;"><a
						href="/bbs/member/mypage.do?userId=${userId}"><input
							type='button' class="btn btn-outline-primary"
							style="background-color: #FFFFFF;" value='내정보'></a></li>
					<li
						style="right: -608px; font-size: 13px; padding-top: 1px; margin-top: -4px; margin-left: -24px;"><a
						href="../member/logout.do"><input type='button'
							class="btn btn-outline-primary"
							style="background-color: #FFFFFF;" value='로그아웃'></a></li>
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


	<div class="container-fluid" style="background: #EAEAEA">


		<div style="background: #EAEAEA" class="col-sm-12 col-md-12">
			<div class="container">
				<div class="thumbnail" style="background: #EAEAEA">
					<div class="caption">

						<div class="table-box-wrap">
						<div class="table-box">
							<table class="table table-bordered table-hover sticky-header">
								<thead>
									<tr>
										<th>기기번호</th>
										<th>위도</th>
										<th>경도</th>
										<th>수신시간</th>
										<th>위치조회</th>
									</tr>
								</thead>								
								<tbody>
									<c:if test="${!empty location }">
										<c:forEach var="loc" items="${Location}">


											<tr>
												<td>${loc.dev_no}</td>
												<td>${loc.lat}</td>
												<td>${loc.lon}</td>
												<td>${loc.time}</td>

												<td><a
													onclick="javascript:markertTest(${loc.lat},${loc.lon})">조회</a>
													<!--  <a onclick="javascript:markertTest(${loc.lat},${loc.lon})" onclick="polyline.setMap(map)">마커생성</a>-->
												</td>
											</tr>

										</c:forEach>
									</c:if>
								</tbody>
							</table>
							</div>
						</div>
						<div class="container-fluid"
							style="text-align: center; margin-top: 15px;">
							<div style="float: right;">
								<a onclick="polyline.setMap(map)">선 생성&nbsp</a> <a
									onclick="polyline.setMap(null)">선 숨기기&nbsp</a> <a
									onclick="hideMarkers()">모든 마커 삭제</a>
							</div>
							<!-- 지도를 표시할 div 입니다 -->
							<div id="map" style="width: 100%; height: 670px;"></div>

							<p>
								<!-- <a onclick="polyline.setMap(map)"> 선 생성</a>-->
								<!--<a onclick="polyline.setMap(null)"> 선 숨기기</a><a onclick="setMarkers(null)">모든 마커 숨기기</a>-->
							</p>

							<br>

							<script>
							<!-- 위도와 경도를 받아올 배열 생성-->
							var Newlat= new Array();
							var Newlon= new Array();
							
							<!-- 위도와 경도 배열에 기입-->
							<c:forEach var="loc" items="${Location}">	
							Newlat.push(${loc.lat});
							Newlon.push(${loc.lon});
							</c:forEach>
							
							<!-- 지도생성-->
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center : new kakao.maps.LatLng(Newlat[Newlat.length - 1],Newlon[Newlon.length - 1]), // 지도의 중심좌표
									level : 3
								// 지도의 확대 레벨
								};		

								var map = new kakao.maps.Map(mapContainer,
					                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            					mapOption); // 지도를 생성합니다
								
										kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
										    // 클릭한 위치에 마커를 표시합니다 
										    addMarker(mouseEvent.LatLng(
													m1, m2));             
										});
										
										var markers = [];

										<!-- 마커 생성-->
										function markertTest(m1, m2) {
									// 마커가 표시될 위치입니다 
									var markerPosition = new kakao.maps.LatLng(
											m1, m2);

									// 마커를 생성합니다
									var marker = new kakao.maps.Marker({
										position : markerPosition
									});

									// 마커가 지도 위에 표시되도록 설정합니다
									marker.setMap(map);
									
									markers.push(marker);
								}
								
								<!-- 마커를 여러개 생성하기위한 메소드-->
								function setMarkers(map) {
								    for (var i = 0; i < markers.length; i++) {
								        markers[i].setMap(map);
								    }            
								}

								// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
								function hideMarkers() {
								    setMarkers(null);    
								}
								
								
								
								var iwContent = '<div style="padding:5px;">최종위치</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
							    iwPosition = new kakao.maps.LatLng(Newlat[Newlat.length - 1],Newlon[Newlon.length - 1]), //인포윈도우 표시 위치입니다
							    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

							// 인포윈도우를 생성하고 지도에 표시합니다
							var infowindow = new kakao.maps.InfoWindow({
							    map: map, // 인포윈도우가 표시될 지도
							    position : iwPosition, 
							    content : iwContent,
							    removable : iwRemoveable
							});
								
								
								
								
								// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다		
								var linePath = [
									<c:forEach var="loc" items="${Location}">	
								    new kakao.maps.LatLng(${loc.lat}, ${loc.lon}),
								    </c:forEach>			   
								];
								

								// 지도에 표시할 선을 생성합니다
								var polyline = new kakao.maps.Polyline({
								    path: linePath, // 선을 구성하는 좌표배열 입니다
								    strokeWeight: 5, // 선의 두께 입니다
								    strokeColor: '#FFAE00', // 선의 색깔입니다
								    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
								    strokeStyle: 'solid' // 선의 스타일입니다
								});
								
								var positions = [
								    {
								        title: '카카오', 
								        latlng: new kakao.maps.LatLng(Newlat[Newlat.length - 1],Newlon[Newlon.length - 1])
								    }
								];
								
							/*
								// 마커 이미지의 이미지 주소입니다
								var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
								    
								for (var i = 0; i < positions.length; i ++) {
								    
								    // 마커 이미지의 이미지 크기 입니다
								    var imageSize = new kakao.maps.Size(24, 35); 
								    
								    // 마커 이미지를 생성합니다    
								    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
								    
								    // 마커를 생성합니다
								    var marker = new kakao.maps.Marker({
								        map: map, // 마커를 표시할 지도
								        position: positions[i].latlng, // 마커를 표시할 위치
								        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
								        image : markerImage // 마커 이미지 
								    });
								}
							*/	
								
								
							</script>




						</div>


					</div>
				</div>
			</div>
		</div>





	</div>

	<script>
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		})
	</script>

	<script src="https://code.jquery.com/jquery-1.12.4.min.js"
		integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
		crossorigin="anonymous"></script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>




</body>
</html>