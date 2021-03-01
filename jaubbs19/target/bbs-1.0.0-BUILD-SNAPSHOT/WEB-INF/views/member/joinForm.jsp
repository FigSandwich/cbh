<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<HTML>
<HEAD>
<TITLE> 회원 등록 </TITLE> 
<META http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
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
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('addr1').value = fullAddr;//기본주소 
                document.getElementById('addr2').value = ""; //상세주소 클리어
               
                document.getElementById('addr2').focus(); // 커서를 상세주소 필드로 이동한다.
            }
        }).open();
    }
    
    
</script>
<script type="text/javascript">
	function checkErrCode(){
		var errCode = ${errCode};
		if(errCode != null || errCode != ""){
			switch (errCode) {
			case 1:
				alert("등록되지않은 아이디입니다!");
				break;
			case 2:
				alert("아이디나 비밀번호가 입력되지않았습니다.");
				break;
			case 3:
				alert("회원가입 처리가 완료되었습니다! 로그인 해 주세요!");
				location.href = "<%=request.getContextPath()%>/login.do";
				break;	
			case 4:
				alert("비밀번호가 일치하지 않습니다!");
				break;
			case 5:
				alert("회원 등록에 실패 하였습니다!");
				break;
			}
			
		}
	}
</script>

<SCRIPT>  
function Check_id() 
{
   if (joinForm.userId.value.length < 1){
		alert("아이디를 입력하세요.");
		joinForm.userId.focus();
		return false;
   }
   
   var loc = '/bbs/member/checkid.do?userId='+joinForm.userId.value
   location.href = loc ;
}

function Check_Dup() 
{
	if (joinForm.re_id.value != "1"){ 
	    alert ("중복확인을 클릭하여 주세요.");
	    joinForm.userId.value="";
	    joinForm.userId.focus();
	    return false;
	}
	if (joinForm.passwd.value == ""){ 
	    alert ("패스워드를 입력하여 주세요.");
	    joinForm.passwd.value="";
	    joinForm.passwd.focus();
	    return false;
	}
	if (joinForm.passwd.value != joinForm.pass2.value){ 
	    alert ("패스워드가 일치하지않습니다.");
	    joinForm.passwd.value="";
	    joinForm.pass2.value="";
	    joinForm.passwd.focus();
	    return false;
	}
	if (joinForm.name.value == ""){ 
	    alert ("이름을 입력하여 주세요.");
	    joinForm.name.value="";
	    joinForm.name.focus();
	    return false;
	}
	if (joinForm.jumin.value == ""){ 
	    alert ("주민번호를 입력하여 주세요.");
	    joinForm.jumin.value="";
	    joinForm.jumin.focus();
	    return false;
	}
	if (joinForm.email.value == ""){ 
	    alert ("email을 입력하여 주세요.");
	    joinForm.email.value="";
	    joinForm.email.focus();
	    return false;
	}
	
	return true;
}
</SCRIPT>     
</HEAD>

<BODY  onload="checkErrCode()">
<br><br>
<center><font size='3'><b> 회원 가입 </b></font>  
<TABLE border='0' width='700' cellpadding='0' cellspacing='0'>
<TR>
     <TD><hr size='1' noshade></TD>
</TR>
</TABLE><br>

<form:form modelAttribute="userVO" Name='joinForm' Method='post' Action='/bbs/member/join.do' onsubmit='return Check_Dup()'>

<TABLE  border='2' width='600'  cellSpacing=0 cellPadding=5 align=center>
<TR>
	<TD bgcolor='cccccc' width='100' align='center'><font size='2'>아 이 디</font></TD>
	<TD bgcolor='cccccc'>
		<form:input path="userId" maxLength='20' size='10' value="${userId}" cssClass="id"  />
		<input type='button' OnClick='Check_id()' value='ID 중복검사'>
		<span class="fieldError"><form:errors path="userId" /></span><span class="fieldError"> *${message}</span>
        <input type="hidden" name="re_id" value="${reDiv}" >
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'><font size='2'>비 밀 번 호</font></TD>
	<TD bgcolor='cccccc'>
		<form:password path="passwd" maxlength="20" cssClass="password"  size='10' />
		<span class="fieldError"><form:errors path="passwd" /></span>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'><font size='2'>비밀번호확인</font></TD>
	<TD bgcolor='cccccc'>
		<input type="password" name="pass2" maxlength="20" cssClass="password"  size='10' value="" showPassword="true" />
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'><font size='2'>이 름</font></TD>
	<TD bgcolor='cccccc'>
		<form:input path="name" maxlength="20" cssClass="name" size='10' />
		<span class="fieldError"><form:errors path="name" /></span>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'><font size='2'>주민번호</font></TD>
	<TD bgcolor='cccccc'>
		<input type="password" name="jumin" maxlength="20" cssClass="name" size='13' />
		<span class="fieldError">*-없이 번호만 입력하세요</span>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'><font size='2'>E - M a i l</font></TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxlength='50' size='50' name='email'>
		<span class="fieldError"><form:errors path="email" /></span>
	</TD>
</TR>
</TABLE><br>
<TABLE border='0' width='700' cellpadding='0' cellspacing='0'>
	<TR><TD><hr size='1' noshade></TD></TR>
</TABLE>
<TABLE>
<TR><TD colspan='2' align='center'><input type='submit' value='회원가입'></TD></TR>
</TABLE>
</form:form>
</BODY>
</HTML>