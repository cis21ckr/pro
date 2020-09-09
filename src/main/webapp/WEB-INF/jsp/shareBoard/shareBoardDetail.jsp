<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SGIS pro</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/commonDataFunc.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/shareBoard/shareBoardDetail.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shareBoard/shareBoard.css" />

<script>
 	$(document).ready(
		function() {
		 	var type = '${type}';
		 	var paramInfo = '${paramInfo}'
			$shareBoardDetail.ui.doShareBoardDetailView(type, paramInfo);
		 	
		 	// mng_s 2019. 06. 04 j.h.Seok
		 	$log.srvLogWrite("Z0", "05", "04", "00", "", "");
	 	});
 </script>

</head>
<body>

	<jsp:include page="/view/common/includeHeader"></jsp:include>
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<p class="home">공유게시판 > 공유데이터 상세보기</p>
				<h1>공유 데이터 상세보기</h1>
				<h2>공유된 데이터의 상세정보를 확인할 수 있습니다.</h2>
			</div>
		</div>
		
		<div class="container">
			<div class="viewInfoBox">
				<p class="t01 ellipsis" id="shareBoardTitle"></p>
				<p class="t02" id="shareBoardRegtime"></p>
				<div class="t03">
					<a href="javascript:$shareBoardDetail.ui.doModifyShareBoard();"  id="modifyShareBoardBtn" class="b01" style="display:none;">수정하기</a>
					<a href="javascript:$shareBoardDetail.ui.doDeleteShareBoard();"  id="deleteShareBoardBtn" class="b01" style="display:none;">삭제하기</a>
					<a href="javascript:$shareBoardDetail.ui.doRecmd();" class="b01">추천하기</a>
					<a href="javascript:$shareBoardDetail.ui.doDownload();" class="b02">다운로드</a>
				</div>
			</div>
	
			<div class="viewMapResult">
				<div class="pic">
					<img id="thumnail" src=""  onerror="this.src='${pageContext.request.contextPath}/img/common/noimage.png'" style="width:450px;height:300px;margin-left:80px;"/>
					<a href="javascript:$shareBoardDetail.ui.doAnalysisResultMap();" id="linkBtn">지도에서 결과보기</a>
				</div>
				<div class="contentArea">
					<textarea id="shareBoardContent" readonly>공유된 데이터의 상세정보를 확인할 수 있습니다.</textarea>
				</div>
			</div>
			<div class="viewInfoBox2" id="modifyArea" style="display:none;">
				<div class="t03"  >
					<a href="javascript:$shareBoardDetail.ui.doUpdateShareBoard();"  id="updateShareBoardBtn" class="b02" >등록</a>
					<a href="javascript:void();"  id="cancelShareBoardBtn" class="b01" >취소</a>
				</div>
			</div>
			
	
			<div class="tabBox"> 
				<select class="select" id="viewCntSelecBox">
					<option value="5">5개 보기</option>
					<option value="10">10개 보기</option>
					<option value="20">20개 보기</option>
				</select>
			</div>
	
			<table class="listTable01 t01" id="dataTable"></table> 
			<div id="shareBoardPage" class="pageArea"></div>
	
			<div class="replyForm">
				<input type="text" maxlength="200" placeholder="댓글을 입력해 주세요."   id="replyInput"/>
				<a href="javascript:void(0)" id="shareBoardReply">댓글 달기</a>
			</div>
			<ul class="replyList" id="replyList"></ul>
			<div id="replyPage" class="pageArea"></div>
		</div>
	</div>
	<!-- subConentWrap end-->

	<!-- footer -->
	<jsp:include page="/view/common/includeFooter"></jsp:include>
</body>
</html>