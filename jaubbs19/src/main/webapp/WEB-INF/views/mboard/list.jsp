<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<script type="text/javascript">
	function selectedOptionCheck() {
		$("#type > option[value=${param.type}]").attr("selected", "true");
	}

	function moveAction(where) {
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
<body style="background-color:#EAEAEA">
	<div class="container">
		<table class="table table-striped" border="0"
			style="border-bottom: none">
			<tbody>
				<c:forEach var="board" items="${boardList}">

					<tr>
						<td align="left"
							style="font-size: 13px; padding-bottom: 0px; padding-top: 2px; background-color:#EAEAEA" >글번호
							${board.bno} &nbsp 조회수 ${board.viewcnt}&nbsp 댓글수
							${board.replycnt}
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							${board.regDate}</td>
					</tr>

					<tr>
						<td align="left" class="subject"
							style="font-size: 13px; padding-top: 1px;"><c:if
								test="${board.replycnt >= 10}">
								<img
									src="${pageContext.request.contextPath}resources/img/hit.jpg" />
							</c:if> <a href="view.do?bno=${board.bno}">${board.title}</a></td>
					</tr>

				</c:forEach>

			</tbody>
		</table>
		<table>
			<form action="list.do" modelAttribute="searchVO" method="get"
				style="margin-left: -600px;">

				<div class="button button-info">
					<select id="type" name="type" class="btn btn-outline-secondary"
						style="padding-bottom: 2px; margin-right: 2px; padding-top: 2px; margin-left: 0px; padding-right: 0px; padding-left: 0px;">
						<option value="title">제목</option>
						<option value="content">내용</option>
						<option value="writerId">작성자</option>
					</select> <input type="text" id="keyword" name="keyword"
						style="padding-bottom: 0px; value =; padding-top: 0px; margin-bottom: 10px; border-bottom-width: 2px; border-top-width: 2px; width: 100px;"
						value="<%if (request.getParameter("keyword") != null) {
				out.print(request.getParameter("keyword"));
			} else {
				out.print("");
			}%>" />
					<input type="submit" class="btn btn-outline-secondary"
						style="padding-top: 2px; padding-bottom: 2px; padding-left: 11px;"
						" value="검색" /> <input type="button"
						class="btn btn-outline-secondary" value="목록" class="writeBt"
						onclick="moveAction(2)" style="margin-left: 90px;" /> <input
						type="button" class="btn btn-outline-secondary" value="쓰기"
						class="writeBt" onclick="moveAction(1)" />
				</div>
			</form>
		</table>
	</div>






</body>
</html>