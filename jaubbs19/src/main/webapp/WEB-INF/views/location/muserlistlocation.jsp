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
	<div class="container" style="padding-top: 70px;">

		<form action="userlist.do">
			<div
				style="overflow: scroll; width: 100%; height: 150px; overflow-x: hidden;">
				<table class="table table-hober" border="0">
					<tbody>

						<c:if test="${!empty location }">


							<c:forEach var="loc" items="${Location}">

								<tr>
									<th>수신시간</th>
									<th>기기번호</th>
								</tr>

								<tr>
									<td>${loc.time}</td>
									<td>${loc.dev_no}</td>
								</tr>

								<tr>
									<th>위도, 경도</th>
									<th>위치조회</th>
								</tr>

								<tr>
									<td>${loc.lat},${loc.lon}</td>
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
			<div class="container-fluid"
				style="text-align: center; margin-top: 15px;">
				<div style="float: right;">
					<a onclick="polyline.setMap(map)">선 생성&nbsp</a> <a
						onclick="polyline.setMap(null)">선 숨기기&nbsp</a> <a
						onclick="hideMarkers()">모든 마커 삭제</a>
				</div>
				<!-- 지도를 표시할 div 입니다 -->
				<div id="map" style="width: 100%; height: 450px;"></div>
				<!-- 
							<p>
								<a onclick="polyline.setMap(map)"> 선 생성</a>
							</p>
							<p>
								<a onclick="polyline.setMap(null)"> 선 숨기기</a>
							</p>
							<p>
								<a onclick="setMarkers(null)">모든 마커 숨기기</a>
							</p>
							
							
							<br>

-->
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
			<br>

		</form>
	</div>



</body>
</html>