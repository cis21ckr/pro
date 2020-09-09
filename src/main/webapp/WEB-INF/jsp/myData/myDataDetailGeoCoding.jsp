<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SGIS pro</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/myData/myDataDetailGeoCoding.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mypage/mypage.css" />

<!-- mng_s 2019. 06. 05 j.h.Seok -->
<script>
	$(document).ready(
		function() {
			$log.srvLogWrite("Z0", "03", "02", "11", "", "");
	});
</script>
<!-- mng_e 2019. 06. 05 j.h.Seok -->
</head>
<body>
<jsp:include page="/view/common/includeHeader"></jsp:include>

<script>

	$(document).ready(function(){
		
		$myDataDetailGeoCoding.ui.model.info = JSON.parse($("#infoValue").text());
		$myDataDetailGeoCoding.ui.model.schema = "${schema}"; 
		$myDataDetailGeoCoding.ui.model.data_nm = "${data_nm}"; 
		$myDataDetailGeoCoding.ui.model.resultCnt = "${resultCnt}";
		$myDataDetailGeoCoding.ui.model.startIdx = "${startIdx}"; 
		$myDataDetailGeoCoding.ui.model.resource_id = "${resource_id}"; 
		$myDataDetailGeoCoding.ui.model.listStatus = ("${status}" == 'true'); 
		$myDataDetailGeoCoding.ui.setPosColumn();
		$myDataDetailGeoCoding.event.setUIEvent();
		
		$myDataDetailGeoCoding.request.selectResourceInfo($myDataDetailGeoCoding.ui.model.schema,
				$myDataDetailGeoCoding.ui.model.data_nm,
				$myDataDetailGeoCoding.ui.model.resource_id ,
				$myDataDetailGeoCoding.ui.model.startIdx,
				$myDataDetailGeoCoding.ui.model.resultCnt
		);
		
		
	});

</script>

<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<p class="home">나의 데이터 > 전환된 위치 데이터 상세 보기</p>
				<h1>위치 데이터 상세 보기</h1>
				<h2>전환된 위치데이터를 SGIS+ 포털 내 서비스로 전송하거나 SGIS pro의 분석 기능에 활용할 수 있습니다.</h2>
			</div>
		</div>


		<!-- contents start  -->

		<div class="container">

			<div class="viewInfoBox">
				<p class="t01" id="data_nm">데이터 명</p>
				<p class="t02" id="data_create_time">2018-07-01 14:20</p>
				<div class="t03">
					 <a href="javascript:void(0);" id="viewMap" class="b02" >지도</a>
					 <!-- <a href="javascript:void(0);" id="unionTable" class="b02" >병합</a> -->
				</div> 
				
			</div>

			
			
			<div class="barBox">
					<p class="t01">위치데이터로 변환한 결과를 확인하세요.</p>
					<p class="t03">
						위치 정보 생성 결과 : <span id="sCount"></span>/<span id="totalResultCount"></span> (위치 정보 생성률 <span id="resultPercent">100%</span>)
					</p>
				</div>
			<div class="tabBox" style="">
				<ul id="resultStatusTab">
					<li><a href="javascript:void(0)" class="on">성공 결과</a></li>
					<li><a href="javascript:void(0)" >실패 결과</a></li>
				</ul>
				<div class="etc">
					<select class="select w130" id="geoCodingViewCnt">
						<option value="10">10개 보기</option>
						<option value="20">20개 보기</option>
						<option value="30">30개 보기</option>
						<option value="40">40개 보기</option>
					</select> 
					<!-- <a href="javascript:void(0)" class="btnEdit" id="geoCodeFixButton" style="display: none;">좌표 수정</a> --> 
					
				</div>
			</div>

		
			
			<div class="pageArea" id="geoCodingResult"></div>

			<div id="editBox" style="display:none;">
				
			</div>
			<div class="btnBox">
				<a href="javascript:void(0)" id="moveMyData">이전페이지</a>
				<!-- <a href="javascript:void(0)" id="analysisButton" >분석 기능 선택</a> -->
				<a href="javascript:void(0)" id="geoCodingModifyButton" style="display:none;">지오코딩</a>
			</div>

		</div>


		<!-- contents end  -->



	</div>
	<div style="display:none;">
		<textArea id="infoValue">${info}</textArea>
	</div>
	
	

	<!-- footer -->
	<jsp:include page="/view/common/includeFooter"></jsp:include>
	
</body>
</html>