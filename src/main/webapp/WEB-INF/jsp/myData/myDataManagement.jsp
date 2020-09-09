<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SGIS pro</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/commonDataFunc.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/myData/myDataManagement.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="/css/body/body.css" /> -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mypage/mypage.css" />

<!-- mng_s 2019. 06. 03 j.h.Seok -->
<script>
	$(document).ready(
		function() {
			$log.srvLogWrite("Z0", "03", "02", "01", "", "");
	});
</script>
<!-- mng_e 2019. 06. 03 j.h.Seok -->
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>
	<!-- sgis 전송 팝업 임시 수정 -->
	<input type="hidden" name="search_standard" id="search_standard" value="${search_standard}" />	
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<p class="home">데이터 분석 ></p>
				<h1>데이터 생성 및 관리</h1>
				<h2>SGIS pro에서 활용 가능한 데이터를 생성하고 관리할 수 있습니다. <a href="javascript:void(0)" class="btnUpload">사용자데이터 업로드 하기</a></h2>
				 
			</div>
		</div>

		<div class="container">

			<div class="dataSearch">
				<div class="dsRoundBox">
					<select class="select01" id="standard">
						<option value="all">전체조회</option>
						<option value="userData">원본 데이터</option>
						<option value="geoCoding">위치 데이터</option>
						<option value="analysis">분석 데이터</option>
						<option value="inst_share_yn">공유 데이터</option>
						<option value="fav_yn">즐겨찾기 데이터</option>
						<!-- <option value="analysis">데이터 분석 이력</option> -->
						<!-- <option>그룹에 공유한 나의 데이터</option>
						<option>SGIS로 전송한 데이터</option> -->
					</select> 
					<input type="text" class="inp" id="seachWord"/> 
					<a href="javascript:void(0)" id="searchButton">
					<img src="${pageContext.request.contextPath}/img/common/btn_search01.png" /></a>
				</div>

				<select class="select" id="cntSelectBox">
					<option value="6">6개 보기</option>
					<option value="10">10개 보기</option>
					<option value="20">20개 보기</option>
					<option value="30">30개 보기</option>
				</select>
				<div class="side">
					<span>선택된 데이터 관리</span> 
					<a href="javascript:void(0)" id="copyButton">복사하기</a> 
					<a href="javascript:void(0)" id="downLoadButton">다운로드</a> 
					<a href="javascript:void(0)" id="deleteButton">삭제하기</a>
				</div>
			</div>

			<ul class="mydataList" id="myDataList">
				
			</ul>
			<div class="dataEmpty" id="myDataEmpty" style="display:none;" >
				<span>등록된 데이터가 없습니다.</span> 
			</div>
			
		</div>

		<div id="myDataPage" class="pageArea"></div>
		<div id="standardZone" style="display:none">
			<input type="text" id="searchIdx">
			<input type="text" id="endIdx">
			<input type="text" id="currentPage">
			<input type="text" id="startStandard">
			<input type="text" id="startSearchWord">
		</div>
	</div>
	
	<!-- commonDataView -->
	<jsp:include page="/view/common/commonDataView"></jsp:include>
	
	<!-- footer -->
	<jsp:include page="/view/common/includeFooter"></jsp:include>
</body>
</html>