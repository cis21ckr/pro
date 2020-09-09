<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/commonDataFunc.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/sysMgt/useinfoView.js"></script>
	
	
	<!-- mng_s 2019. 06. 04 j.h.Seok -->
	<script>
		$(document).ready(
			function() {
				//$log.srvLogWrite("Z0", "05", "01", "00", "", "");
		});
	</script>
	<!-- mng_e 2019. 06. 04 j.h.Seok -->
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>
	
  <div class="container">
    <div class="content_new">

<div class="sub-title">
	<strong class="home">시스템 운영</strong>
	<h2>이용안내</h2>
	<h3>LBDMS시스템 이용에 관련한 사항에 대하여
		확인하실 수 있습니다.</h3>
</div>
<div class="tabs">
	<ul>
		<li><a href="noticeLst">공지사항</a></li>
		<li><a href="qnaLst">Q&A</a></li>
		<li><a href="faqLst">FAQ</a></li>
		<li class="is-active"><a href="useinfoLst">이용정보</a></li>
		<!--<li><a href="popalimLst">팝업공지</a></li>-->
		<!--<li><a href="useguideLst">활용사례</a></li>-->
		<li><a href="usecopyLst">따라하기</a></li>
		<li><a href="sampleLst">샘플데이터</a></li>
		<li><a href="shareLst">공유게시판</a></li>
	</ul>
</div>
<div class="view-container">
	<div class="row">
		<div class="cols">
			<div class="col col-1">
				<div class="in-box">
					<div class="tbs2">
						<div class="tb-tit">
							이용정보 상세보기
							<div class="tit-utils">
								<div class="btn-group line">
									<button id="btnList" onclick="location.href='${pageContext.request.contextPath}/view/sysmgt/useinfoLst'" type="button">목록</button>
									<button id="btnModify" type="button">수정</button>
									<button id="btnDelete" type="button">삭제</button>
								</div>
							</div>
						</div>
						<table>
							<colgroup>
								<col style="width: 10%">
								<col style="width: 40%">
								<col style="width: 10%">
								<col style="width: 40%">
							</colgroup>
							<tbody>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
			</div></div><!-- subConentWrap end-->				

			<!-- footer -->
			<jsp:include page="/view/common/includeFooterNew"></jsp:include>			
				
</body>
</html>
