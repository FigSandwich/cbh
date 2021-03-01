<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DressFi 이용 약관</title>
<style>
#hr {
	display: block;
	margin-top: 0.5em;
	margin-left: auto;
	margin-right: auto;
	border-style: inset;
	border-width: 1px;
}

.navbar img {
	width: 24px;
	height: 24px;
}

.form-inline {
	font-size: 0.813rem;
}

.form-inline a:hover { /*클릭하지 않은 링크*/
	text-decoration: none;
}

.verticalScroll {
	width: 100%;
	height: 600px;
	overflow: hidden;
	overflow-y: scroll;
}

img {
	width: 0 auto;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/profile.css">
<!-- 구글 icon -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<header class="header bg-light">
		<nav class="navbar sticky-top navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand mb-0 h1" href="/dressfi/">
					<img src="resources/images/svg/clothing-hanger.svg" class="d-inline-block align-top" alt="logo">
					<span class="d-inline-block align-bottom">DressFi</span>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="nbd_1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Professional</a>
							<div class="dropdown-menu" aria-labelledby="nbd_1">
								<a class="dropdown-item" href="design.do">디자이너</a>
								<a class="dropdown-item" href="#">공장</a>
								<a class="dropdown-item" href="#">도소매</a>
								<a class="dropdown-item" href="#">원단&부자재</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="nbd_2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Community</a>
							<div class="dropdown-menu" aria-labelledby="nbd_2">
								<a class="dropdown-item" href="knowhow.do">노하우</a>
								<a class="dropdown-item" href="relatedsite.do">관련사이트</a>
								<a class="dropdown-item" href="qanda.do">Q&A</a>
								<a class="dropdown-item" href="notice.do">공지사항</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="nbd_3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">My
								Page</a>
							<div class="dropdown-menu" aria-labelledby="nbd_3">
								<a class="dropdown-item" href="profile.do">프로필</a>
								<a class="dropdown-item" href="#">제안서</a>
								<a class="dropdown-item" href="#">메신저</a>
							</div>
						</li>
					</ul>
					<form class="form-inline my-2 my-lg-0">
						<a class="text-secondary mr-2" href="join.do">
							<i class="fas fa-user-alt"></i> 회원가입 |
						</a>
						<a class="text-secondary mr-2" href="login.do">
							<i class="fas fa-lock"></i> 로그인
						</a>
					</form>
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav>
	</header>
	<section class="container my-2">
		<div class="border border-dark py-5 px-2">
			<p class="pl-3 font-weight-bold">DressFi 서비스 이용 약관</p>
			<div class="col-12">
				<p>제 1조 (목적) 오늘의집 서비스 이용약관(이하 “약관”이라 합니다)은 주식회사 버킷플레이스(이하 “회사”라 합니다)가 제공하는 서비스와 관련하여 회사와 이용 고객(또는 회원) 간에 서비스의 이용 조건 및 절차, 회사와 회원 간의 권리, 의무 및
					책임 사항 기타 필요한 사항을 규정함을 목적으로 합니다.</p>

				<p>제 2조 (용어) 본 약관에서 사용하는 용어의 정의는 다음 각 호와 같으며, 정의되지 않은 용어에 대한 해석은 관계법령 및 서비스별 안내에서 정하는 바에 따릅니다.</p>
				<ol>
					<li>DressFi 서비스(이하 “서비스”라 합니다): 이용 고객 또는 회원이 PC, 휴대형 단말기, 태블릿PC 등 각종 유무선 기기 또는 프로그램을 통하여 이용할 수 있도록 회사가 제공하는 인테리어 관련 컨텐츠 및 전문가 큐레이션 서비스, SNS
						및 그 외 관련된 서비스를 말합니다.</li>
					<li>회원: 회사의 서비스에 접속하여 본 약관에 동의하고 ID와 liASSWORD를 발급 받았으며 회사가 제공하는 서비스를 이용하는 고객을 포괄적으로 의미합니다.</li>
					<li>전문가: 인테리어 관련 서비스나 제품을 판매하는 직종에 종사하는 회원 중 회사가 지정한 절차 및 검수를 마치고 해당 회원의 서비스와 제품에 대한 정보 및 상담을 제공할 수 있는 회원을 의미합니다. 본 약관에서 별도로 전문가를 언급하지 않는
						경우에는 모든 약관의 조항들이 전문가에게도 회원과 동일하게 적용됩니다.</li>
					<li>회원정보: 회사가 가입신청자에게 회원가입 신청양식(이하 “신청양식"이라 합니다)에 기재를 요청하는 가입신청자의 개인정보와 회원의 식별과 서비스 이용을 위하여 회원이 입력하고 서비스 내 공개된 개인정보를 의미합니다.</li>
					<li>전문가 정보: 전문가가 되기 위해 회사가 지정한 절차 및 검수 과정에서 기재하는 전문가의 정보를 의미합니다.</li>
					<li>ID(고유번호): 회원 식별과 회원의 본 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자와 숫자의 조합을 말합니다. 본 서비스에서는 E-mail 주소를 ID로 사용합니다.</li>
					<li>liASSWORD(비밀번호): 회원의 정보 보호를 위해 회원 자신이 설정한 문자와 숫자의 조합을 말합니다.</li>
					<li>게시물: 회원이 회사가 제공하는 서비스에 게시 또는 등록하는 부호(URL 포함), 문자, 음성, 음향, 영상(동영상 포함), 이미지(사진 포함), 파일 등 일체의 정보를 말합니다.</li>
				</ol>

				<p>제3조 (약관의 효력 및 변경)</p>
				<ol>
					<li>본 약관은 회원이 쉽게 알 수 있도록 서비스 내 또는 연결화면을 통하여 게시하거나 기타의 방법으로 회원에게 공지함으로써 효력이 발생합니다.</li>
					<li>회사는 약관의 규제에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관계법령에 위배되지 않는 범위 내에서 본 약관을 개정할 수 있습니다.</li>
					<li>회사는 약관을 개정할 경우 그 개정이유 및 적용일자를 명시하여 현행 약관과 함께 적용일자 7일전부터 적용일 전일까지 제1항의 방법으로 공지합니다. 다만, 회원의 권리 또는 의무에 관한 중요한 규정의 변경은 최소한 30일전에 공지하고 개정약관을
						회원이 등록한 E-mail로 발송하여 통지합니다.</li>
					<li>회사가 제3항에 따라 개정약관을 공지 또는 통지하였음에도 불구하고 회원이 명시적으로 거부의사를 표시하지 아니하는 경우 회원이 개정약관에 동의한 것으로 봅니다.</li>
					<li>회원은 변경된 약관에 동의하지 아니하는 경우 서비스의 이용을 중단하고 이용계약을 해지할 수 있습니다.</li>
					<li>본 약관에 동의하는 것은 서비스를 정기적으로 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못하여 발생하는 회원의 피해에 대하여 회사는 책임을 지지 않습니다.</li>
				</ol>
				<p>제4조 (약관 외 준칙) 본 약관에 명시되지 않은 사항에 대해서는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 약관의 규제에 관한 법률, 전기통신사업법 등 관계법령 및 회사가 정한 서비스의 세부이용지침 등의 규정에 따릅니다.</p>

				<p>제5조 (이용계약의 성립)</p>
				<ol>
					<li>서비스 이용계약은 회사가 정한 가입 양식에 따라 회원정보(전자우편주소, 비밀번호, 별명 등)를 기입하여 회원가입신청을 하고 회사가 이러한 신청에 대하여 승인함으로써 체결됩니다.</li>
					<li>전문가 전환의 경우에는 인테리어 관련 서비스나 제품을 판매하는 직종에 종사하는 회원이 회사가 정한 절차에 따라 정보를 기입하여 전문가 전환 신청을 하고 회사가 해당 전문가 전환 신청을 승인하면 전문가로서 서비스를 이용할 수 있습니다.</li>
					<li>가입신청자가 회원정보를 제출하는 것은 회원가입 화면에 노출되어 있는 본 약관 및 개인정보취급방침의 내용을 숙지하고, 회사가 서비스 이용을 위해 운영하는 각종 정책(저작권 정책, 운영 방침 등)과 수시로 공지하는 사항을 준수하는 것에 대해
						동의하는 것으로 봅니다.</li>
				</ol>

				<p>제6조 (이용신청에 대한 승낙 및 제한)</p>
				<ol>
					<li>회사는 서비스의 이용을 신청한 가입신청자에 대하여 업무상ㆍ기술상 지장이 없는 한 접수순서에 따라 서비스의 이용을 승낙합니다.
					<li>타인의 개인정보를 도용하는 등 부정한 목적 또는 방법으로 이용신청을 한 회원의 ID는 사전 통지 없이 이용 계약이 해지될 수 있으며, 당해 회원은 관계법령에 따라 처벌을 받을 수 있습니다.
					<li>
						회사는 다음 각 호에 해당하는 이용신청에 대하여는 승낙을 하지 않을 수 있습니다.
						<ul>
							<li>기술상 서비스 제공이 불가능한 경우</li>
							<li>신청양식의 기재사항을 누락하거나 오기하여 신청하는 경우</li>
							<li>사회의 안녕질서 또는 미풍양속을 저해하거나 저해할 목적으로 신청한 경우</li>
							<li>회원의 귀책사유에 의하여 회원자격을 상실한 적이 있는 경우. 다만, 자격상실 이후 6개월 이상 경과한 자로 회사의 회원 재가입 승낙을 받은 경우는 예외로 합니다.</li>
							<li>기타 회사가 정한 이용요건에 충족되지 않았을 경우</li>
						</ul>
					<li>회사는 서비스를 이용하는 회원에 대하여 회원의 종류 및 등급별로 구분하여 이용시간, 이용회수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.</li>
					<li>회사는 전문가 전환을 신청한 회원에 대하여 회사의 업무상ㆍ기술상 또는 서비스 운영정책상 전문가 전환 신청을 승낙하지 않을 수 있습니다.</li>
				</ol>

				<p>제7조 (회원정보의 변경)</p>
				<ol>
					<li>회원은 서비스를 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다.</li>
					<li>회원은 서비스를 이용하면서 회사에 제출한 회원정보가 변경되었을 경우 개인정보 설정 화면에서 회원정보를 수정하거나 고객센터를 통하여 회사에 변경 사항을 통지하여야 합니다.</li>
					<li>회원정보를 수정하지 않음으로 인하여 발생하는 모든 책임은 회원에게 있습니다.</li>
					<li>전문가가 회사에 제출한 전문가 정보를 변경했을 경우, 회사가 실시하는 변경된 정보에 대해 검수를 통과해야만 변경된 정보가 서비스에 반영됩니다.</li>
				</ol>

				<p>제8조 (서비스의 이용)</p>
				<ol>
					<li>회사는 회원의 이용신청을 승낙한 때부터 서비스를 개시합니다.</li>
					<li>회사의 업무상ㆍ기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 서비스에 공지하거나 회원에게 이를 통지합니다.</li>
					<li>서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 회사의 업무상ㆍ기술상 또는 서비스 운영정책상 서비스가 일시 중지될 수 있습니다. 이러한 경우 회사는 사전 또는 사후에 이를 공지합니다.</li>
					<li>회사는 서비스를 일정범위로 분할하여 각 범위 별로 이용 가능한 시간을 별도로 정할 수 있으며 이 경우 그 내용을 공지합니다.</li>
					<li>회사는 서비스 내의 개별서비스에 대한 별도의 약관을 둘 수 있으며, 개별서비스에서 별도로 적용되는 약관에 대한 동의는 회원이 개별서비스를 최초로 이용할 경우 별도의 동의절차를 거치게 됩니다.</li>
				</ol>

				<p>제9조 (서비스의 변경 및 중지)</p>
				<ol>
					<li>회사는 서비스(개별서비스 포함)를 변경하여야 하는 상당한 이유가 있는 경우 변경될 서비스의 내용 및 제공일자를 제15조에서 정한 방법으로 회원에게 통지하고 서비스를 변경하여 제공할 수 있습니다.</li>
					<li>
						회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
						<ul>
							<li>서비스용 설비의 보수 등 공사로 인한 부득이한 경우</li>
							<li>회원이 회사의 영업활동을 방해하는 경우</li>
							<li>정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우</li>
							<li>제휴업체(BP)와의 계약종료 등과 같은 회사의 제반 사정으로 서비스를 유지할 수 없는 경우</li>
							<li>기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우</li>
						</ul>
					</li>
				</ol>
			</div>
			<button type="submit" class="btn btn-secondary btn-md float-right" onclick="location.href='join.jsp';">
				<i class="fas fa-redo-alt"></i> 이전
			</button>
		</div>
	</section>

</body>
</html>