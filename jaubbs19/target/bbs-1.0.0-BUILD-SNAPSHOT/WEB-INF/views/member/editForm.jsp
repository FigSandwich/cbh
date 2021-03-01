<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<HTML>
<HEAD>
<TITLE> 회원 정보 수정 </TITLE> 

<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<META http-equiv="Content-Type" content="text/html; charset=utf-8">
   
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function DaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {

                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                if(data.userSelectedType === 'R'){

                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
  
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('addr1').value = fullAddr;

                document.getElementById('addr2').value = "";
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('addr2').focus();
            }
        }).open();
    }
</script>
</HEAD>

<BODY>
<br>
<center><font size='3'><b> 회원정보 수정 </b></font>  
<hr size='1' noshade width='600' align="center">

	<spring:hasBindErrors name="user">
		<c:forEach items="${errors.globalErrors}"
			var="error">
			<spring:message code="${error.code}" />
		</c:forEach> </font>
	</spring:hasBindErrors>
<br>
<form:form modelAttribute="userVO" Name='joinForm' Method='post' Action='/bbs/member/edit.do'>

<TABLE  border='2' width='600'  cellSpacing=0 cellPadding=5 align=center>
<TR>
	<TD bgcolor='cccccc' width='100' align='center'>
		<font size='2'>아 이 디</font>
	</TD>
	<TD bgcolor='cccccc'>
		<form:input path="userId" maxLength='20' size='10' cssClass="userId" readonly='true' />
		<span class="fieldError"><form:errors path="userId" /></span>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>비 밀 번 호</font>
	</TD>
	<TD bgcolor='cccccc'>
		<form:password path="passwd" maxlength="20" cssClass="password"  size='10' showPassword="false" />
		<span class="fieldError"><form:errors path="passwd" /></span>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>비밀번호확인</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type="password" name="pass2" maxlength="20" cssClass="password"  size='10' value="" showPassword="true" />
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>이 름</font>
	</TD>
	<TD bgcolor='cccccc'>
		<form:input path="name" maxlength="20" cssClass="name" size='10' readonly='true' />
		<span class="fieldError"><form:errors path="name" /></span>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'><font size='2'>주민번호</font></TD>
	<TD bgcolor='cccccc'>
		<form:input type='text' path="jumin" maxlength="20" cssClass="name" size='13' readonly='true' />
		<span class="fieldError">*-없이 번호만 입력하세요</span>
	</TD>
</TR>

<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>E - M a i l</font>
	</TD>
	<TD bgcolor='cccccc'>
		<form:input type='text' maxlength='50' size='50' path='email' />
		<span class="fieldError" ><form:errors path="email" /></span>
	</TD>
</TR>
</TABLE>

<br>
<hr size='1' noshade width='600' align="center">

<TABLE>
<TR><TD colspan='2' align='center'><input type='submit' value='수정'></TD></TR>
</TABLE>

</form:form>

</BODY>
</HTML>