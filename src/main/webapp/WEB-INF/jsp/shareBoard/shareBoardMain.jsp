<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/commonDataFunc.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/shareBoard/shareBoardMain.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shareBoard/shareBoard.css" />
	
	<!-- mng_s 2019. 06. 04 j.h.Seok -->
	<script>
		$(document).ready(
			function() {
				$log.srvLogWrite("Z0", "05", "01", "00", "", "");
		});
	</script>
	<!-- mng_e 2019. 06. 04 j.h.Seok -->
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>
	
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<p class="home">공유 게시판 ></p>
				<h1>공유 데이터</h1>
				<h2>SGIS pro에서 공유데이터 리스트를 확인 할수 있습니다.</h2>
			</div>
		</div>

		<div class="container">

			<div class="dataSearch">
				<div class="dsRoundBox">
					<select class="select01" id="standard">
						<option value="all">전체조회</option>
						<option value="userData">사용자 데이터</option>
						<option value="geoCoding">전환된 위치 데이터</option>
						<option value="analysis">분석 데이터</option>
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
				<div class="sortLink">
					<a href="javascript:$shareBoardMain.ui.doSortShareBoardList(0);" class="shareboardSort on" data-value="a">최신순</a>
					<a href="javascript:$shareBoardMain.ui.doSortShareBoardList(1);" class="shareboardSort" data-value="b">조회순</a>
					<a href="javascript:$shareBoardMain.ui.doSortShareBoardList(2);" class="shareboardSort" data-value="c">추천순</a>
					<!-- <input type="hidden" name="sortType" id="sortType" /> -->
				</div>
				<div class="side">
					<span>선택된 데이터 관리</span> 
					<a href="javascript:void(0)" id="downLoadButton">다운로드</a> 
				</div>
			</div>

			<ul class="shareboList" id="shareBoardList">
				
			</ul>
			<div class="dataEmpty" id="shareBoardEmpty" style="display:none;" >
				<span>등록된 데이터가 없습니다.</span> 
			</div>
		</div>

		<div id="shareBoardPage" class="pageArea"></div>

	</div>
	
	<div id="standardZone" style="display:none;">
		<input type="text" id="sortType" name="sortType">
		<input type="text" id="searchIdx">
		<input type="text" id="endIdx">
		<input type="text" id="currentPage">
		<input type="text" id="startStandard">
		<input type="text" id="startSearchWord">
	</div> 
	<!-- commonDataView -->
	<jsp:include page="/view/common/commonDataView"></jsp:include>
	
	<!-- footer -->
	<jsp:include page="/view/common/includeFooter"></jsp:include>
</body>
</html>