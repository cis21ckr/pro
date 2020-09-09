<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/analysis/analysis.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/js/plugins/EasyTree/skin-lion/ui.easytree_new.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/js/plugins/jquery-easyui-1.4/sop.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/EasyTree/jquery.easytree.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery-easyui-1.4/sop-src.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery-easyui-1.4/sop-src.turf.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/map.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapBtn.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Feature.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Manager.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/draw/Draw.Cricle.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/draw/Draw.Rectangle.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/draw/Draw.Polygon.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Overlay.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/measure/Draw.AreaMeasure.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/measure/Draw.DistanceMeasure.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Distance.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Poi.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Measure.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/commonDataFunc.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/commonAnalysis.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/commonAnalysisApi.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/commonAnalysisMap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/boundaryAnalysis.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/voronoiAnalysis.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/bufferAnalysis.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/locationAnalysis.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/spatialAnalysis.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/operationAnalysis.js"></script>
	
	
	<script>
   		$(document).ready(
			function() {
				var scheme = "${user_id}";
			 	var type = "${type}";
			 	
			 	// mng_s 2019. 06. 05 j.h.Seok
			 	switch(type) {
			 	case "boundary":
			 		$log.srvLogWrite("Z0", "04", "02", "01", "", "");
			 		break;
			 	case "voronoi":
			 		$log.srvLogWrite("Z0", "04", "03", "01", "", "");
			 		break;
			 	case "buffer":
			 		$log.srvLogWrite("Z0", "04", "04", "01", "", "");
			 		break;
			 	case "location":
			 		$log.srvLogWrite("Z0", "04", "05", "01", "", "");
			 		break;
			 	case "spatial":
			 		$log.srvLogWrite("Z0", "04", "06", "01", "", "");
			 		break;
			 	case "operation":
			 		$log.srvLogWrite("Z0", "04", "07", "01", "", "");
			 		break;
			 	}
			 	
				$commonAnalysis.ui.doChangeView(type, 0);
   		});
    </script>
    <style>
    .searchArea select {
    width: 200px;
    height: 35px;
    border: 1px solid #d5d5d5;
    background: url(/pro/img/common/select_bg_s.png)no-repeat bottom right;
    background-color: #fff;
    font-size: 12px;
    color: #000;
    box-sizing: border-box;
    padding-left: 10px;
    line-height: 33px;
    border-radius: 17px;
	}
    </style>
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>
	
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<p class="home">데이터 분석 ></p>
				<h1 id="analysisNm"></h1>
				<h2>SGIS pro에서 활용 가능한 데이터를 생성하고 관리할 수 있습니다.</h2> 
			</div>						
		</div>
		
		<div class="container">
		
			<!-- 네비게이션 영역 START -->
			<div class="dataStepBox">
				<c:set var="type" value="${type}" />
				<c:choose>
					<c:when test="${type eq 'buffer'}">
						<ul class="stepList">
							<li class="on">
								<span class="t01">STEP1</span>
								<span class="t02">분석 데이터 선택</span>
								<span class="ico"></span> 
							</li>
							<li>
								<span class="t01">STEP2</span>
								<span class="t02">지역 선택</span>
								<span class="ico"></span> 
							</li>
							<li>
								<span class="t01">STEP3</span>
								<span class="t02">버퍼조건 선택</span>
								<span class="ico"></span> 
							</li>
							<li>
								<span class="t01">STEP4</span>
								<span class="t02">분석 실행</span>
								<span class="ico"></span> 
							</li>
							<li class="etc01">&nbsp;</li>
							<li class="etc02">&nbsp;</li>
						</ul>
					</c:when>
					<c:when test="${type eq 'operation'}">
						<ul class="stepList">
							<li class="on">
								<span class="t01">STEP1</span>
								<span class="t02">데이터 A 선택</span>
								<span class="ico"></span> 
							</li>
							<li>
								<span class="t01">STEP2</span>
								<span class="t02">데이터 B 선택</span>
								<span class="ico"></span> 
							</li>
							<li>
								<span class="t01">STEP3</span>
								<span class="t02">연산조건 선택</span>
								<span class="ico"></span> 
							</li>
							<li>
								<span class="t01">STEP4</span>
								<span class="t02">분석 실행</span>
								<span class="ico"></span> 
							</li>
							<li class="etc01">&nbsp;</li>
							<li class="etc02">&nbsp;</li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="stepList">
							<li class="on">
								<span class="t01">STEP1</span>
								<span class="t02">데이터 선택</span>
								<span class="ico"></span> 
							</li>
							<li>
								<span class="t01">STEP2</span>
								<span class="t02">지역 선택</span>
								<span class="ico"></span> 
							</li>
							<li>
								<span class="t01">STEP3</span>
								<span class="t02">분석 실행</span>
								<span class="ico"></span> 
							</li>
							<li class="etc01">&nbsp;</li>
							<li class="etc02">&nbsp;</li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- 네비게이션 영역 END -->
			
			<!-- 센서스 설정 메인 화면 START -->
			<div id="censusMainPage" class="settingPage pageView" style="display:none;">
				<p id="analysisDesc" class="analysisText01"></p>
				<div class="analysisSelectBox">
					<a href="javascript:void(0)" class="fl dataTypeBtn on" id="censusData"  onclick="javascript:$commonAnalysis.event.doChangeArea('census');">
						<img src="${pageContext.request.contextPath}/img/analysis/etc_analysisList01.png" />
						<span >통계청의 센서스 데이터 선택하기</span>
					</a>
					<a href="javascript:void(0)" class="fr dataTypeBtn"  id="userData" onclick="javascript:$commonAnalysis.event.doChangeArea('user');">
						<img src="${pageContext.request.contextPath}/img/analysis/etc_analysisList02.png" />
						<span >SGIS pro에서 업로드한 데이터 선택하기</span>
					</a>
				</div>
				
				
				<!-- 센서스데이터 선택 -->
				<div id="censusArea" class="censusMainPageTab"  style="display:none;">
					<div class="josabox">
						<div class="populationArea item">
							<p class="tit">인구주택 총조사</p>
							<ul>
								<li><a id="population" class="censusBtn on">인구</a></li>
								<li><a id="household" class="censusBtn">가구</a></li>
								<li><a id="house" class="censusBtn">주택</a></li>	
							</ul>
						</div>
						<div class="aggregationArea item t02">
							<p class="tit">농림어업총조사</p>
							<ul>
								<li><a id="aggregation" class="censusBtn">농가</a></li>	
								<li><a id="forestry" class="censusBtn">임가</a></li>	
								<li><a id="fishery" class="censusBtn">어가</a></li>	
							</ul>
						</div>
						<div class="companyArea item t01">
							<p class="tit">전국사업체조사</p>
							<ul>
								<li><a id="company" class="censusBtn">전산업</a></li>
								<li><a id="theme" class="censusBtn">테마업종</a></li>
							</ul>
						</div>
					</div>					
				</div>
				
				<!-- LBDMS데이터 선택 -->
				<div id="userArea" class="censusMainPageTab" style="display:none;">
					<div class="theaderBox">
						<a href="javascript:void(0)" class="userDataType on"  id="geoData">나의 데이터(위치)</a>
						<a href="javascript:void(0)" id="analysisData" class="userDataType">나의 데이터(분석이력)</a>
						<a href="javascript:void(0)" id="shareData" class="userDataType">공유된 데이터</a>
					</div>
					  
					<table class="listTable01" id="userDataTable"></table>
					<div class="pageArea">
						<span id="userDataPage"  class="pages"></span>
					</div>
				</div>
			</div>
			<!-- 센서스 설정 메인 화면 END -->
			
			<!-- 센서스 상세조건 설정화면 START-->
			<div id="censusDetailPage"  class="pageView" style="display:none;">
			
				<!-- 인구영역 START -->
				<div id="populationArea" class="censusDetailArea"  data-api="API_0302"  style="display:none;">
					<p class="analysisText01">인구주택총조사의 인구조건을 선택할 수 있습니다.</p>
					<p class="analysisText02" >인구 센서스 데이터 상세 조건 선택하기</p>
					<div class="wTableBox">
						<table class="wTable">
							<tr>
								<th>조사 년도(필수)</th>
								<td>
									<div class="form">
										<select id="population_year"  class="select" name="population_year" >
											<option value="2018">2018년도</option>
											<option value="2017">2017년도</option>
											<option value="2016">2016년도</option>
											<option value="2015">2015년도</option>
											<option value="2010">2010년도</option>
											<option value="2005">2005년도</option>
											<option value="2000">2000년도</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th>성별(필수)</th>
								<td>
									<div class="form">
										<input type="radio" id="population_gender01" class="rdEtc" name="population_gender"  value="0" checked="checked" />
										<label for="population_gender01" class="rdlabel">전체</label>
										<input type="radio" id="population_gender02" class="rdEtc" name="population_gender"  value="1" />
										<label for="population_gender02" class="rdlabel">남자</label>
										<input type="radio" id="population_gender03"  class="rdEtc" name="population_gender"  value="2" />
										<label for="population_gender03" class="rdlabel">여자</label>
									</div>
								</td>
							</tr>
							<tr id="populationAgeTab">
								<th>연령(선택)<div class="optCheckBtn"><input type="checkbox"  id="populationAgeCheck"  class="optionCheck chkEtc" /></div></th>
								<td>
									<div class="form">
										<select id="populationAgeFrom" class="select" name="age_from" ></select>
										<span class="e01">이상 ~</span>
										<select id="populationAgeTo" class="select" name="age_to"></select>
										<span id="populationAgeToText" class="e01">미만</span>
									</div>
									<div class="form">
										<div id="slider-range2"></div>
										<ul class="slider_controll_bar">
		                                    <li style="margin-left:-14px;">0</li>
		                                    <li style="margin-left:31px;">20</li>
		                                    <li style="margin-left:25px;">40</li>
		                                    <li style="margin-left:26px;">60</li>
		                                    <li style="margin-left:25px;">80</li>
		                                    <li style="margin-left:48px;">100+</li>
		                                </ul>
									</div>
								</td>
							</tr>
							<tr id="populationEduTab"  style="display:none;">
								<th>교육정도별(선택)<div class="optCheckBtn" style="margin:-20px 0 0 130px;"><input type="checkbox"  id="populationEduCheck"  class="optionCheck chkEtc" /></div></th>
								<td>
									<div class="form">
										<input type="checkbox" id="edu_level01" class="chkEtc fl" name="population_edu"  value="1" />
										<label for="edu_level01" class="rdlabel">수학없음</label>
										<input type="checkbox" id="edu_level02" class="chkEtc fl" name="population_edu"  value="2" />
										<label for="edu_level02" class="rdlabel">초등학교</label>
										<input type="checkbox" id="edu_level03"  class="chkEtc fl" name="population_edu"  value="3" />
										<label for="edu_level03" class="rdlabel">중학교</label>
										<input type="checkbox" id="edu_level04"  class="chkEtc fl" name="population_edu"  value="4" />
										<label for="edu_level04" class="rdlabel">고등학교</label>
									</div>
									<div class="form">
										<input type="checkbox" id="edu_level05"  class="chkEtc fl" name="population_edu"  value="5" />
										<label for="edu_level05" class="rdlabel">전문학사</label>
										<input type="checkbox" id="edu_level06"  class="chkEtc fl" name="population_edu"  value="6" />
										<label for="edu_level06" class="rdlabel">학사</label>
										<input type="checkbox" id="edu_level07"  class="chkEtc fl" name="population_edu"  value="7" />
										<label for="edu_level07" class="rdlabel">석사</label>
										<input type="checkbox" id="edu_level08"  class="chkEtc fl" name="population_edu"  value="8" />
										<label for="edu_level08" class="rdlabel">박사</label>
									</div>
								</td>
							</tr>
							<tr id="populationMarryTab" style="display:none;" >
								<th>혼인정도별(선택)<div class="optCheckBtn" style="margin:-20px 0 0 130px;"><input type="checkbox"  id="populationMarryCheck"  class="optionCheck chkEtc" /></div></th>
								<td>
									<div class="form">
										<input type="checkbox" id="rd_honin01" class="chkEtc fl" name="population_marry"  value="1" />
										<label for="rd_honin01" class="rdlabel">미혼</label>
										<input type="checkbox" id="rd_honin04" class="chkEtc fl" name="population_marry"  value="4" />
										<label for="rd_honin04" class="rdlabel">이혼</label>
										<input type="checkbox" id="rd_honin02"  class="chkEtc fl" name="population_marry"  value="2" />
										<label for="rd_honin02" class="rdlabel">기혼</label>
										<input type="checkbox" id="rd_honin03"  class="chkEtc fl" name="population_marry"  value="3" />
										<label for="rd_honin03" class="rdlabel">사별</label>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 인구영역 END -->
				
				<!-- 가구영역 START -->
				<div id="householdArea"  class="censusDetailArea" data-api="API_0305"  style="display:none;">
					<p class="analysisText01">인구주택총조사의 가구조건을 선택할 수 있습니다.</p>
					<p class="analysisText02">가구 센서스 데이터 상세 조건 선택하기</p>
					<div class="wTableBox">
						<table class="wTable">
							<tr>
								<th>조사년도(필수)</th>
								<td>
									<div class="form">
										<select id="household_year" name="household_year"  class="select" >
											<option value="2018">2018년도</option>
											<option value="2017">2017년도</option>
											<option value="2016">2016년도</option>
											<option value="2015">2015년도</option>
											<option value="2010">2010년도</option>
											<option value="2005">2005년도</option>
											<option value="2000">2000년도</option>
										</select>
									</div>
								</td>
							</tr>
							<tr  id="householdTypeTab">
								<th>세대구성(다중선택)<div class="optCheckBtn" style="margin:-25px 0 0 150px;"><input type="checkbox"  id="householdTypeCheck"  class="optionCheck chkEtc fl" /></div></th>
								<td>
									<div class="form">
										<input type="checkbox" id="rd_household01" name="household_type"  class="chkEtc fl" value="01" />
										<label for="rd_household01" class="rdlabel">1세대 가구</label>
										<input type="checkbox" id="rd_household02" name="household_type"  class="chkEtc fl" value="02" />
										<label for="rd_household02" class="rdlabel">2세대 가구</label>
										<input type="checkbox" id="rd_household03" name="household_type"  class="chkEtc fl" value="03" />
										<label for="rd_household03" class="rdlabel" >3세대 가구</label>
										<input type="checkbox" id="rd_household04" name="household_type"   class="chkEtc fl" value="04" />
										<label for="rd_household04" class="rdlabel">4세대 이상 가구</label>
									</div>
									<div class="form">
										<input type="checkbox" id="rd_household06" name="household_type"  class="chkEtc fl" value="A0" />
										<label for="rd_household06" class="rdlabel" style="width:74px;">1인 가구</label>
										<input type="checkbox" id="rd_household07" name="household_type"  class="chkEtc fl" value="B0" />
										<label for="rd_household07" class="rdlabel">비혈연 가구</label>
									</div>
								</td>
							</tr>
							<tr  id="householdOcptnTab" style="display:none;" >
								<th>점유형태(다중선택)<div class="optCheckBtn" style="margin:-25px 0 0 150px;"><input type="checkbox"  id="householdOcptnCheck" class="optionCheck chkEtc fl" /></div></th>
								<td>
									<div class="form">
										<input type="checkbox" id="rd_occupy01" name="ocptn_type"  class="chkEtc fl"  value="1"  />
										<label for="rd_occupy01" class="rdlabel">자기집</label>
										<input type="checkbox" id="rd_occupy02" name="ocptn_type"  class="chkEtc fl"  value="2"  />
										<label for="rd_occupy02" class="rdlabel">전세(월세없음)</label>
										<input type="checkbox" id="rd_occupy03" name="ocptn_type"  class="chkEtc fl"  value="3"  />
										<label for="rd_occupy03" class="rdlabel">보증금 있는 월세</label>
										<input type="checkbox" id="rd_occupy04" name="ocptn_type"  class="chkEtc fl" value="4"  />
										<label for="rd_occupy04" class="rdlabel">보증금 없는 월세</label>
									</div>
									<div class="form">
										<input type="checkbox" id="rd_occupy05" name="ocptn_type"  class="chkEtc fl" value="5"  />
										<label for="rd_occupy05" class="rdlabel">사글세</label>
										<input type="checkbox" id="rd_occupy06" name="ocptn_type"  class="chkEtc fl" value="6"  />
										<label for="rd_occupy06" class="rdlabel">무상(관사, 사택, 친척집 등)</label>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 가구영역 END -->
				
				<!-- 주택영역 START -->
				<div id="houseArea"  class="censusDetailArea" data-api="API_0306" style="display:none;">
					<p class="analysisText01">인구주택총조사의 주택조건을 선택할 수 있습니다.</p>
					<p class="analysisText02">주택 센서스 데이터 상세 조건 선택하기</p>
					<div class="wTableBox">
						<table class="wTable">
							<tr>
								<th>조사년도(필수)</th>
								<td>
									<div class="form">
										<select id="house_year" name="house_year"  class="select">
											<option value="2018">2018년도</option>
											<option value="2017">2017년도</option>
											<option value="2016">2016년도</option>
											<option value="2015">2015년도</option>
											<option value="2010">2010년도</option>
											<option value="2005">2005년도</option>
											<option value="2000">2000년도</option>
										</select>
									</div>
								</td>
							</tr>
							<tr  id="houseTypeTab">
								<th>주택유형(다중선택)<div class="optCheckBtn" style="margin:-25px 0 0 150px;"><input type="checkbox"  id="houseTypeCheck"  class="optionCheck chkEtc fl" /></div></th>
								<td>
									<div class="form">
										<input type="checkbox" id="rd_home01" name="house_type" class="chkEtc fl" value="01"  />
										<label for="rd_home01" class="rdlabel">단독주택</label>
										<input type="checkbox" id="rd_home02" name="house_type"  class="chkEtc fl" value="02" />
										<label for="rd_home02" class="rdlabel">아파트</label>
										<input type="checkbox" id="rd_home03" name="house_type"  class="chkEtc fl" value="03" />
										<label for="rd_home03" class="rdlabel">연립주택</label>
										<input type="checkbox" id="rd_home04" name="house_type"  class="chkEtc fl" value="04" />
										<label for="rd_home04" class="rdlabel">다세대주택</label>
									</div>
									<div class="form">
										<input type="checkbox" id="rd_home05" name="house_type"  class="chkEtc fl" value="05" />
										<label for="rd_home05" class="rdlabel">비거주용건물(상가, 공장, 여관 등)내 주택</label>
										<input type="checkbox" id="rd_home06" name="house_type"  class="chkEtc fl" value="06"  />
										<label for="rd_home06" class="rdlabel">주택이외의 거처</label>
									</div>
								</td>
							</tr>
							<tr id="houseUsePeriodTab">
								<th>노후년수(선택)<div class="optCheckBtn" style="margin:-25px 0 0 150px;"><input type="checkbox"  id="houseUsePeriodCheck"  class="optionCheck chkEtc fl" /></div></th>
								<td>
									<div class="form">
										<select id="houseUsePeriod" name="house_use_prid_cd"  class="select">
											<option value="01">1년 미만</option>
											<option value="02">1년~2년 미만</option>
											<option value="03">2년~3년 미만</option>
											<option value="04">3년~4년 미만</option>
											<option value="05">4년~5년 미만</option>
											<option value="06">5년~10년 미만</option>
											<option value="07">10년~15년 미만</option>
											<option value="08">15년~20년 미만</option>
											<option value="09">20년~30년 미만</option>
											<option value="10">30년~40년 미만</option>
											<option value="11">40년~50년 미만</option>
											<option value="12">50년 이상</option>
										</select>
									</div>
								</td>
							</tr>
							<tr id="houseConstYearTab" style="display:none;">
								<th>건축년도(선택)<div class="optCheckBtn" style="margin:-25px 0 0 150px;"><input type="checkbox"  id="houseConstYearCheck"  class="optionCheck chkEtc fl" /></div></th>
								<td>
									<div class="form">
										<select id="houseConstYear" name="const_year" class="select">
											<option value="01">2010년</option>
											<option value="02">2009년</option>
											<option value="03">2008년</option>
											<option value="04">2007년</option>
											<option value="05">2006년</option>
											<option value="06">2005년</option>
											<option value="07">2000년~2004년</option>
											<option value="08">1995년~1999년</option>
											<option value="09">1990년~1994년</option>
											<option value="10">1980년~1989년</option>
											<option value="11">1970년~1979년</option>
											<option value="12">1960년~1969년</option>
											<option value="13">1959년 이전</option>
										</select>
									</div>
								</td>
							</tr>
							<tr id="houseBdspaceTab">
								<th>연면적(선택)<div class="optCheckBtn" style="margin:-25px 0 0 150px;"><input type="checkbox"  id="houseBdspaceCheck"  class="optionCheck chkEtc fl" /></div></th>
								<td>
									<div class="form">
										<select id="houseBdspaceFrom" name="bdspace_from" class="select"></select>
										<span class="e01">이상 ~</span>
										<select id="houseBdspaceTo" name="bdspace_to" class="select"></select>
										<span id="houseBdspaceToText" class="e01">미만</span>
									</div>
									<div class="form">
                                        <span class="houseBdspaceFrom e01"></span>
                                        <span class="e01">초과 ~</span>
                                        <span class="houseBdspaceTo e01"></span>
                                        <span class="houseBdspaceToText e01">이하</span>
									</div>
									<div class="form">
										<div id="slider-range3" style="margin:0 0 20px 0;"></div>
										<ul class="slider_controll_bar">
		                                    <li style="margin-left:-14px;">0</li>
		                                    <li>20</li>
		                                    <li style="margin-left:-5px;">40</li>
		                                    <li style="margin-left:-6px;">60</li>
		                                    <li style="margin-left:-5px;">85</li>
		                                    <li style="margin-left:-7px;">100</li>
		                                    <li style="margin-left:-5px;">130</li>
		                                    <li style="margin-left:-6px;">165</li>
		                                    <li style="margin-left:-5px;">230</li>
		                                    <li style="margin-left:-5px;">+</li>
		                                </ul> 
									</div>
								</td>
							</tr>
						</table>
					</div>					
				</div>
				<!-- 주택영역 END -->
			
				<!-- 농가영역 START -->
				<div id="aggregationArea"  class="censusDetailArea"  data-api="API_0307" style="display:none;">
					<p class="analysisText01">농림어업총조사의 농가조건을 선택할 수 있습니다.</p>
					<p class="analysisText02">농가 센서스 데이터 상세 조건 선택하기</p>
					<div class="wTableBox">
						<table class="wTable">
							<tr>
								<th>조사년도(필수)</th>
								<td>
									<div class="form">
										<select id="aggregation_year" name="house_year" class="select">
											<option value="2015">2015년도</option>
											<option value="2010">2010년도</option>
											<option value="2005">2005년도</option>
											<option value="2000">2000년도</option>
										</select>
									</div>
								</td>
							</tr>
							<tr  id="aggregationGenderTab">
								<th>가구원 성별(선택)<div class="optCheckBtn" style="margin:-25px 0 0 150px;"><input type="checkbox"  id="aggregationGenderCheck"  class="optionCheck chkEtc" /></div></th>
								<td>
									<div class="form">
										<input type="radio" id="aggregation_gender01" name="aggregation_gender"  class="rdEtc"  value="0" checked="checked"  />
										<label for="aggregation_gender01" class="rdlabel">전체</label>
										<input type="radio" id="aggregation_gender02" name="aggregation_gender"  class="rdEtc"  value="1"  />
										<label for="aggregation_gender02" class="rdlabel">남자</label>
										<input type="radio" id="aggregation_gender03" name="aggregation_gender"  class="rdEtc"  value="2"  />
										<label for="aggregation_gender03" class="rdlabel">여자</label>
									</div>
								</td>
							</tr>
							<tr id="aggregationAgeTab">
								<th>해당 가구원 연령(선택)<div class="optCheckBtn" style="margin:-25px 0 0 170px;"><input type="checkbox"  id="aggregationAgeCheck"  class="optionCheck chkEtc" /></div></th>
								<td>
									<div class="form">
										<select id="aggregationAgeFrom" name="age_from" class="select" ></select>
										<span class="e01">이상 ~</span>
										<select id="aggregationAgeTo" name="age_to"  class="select"></select>
										<span id="aggregationAgeToText" class="e01">미만</span>
									</div>
									<div class="form">
										<div id="slider-range4" style="margin:20px 0 20px 0;"></div>
										<ul class="slider_controll_bar">
		                                    <li style="margin-left:-14px;">0</li>
		                                    <li style="margin-left:31px;">20</li>
		                                    <li style="margin-left:25px;">40</li>
		                                    <li style="margin-left:26px;">60</li>
		                                    <li style="margin-left:25px;">80</li>
		                                    <li style="margin-left:48px;">100+</li>
		                                </ul>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 농가영역 END -->
				
				<!-- 임가영역 START -->
				<div id="forestryArea"  class="censusDetailArea" data-api="API_0308"  style="display:none;">
					<p class="analysisText01">농림어업총조사의 임가조건을 선택할 수 있습니다.</p>
					<p class="analysisText02">임가 센서스 데이터 상세 조건 선택하기</p>
					<div class="wTableBox">
						<table class="wTable">
							<tr>
								<th>조사년도(필수)</th>
								<td>
									<div class="form">
										<select id="forestry_year" name="house_year" class="select">
											<option value="2015">2015년도</option>
											<option value="2010">2010년도</option>
											<option value="2005">2005년도</option>
										</select>
									</div>
								</td>
							</tr>
							<tr  id="forestryGenderTab">
								<th>가구원 성별(선택)<div class="optCheckBtn" style="margin:-25px 0 0 150px;"><input type="checkbox"  id="forestryGenderCheck"  class="optionCheck chkEtc" /></div></th>
								<td>
									<div class="form">
										<input type="radio" id="forestry_gender01" name="forestry_gender"  class="rdEtc"  value="0" checked="checked"   />
										<label for="forestry_gender01" class="rdlabel">전체</label>
										<input type="radio" id="forestry_gender02" name="forestry_gender"  class="rdEtc"  value="1"  />
										<label for="forestry_gender02" class="rdlabel">남자</label>
										<input type="radio" id="forestry_gender03" name="forestry_gender"  class="rdEtc"  value="2" />
										<label for="forestry_gender03" class="rdlabel">여자</label>
									</div>
								</td>
							</tr>
							<tr id="forestryAgeTab">
								<th>해당 가구원 연령(선택)<div class="optCheckBtn" style="margin:-25px 0 0 170px;"><input type="checkbox"  id="forestryAgeCheck"  class="optionCheck chkEtc" /></div></th>
								<td>
									<div  class="form">
										<select id="forestryAgeFrom" name="age_from"  class="select"></select>
										<span class="e01">이상 ~</span>
										<select id="forestryAgeTo" name="age_to" class="select"></select>
										<span id="forestryAgeToText" class="e01">미만</span>
									</div>
									<div class="form">
										<div id="slider-range5" style="margin:20px 0 20px 0;"></div>
										<ul class="slider_controll_bar">
		                                    <li style="margin-left:-14px;">0</li>
		                                    <li style="margin-left:31px;">20</li>
		                                    <li style="margin-left:25px;">40</li>
		                                    <li style="margin-left:26px;">60</li>
		                                    <li style="margin-left:25px;">80</li>
		                                    <li style="margin-left:48px;">100+</li>
		                                </ul>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 임가영역 END -->
				
				<!-- 어가영역 START -->
				<div id="fisheryArea"  class="censusDetailArea"  data-api="API_0309" style="display:none;">
					<p class="analysisText01">농림어업총조사의 어가조건을 선택할 수 있습니다.</p>
					<p class="analysisText02">어가 센서스 데이터 상세 조건 선택하기</p>
					<div class="wTableBox">
						<table class="wTable">
							<tr>
								<th>조사년도(필수)</th>
								<td>
									<div class="form">
										<select id="fishery_year" name="house_year" class="select">
											<option value="2015">2015년도</option>
											<option value="2010">2010년도</option>
											<option value="2005">2005년도</option>
											<option value="2000">2000년도</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th>어가구분(필수)</th>
								<td>
									<div class="form">
										<input type="radio" id="fishery_type01" name="fishery_type"  class="rdEtc" value="1" checked="checked"  />
										<label for="fishery_type01" class="rdlabel">내수면어가</label>
										<input type="radio" id="fishery_type02" name="fishery_type"  class="rdEtc" value="2"  />
										<label for="fishery_type02" class="rdlabel">해수면어가</label>
									</div>
								</td>
							</tr>
							<tr  id="fisheryGenderTab">
								<th>가구원 성별(선택)<div class="optCheckBtn" style="margin:-25px 0 0 150px;"><input type="checkbox"  id="fisheryGenderCheck"  class="optionCheck chkEtc" /></div></th>
								<td>
									<div class="form">
										<input type="radio" id="fishery_gender01" name="fishery_gender"  class="rdEtc" value="0" checked="checked"  />
										<label for="fishery_gender01" class="rdlabel">전체</label>
										<input type="radio" id="fishery_gender02" name="fishery_gender"  class="rdEtc" value="1" />
										<label for="fishery_gender02" class="rdlabel">남자</label>
										<input type="radio" id="fishery_gender03" name="fishery_gender"  class="rdEtc" value="2" />
										<label for="fishery_gender03" class="rdlabel">여자</label>
									</div>
								</td>
							</tr>
							<tr id="fisheryAgeTab">
								<th>해당 가구원 연령(선택)<div class="optCheckBtn" style="margin:-25px 0 0 170px;"><input type="checkbox"  id="fisheryAgeCheck"  class="optionCheck chkEtc" /></div></th>
								<td>
									<div class="form">
										<select id="fisheryAgeFrom" name="age_from" class="select"></select>
										<span class="e01">이상 ~</span>
										<select id="fisheryAgeTo" name="age_to" class="select"></select>
										<span id="fisheryAgeToText" class="e01">미만</span>
									</div>
									<div class="form">
										<div id="slider-range6" style="margin:20px 0 20px 0;"></div>
										<ul class="slider_controll_bar">
		                                    <li style="margin-left:-14px;">0</li>
		                                    <li style="margin-left:31px;">20</li>
		                                    <li style="margin-left:25px;">40</li>
		                                    <li style="margin-left:26px;">60</li>
		                                    <li style="margin-left:25px;">80</li>
		                                    <li style="margin-left:48px;">100+</li>
		                                </ul>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 어가영역 END -->
				
				<!-- 사업체-전산업 영역 START -->
				<div id="companyArea"  class="censusDetailArea" data-api="API_0303"  style="display:none;">
					<p class="analysisText01">전국사업체조사의 사업체를 산업분류 형태로 선택할 수 있습니다.</p>
					<p class="analysisText02">사업체(전산업) 센서스 데이터 상세 조건 선택하기</p>
					<div class="wTableBox">
						<table class="wTable">
							<tr>
								<th>조사년도(필수)</th>
								<td>
									<div class="form">
										<select id="company_year" name="company_year" class="select"></select>
									</div>	
								</td>
							</tr>
							<tr>
								<th>대상선택(필수)</th>
								<td>
									<div class="form">
										<input type="radio" id="rd_cData_type01" name="cDataType"  class="rdEtc" value="COMPANY" checked="checked"  />
										<label for="rd_cData_type01" class="rdlabel">사업체수</label>
										<input type="radio" id="rd_cData_type02" name="cDataType"  class="rdEtc" value="EMPLOYEE"  />
										<label for="rd_cData_type02" class="rdlabel">종사자수</label>
									</div>
								</td>
							</tr>
							<tr>
								<th>표준산업분류목록</th>
								<td>
									<div class="form">
										<div id="company_TreeBox"></div>
									</div>	
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 사업체-전산업 영역 END -->
				
				<!-- 사업체-테마 영역 START -->
				<div id="themeArea"  class="censusDetailArea"  data-api="API_0303" style="display:none;">
					<p class="analysisText01">전국 사업체 조사항목 생활밀집업종을 61가지로 선정하여 분류한 기준입니다. 테마유형에 따른 사업체 통계 선택이 가능합니다.</p>
					<p class="analysisText02" id = "defaultDesc">사업체(테마) 센서스 데이터 상세 조건 선택하기</p>
					<p class="analysisText02" id = "bufferDetailDesc" style="display:none;">버퍼 상세 조건 선택하기</p>
					<div class="wTableBox">
						<table class="wTable">
							<tr>
								<th>조사년도(필수)</th>
								<td>
									<div class="form">
										<select id="theme_year" name="theme_year"  class="select"></select>
									</div>
								</td>
							</tr>
							<tr id="themeTarget">
								<th>대상선택(필수)</th>
								<td>
									<div class="form">
										<input type="radio" id="rd_cData_type01" name="tDataType"  class="rdEtc"  value="COMPANY" checked="checked"  />
										<label for="rd_cData_type01" class="rdlabel">사업체수</label>
										<input type="radio" id="rd_cData_type02" name="tDataType"  class="rdEtc"  value="EMPLOYEE"  />
										<label for="rd_cData_type02" class="rdlabel">종사자수</label>
									</div>
								</td>
							</tr>
							<tr>
								<th>테마유형 사업체(필수)</th>
								<td>
									<dl class="themaCategoryList">
										<!-- 생활서비스  -->
										<dt><a href="javascript:void(0)">생활서비스</a></dt>
										<dd>
											<ul>
												<li>
													<input type="radio" name="theme_codes" id="theme_1001"  class="rdEtc"  value="1001"  checked="checked"  />
								            		<label for="theme_1001" class="rdlabel">인테리어</label>
												</li>
												<li>
													<input type="radio" name="theme_codes" id="theme_1002"  class="rdEtc"  value="1002"  />
								            		<label for="theme_1002" class="rdlabel">목욕탕</label>
												</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_1003"  class="rdEtc"  value="1003"  />
								            		<label for="theme_1003" class="rdlabel">교습학원</label>
								            	</li>
								           		<li>
								           			<input type="radio" name="theme_codes" id="theme_1004"  class="rdEtc"  value="1004"  />
								            		<label for="theme_1004" class="rdlabel">어학원</label>
								           		</li>
								            	<li>
								            		 <input type="radio" name="theme_codes" id="theme_1005"  class="rdEtc"  value="1005"  />
								           			 <label for="theme_1005" class="rdlabel">예체능학원</label>
								            	</li>
								           		<li>
								           			<input type="radio" name="theme_codes" id="theme_1006"  class="rdEtc"  value="1006"  />
								            		<label for="theme_1006" class="rdlabel">부동산중개업</label>
								           		</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_1007"  class="rdEtc"  value="1007"  />
								            		<label for="theme_1007" class="rdlabel">이발소</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_1008"  class="rdEtc"  value="1008"  />
								            		<label for="theme_1008" class="rdlabel">미용실</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_1009"  class="rdEtc"  value="1009"  />
								           	 		<label for="theme_1009" class="rdlabel">세탁소</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_1010"  class="rdEtc"  value="1010"  />
								            		<label for="theme_1010" class="rdlabel">PC방</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_1011"  class="rdEtc"  value="1011"  />
								            		<label for="theme_1011" class="rdlabel">노래방</label>
								            	</li>
								            </ul>
										</dd>
										
										<!-- 도소매  -->
										<dt><a href="javascript:void(0)">도소매</a></dt>
										<dd>
											<ul>
												<li>
													<input type="radio" name="theme_codes" id="theme_2001"  class="rdEtc"  value="2001"  />
								            		<label for="theme_2001" class="rdlabel">문구점</label>
												</li>
												<li>
													<input type="radio" name="theme_codes" id="theme_2002"  class="rdEtc"   value="2002"  />
								            		<label for="theme_2002" class="rdlabel">서점</label>
												</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_2003"  class="rdEtc"  value="2003"  />
								            		<label for="theme_2003" class="rdlabel">편의점</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_2004"  class="rdEtc"  value="2004"  />
								            		<label for="theme_2004" class="rdlabel">식료품점</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_2005"  class="rdEtc"  value="2005"  />
								            		<label for="theme_2005" class="rdlabel">휴대폰점</label>
								            	</li>
								            	<li>
								            		 <input type="radio" name="theme_codes" id="theme_2006"  class="rdEtc"  value="2006"  />
								            		<label for="theme_2006" class="rdlabel">의류</label>
								            	</li>
								           		<li>
								           			<input type="radio" name="theme_codes" id="theme_2007"  class="rdEtc"  value="2007"  />
								            		<label for="theme_2007" class="rdlabel">화장품/방향제</label>
								           		</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_2008"  class="rdEtc"  value="2008"  />
								            		<label for="theme_2008" class="rdlabel">철물점</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_2009"  class="rdEtc"  value="2009"  />
								            		<label for="theme_2009" class="rdlabel">주유소</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_2010"  class="rdEtc"  value="2010"  />
								            		<label for="theme_2010" class="rdlabel">꽃집</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_2011"  class="rdEtc"  value="2011"  />
								            		<label for="theme_2011" class="rdlabel">슈퍼마켓</label>
								            	</li>
								            </ul>
										</dd>
										
										<!-- 숙박 -->
										<dt><a href="javascript:void(0)">숙박</a></dt>
										<dd>
											<ul>
												<li>
													<input type="radio" name="theme_codes" id="theme_4001"  class="rdEtc"  value="4001"  />
								            		<label for="theme_4001" class="rdlabel">호텔</label>
												</li>
												<li style="width:35%;">
													<input type="radio" name="theme_codes" id="theme_4002"  class="rdEtc"  value="4002"  />
								            		<label for="theme_4002" class="rdlabel">여관(모텔포함)및 여인숙</label>
												</li>
								            </ul>
										</dd>
										
										<!-- 음식점  -->
										<dt><a href="javascript:void(0)">음식점</a></dt>
										<dd>
											<ul>
												<li>
													<input type="radio" name="theme_codes" id="theme_5001"  class="rdEtc"  value="5001"  />
								            		<label for="theme_5001" class="rdlabel">한식</label>
												</li>
												<li>
													<input type="radio" name="theme_codes" id="theme_5002"  class="rdEtc"  value="5002"  />
								            		<label for="theme_5002" class="rdlabel">중식</label>
												</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_5003"  class="rdEtc"  value="5003"  />
								            		<label for="theme_5003" class="rdlabel">일식</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_5004"  class="rdEtc"  value="5004"  />
								            		<label for="theme_5004" class="rdlabel">분식</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_5005"  class="rdEtc"  value="5005"  s/>
								            		<label for="theme_5005" class="rdlabel">서양식</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_5006"  class="rdEtc"  value="5006"  />
								            		<label for="theme_5006" class="rdlabel">제과점</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_5007"  class="rdEtc"  value="5007"  />
								           			<label for="theme_5007" class="rdlabel">패스트푸드</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_5008"  class="rdEtc"  value="5008"  />
								            		<label for="theme_5008" class="rdlabel">치킨</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_5009"  class="rdEtc"  value="5009"  />
								            		<label for="theme_5009" class="rdlabel">호프 및 간이주점</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_5010"  class="rdEtc"  value="5010"  />
								            		<label for="theme_5010" class="rdlabel">카페</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_5011"  class="rdEtc"  value="5011"  />
								            		<label for="theme_5011" class="rdlabel">기타 외국식</label>
								            	</li>
								            </ul>
										</dd>
										
										<!-- 교통 -->
										<dt><a href="javascript:void(0)">교통</a></dt>
										<dd>
											<ul>
												<li>
													<input type="radio" name="theme_codes" id="theme_3001"  class="rdEtc"  value="3001"  />
								            		<label for="theme_3001" class="rdlabel">지하철역</label>
												</li>
												<li>
													<input type="radio" name="theme_codes" id="theme_3002"  class="rdEtc"  value="3002"  />
								            		<label for="theme_3002" class="rdlabel">터미널</label>
												</li>
								            </ul>
										</dd>
										
										<!-- 공공 -->
										<dt><a href="javascript:void(0)">공공</a></dt>
										<dd>
											<ul>
												<li>
													<input type="radio" name="theme_codes" id="theme_6001"  class="rdEtc"  value="6001" />
								            		<label for="theme_6001" class="rdlabel">우체국</label>
												</li>
												<li>
													<input type="radio" name="theme_codes" id="theme_6002"  class="rdEtc"  value="6002"  />
								            		<label for="theme_6002" class="rdlabel">행정기관</label>
												</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_6003"  class="rdEtc"  value="6003"  />
								            		<label for="theme_6003" class="rdlabel">경찰/지구대</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_6004"  class="rdEtc"  value="6004"  />
								            		<label for="theme_6004" class="rdlabel">소방서</label>
								            	</li>
								            </ul>
										</dd>
										
										<!-- 교육 -->	      
										<dt><a href="javascript:void(0)">교육</a></dt>
										<dd>
											<ul>
												<li>
													<input type="radio" name="theme_codes" id="theme_7001"  class="rdEtc"  value="7001"  />
								            		<label for="theme_7001" class="rdlabel">초등학교</label>
												</li>
												<li>
													<input type="radio" name="theme_codes" id="theme_7002"  class="rdEtc"  value="7002"  />
								            		<label for="theme_7002" class="rdlabel">중학교</label>
												</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_7003"  class="rdEtc"  value="7003"  />
								            		<label for="theme_7003" class="rdlabel">고등학교</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_7004"  class="rdEtc"  value="7004"  />
								            		<label for="theme_7004" class="rdlabel">전문대학</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_7005"  class="rdEtc"  value="7005"  />
								            		<label for="theme_7005" class="rdlabel">대학교</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_7006"  class="rdEtc"  value="7006"  />
								            		<label for="theme_7006" class="rdlabel">대학원</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_7007"  class="rdEtc"  value="7007"  />
								            		<label for="theme_7007" class="rdlabel">어린이보육업</label>
								            	</li>
								            </ul>
										</dd>
										
										<!-- 기업 -->
										<dt><a href="javascript:void(0)">기업</a></dt>
										<dd>
											<ul>
												<li>
													<input type="radio" name="theme_codes" id="theme_8001"  class="rdEtc"  value="8001"  />
								            		<label for="theme_8001" class="rdlabel">제조/화학</label>
												</li>
												<li>
													<input type="radio" name="theme_codes" id="theme_8002"  class="rdEtc"  value="8002"  />
								            		<label for="theme_8002" class="rdlabel">서비스</label>
												</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_8003"  class="rdEtc"  value="8003"  />
								            		<label for="theme_8003" class="rdlabel">통신/IT</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_8004"  class="rdEtc"  value="8004"  />
								            		<label for="theme_8004" class="rdlabel">건설</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_8005"  class="rdEtc"  value="8005"  />
								            		<label for="theme_8005" class="rdlabel" >판매/유통</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_8006"  class="rdEtc"  value="8006"  />
								            		<label for="theme_8006" class="rdlabel" >기타금융업</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_8007"  class="rdEtc"  value="8007"  />
								            		<label for="theme_8007" class="rdlabel" >기타의료업</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_8008"  class="rdEtc"  value="8008"  />
								            		<label for="theme_8008" class="rdlabel" >문화/체육</label>
								            	</li>
								            </ul>
										</dd>
										
										<!-- 편의/문화 --> 
										<dt><a href="javascript:void(0)">편의/문화</a></dt>
										<dd>
											<ul>
												<li>
													<input type="radio" name="theme_codes" id="theme_9001"  class="rdEtc"  value="9001"  />
								            		<label for="theme_9001" class="rdlabel" >백화점/중대형마트</label>
												</li>
												<li>
													<input type="radio" name="theme_codes" id="theme_9002"  class="rdEtc"  value="9002"  />
								            		<label for="theme_9002" class="rdlabel" >은행</label>
												</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_9003"  class="rdEtc"  value="9003"  />
								            		<label for="theme_9003" class="rdlabel" >병원</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_9004"  class="rdEtc"  value="9004"  />
								            		<label for="theme_9004" class="rdlabel" >극장/영화관</label>
								            	</li>
								            	<li>
								            		<input type="radio" name="theme_codes" id="theme_9005"  class="rdEtc"  value="9005"  />
								            		<label for="theme_9005" class="rdlabel" >도서관/박물관</label>
								            	</li>
								            </ul>
										</dd>
									</dl>	    
								</td>
							</tr>
							
							<tr class ="neighbor_cnt" style="display:none;">
								<th>근접 이웃 수</th>
								<td>
									<div class="form">
										<select id="theme_k_value" name="neighbor_cnt" class="select">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
										</select>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 사업체-테마 영역 END -->
			</div>
			
			<!-- 버퍼조건선택 START -->
			<div id="bufferOptionPage" class="pageView"  style="display:none;">
				<p class="analysisText01">버퍼 분석을 실행하기 위해서는 버퍼를 생성할 기준을 선택하여야 합니다. 분석을 원하시는 버퍼의 유형과 상세 조건을 선택하시기 바랍니다</p>
				<ul class="analysisBufferList">
					<li>
							<a href="javascript:void(0)" id = "buffer_company" class="bufferTypeBtn on">
								<img src="${pageContext.request.contextPath}/img/analysis/ico_bufferList01.png" />
								<span class="t01">사업체 조사</span> 
							</a> 
						</li>
						<li>
							<a href="javascript:void(0)" id="buffer_poi" class="bufferTypeBtn">
								<img src="${pageContext.request.contextPath}/img/analysis/ico_bufferList02.png" />
								<span class="t01">임의 POI생성</span> 
							</a> 
						</li>
						<li>
							<a href="javascript:void(0)" id="buffer_user" class="bufferTypeBtn">
								<img src="${pageContext.request.contextPath}/img/analysis/ico_bufferList03.png" />
								<span class="t01">사용자 데이터</span> 
							</a> 
						</li>
						<li>
							<a href="javascript:void(0)" id="buffer_road" class="bufferTypeBtn">
								<img src="${pageContext.request.contextPath}/img/analysis/ico_bufferList04.png" />
								<span class="t01">도로네트워크 선택</span> 
							</a> 
						</li> 
				</ul>
				<ul id="bufferConditionDetailDesc" class="nlist">
					<li>사업체 조사<br /> “9개의 분류된 테마 카테고리 내에서 테마업종을 선택합니다.”</li>
				</ul>
			</div>
			
			<!-- 버퍼조건선택 END -->

			
			<!-- 경계타입선택 START -->
			<div id="boundaryPage" class="pageView"  style="display:none;">
				<p class="analysisText01">선택된 데이터의 분석 기준이 되는 경계 유형 및 대상 지역 범위 설정이 필요합니다. 경계 분석의 유형을 선택해 주세요</p>	
				<ul class="analysisTypeList">
					<li>
						<a href="javascript:void(0)"  id="adm" class="boundaryTypeBtn on">
							<img src="${pageContext.request.contextPath}/img/analysis/ico_typeList01.png" />
							<span class="t01">행정 경계</span> 
						</a> 
					</li>
					<li>
						<a href="javascript:void(0)" id="grid" class="boundaryTypeBtn">
							<img src="${pageContext.request.contextPath}/img/analysis/ico_typeList02.png" />
							<span class="t01">그리드</span> 
						</a> 
					</li>
					<li>
						<a href="javascript:void(0)" id="hexagon" class="boundaryTypeBtn">
							<img src="${pageContext.request.contextPath}/img/analysis/ico_typeList03.png" />
							<span class="t01">헥사곤</span> 
						</a> 
					</li>
					<li>
						<a href="javascript:void(0)" id="random" class="boundaryTypeBtn">
							<img src="${pageContext.request.contextPath}/img/analysis/ico_typeList04.png" />
							<span class="t01">임의 경계</span> 
						</a> 
					</li>
					<li>
						<a href="javascript:void(0)" id="user" class="boundaryTypeBtn">
							<img src="${pageContext.request.contextPath}/img/analysis/ico_typeList05.png" />
							<span class="t01">사용자 경계</span> 
						</a> 
					</li>
				</ul>

				<ul id="boundaryDetailDesc" class="nlist">
					<li>선택하신 행정 경계는 전국, 시군구, 읍면동, 집계구 단위의 행정동 경계를 의미합니다.</li>
					<li>선택하신 데이터의 행정구역 별 특성을 도출하실 때 활용할 수 있습니다.</li>
				</ul>
			</div>
			<!-- 경계타입선택 END -->
		
			<!-- 지역설정화면 START-->
			<div id="regionPage" class="pageView"  style="display:none;">
		
				<!-- 집계 범위선택 -->
				<div id="admTypeArea" class="wTableBox t01">
					<table class="wTable">
						<tr>
							<th>집계 범위선택</th>
							<td>
								<input type="radio" name="admType" id="sido_type"  class="admType rdEtc" value="sido"  checked="checked" />
					            <label for="sido_type" class="rdlabel" >전국(시도)</label>
					            <input type="radio" name="admType" id="sgg_type"  class="admType rdEtc"  value="sgg" />
					            <label for="sgg_type" class="rdlabel">시군구</label>
					            <input type="radio" name="admType" id="dong_type"  class="admType rdEtc"  value="dong" />
					            <label for="dong_type" class="rdlabel">읍면동</label>
					            <input type="radio" name="admType" id="totaloa_type"  class="admType rdEtc"  value="totaloa" />
					            <label for="totaloa_type" class="rdlabel">집계구</label>
							</td>
						</tr>
					</table>
				</div>
	
				<!-- 지역선택 영역  -->
				<div id="regionArea" >
					<div class="targetCateBox">
						<div class="item">
							<ul id="sidoList" ></ul>
						</div>
						<div class="item t01">
							<ul id="sggList"></ul>
						</div>
						<div class="item">
							<ul id="admList"></ul>
						</div>
					</div>
					<div>
						<ul  class="nlist"><li id="admTypeDesc"></li></ul>
					</div>
				</div>
				
				<!-- 그리드 경계 범위선택  -->
				<div id="gridArea" style="display:none;">
					<table class="wTable">
						<tr>
							<th>그리드 경계 간격 선택</th>
							<td>
								<input type="radio" name="gridType" id="100_type"  class="gridType rdEtc" value="100"  checked="checked" />
					            <label for="100_type"" class="rdlabel" >100m</label>
					            <input type="radio" name="gridType" id="1000_type"  class="gridType rdEtc"  value="1000"   checked="checked" />
					            <label for="1000_type" class="rdlabel">1km</label>
					            <input type="radio" name="gridType" id="10000_type"  class="gridType rdEtc"  value="10000" />
					            <label for="10000_type" class="rdlabel">10km</label>
					            <input type="radio" name="gridType" id="100000_type"  class="gridType rdEtc"  value="100000" />
					            <label for="100000_type" class="rdlabel">100km</label>
							</td>
						</tr>
					</table>
				</div>
				
				<!-- 헥사곤 경계 범위선택  -->
				<div id="hexagonArea" style="display:none;">
					<table class="wTable">
						<tr>
							<th>헥사곤 경계 간격 선택</th>
							<td>
								<input type="radio" name="hexagonType" id="100_type"  class="hexagonType rdEtc" value="1000"  checked="checked" />
					            <label for="1000_type"" class="rdlabel" >1km</label>
					            <input type="radio" name="hexagonType" id="1000_type"  class="hexagonType rdEtc"  value="5000" />
					            <label for="5000_type" class="rdlabel">5km</label>
					            <input type="radio" name="hexagonType" id="10000_type"  class="hexagonType rdEtc"  value="10000" />
					            <label for="10000_type" class="rdlabel">10km</label>
							</td>
						</tr>
					</table>
				</div>
				
			</div>
			<!-- 지역설정화면 END-->
			
			<!-- 임의영역화면 START -->
			<div id="polygonPage" class="pageView"  style="display:none;">
		
				<!-- 집계 범위선택 -->
				<div id="polygonTypeArea" class="wTableBox t02">
					<table class="wTable">
						<tr>
							<th>임의영역 그리기 모양 선택</th>
							<td>
								<input type="radio" name="polygonType" id="circle"  class="polygonType rdEtc" value="circle"  checked="checked" />
					            <label for="circle" class="rdlabel polygon" ><img src="${pageContext.request.contextPath}/img/analysis/ico_shapeList01.png" /></label>
					            <input type="radio" name="polygonType" id="rectangle"  class="polygonType rdEtc"  value="rectangle" />
					            <label for="rectangle" class="rdlabel polygon"><img src="${pageContext.request.contextPath}/img/analysis/ico_shapeList02.png" /></label>
					            <input type="radio" name="polygonType" id="polygon"  class="polygonType rdEtc"  value="polygon" />
					            <label for="multi" class="rdlabel polygon"><img src="${pageContext.request.contextPath}/img/analysis/ico_shapeList03.png" /></label>
							</td>
						</tr>
					</table>
				</div>
	
				<!-- 지역선택 영역  -->
				<div id="mapRgn_1" style="height:550px;margin:50px 30px 50px 30px;border:2px solid #879099;">
				
				</div>
			</div>
			<!-- 임의영역화면 END -->
			
			<!-- 요약화면 START -->
			<div id="summaryPage"  class="pageView" style="display:none;">
				<p class="analysisText01"><span id="summaryNm"></span>을(를) 실행하기 위해 필요한 데이터와 지역을 모두 선택했습니다. 선택하신 내용을 확인하고 분석의 이름을 작성해 주세요.</p>
				<p class="analysisText02">선택 조건 Summary</p>
				<div class="wTableBox">
					<table class="wTable">
						<colgroup>
							<col width="200" />
							<col width="" />
						</colgroup>
						
						<!-- 데이터간 연산분석 일 경우, 데이터조건 A,B 표출 -->
						<!-- 그 이외의 분석일 경우, 데이터조건만 표출 -->
						<c:set var="type" value="${type}" />
						<c:choose>
							<c:when test="${type eq 'operation'}">
								<tr>
									<th>데이터 A 조건</th>
									<td>
										<div id="data1TextArea" class="form t01"></div>
									</td> 
								</tr>
								<tr>
									<th>데이터 B 조건</th>
									<td>
										<div id="data2TextArea" class="form t01"></div>
									</td> 
								</tr>
								<tr>
								<th>연산 조건</th>
									<td>
										<div id="regionTextArea" class="form t01"></div>
									</td> 
								</tr> 
							</c:when>
							<c:otherwise>
								<tr>
									<th>데이터 조건</th>
									<td>
										<div id="dataTextArea" class="form t01"></div>
									</td> 
								</tr>
								<tr id= "bufferInfoText" style="display:none;">
									<th>버퍼 조건</th>
									<td>
										<div id="bufferTextArea" class="form t01"></div>
									</td> 
								</tr>
								<tr>
									<th>지역 조건</th>
									<td>
										<div id="regionTextArea" class="form t01"></div>
									</td> 
								</tr> 
								<tr id= "summaryInfoText" style="display:none;">
									<th>집계 조건(선택) <input type="checkbox"  id="summaryInfoCheck"  class="optionCheck chkEtc" /></div></th>
									<td>
										<div id="summaryTextArea" class="searchArea">
										<select id="summaryField" disabled></select>
										<select id="summaryOper" disabled>
										<option value="sum">합산</option>
										<option value="avg">평균</option>
										<option value="min">최대</option>
										<option value="max">최소</option>
										<option value="std">표준편차</option>
										<option value="var">분산</option>
										</select>
										</div>
									</td> 
								</tr> 
							</c:otherwise> 
						</c:choose>

						
					</table>
				</div>
	
				<p class="analysisText02">분석 이름</p>
				<div class="wTableBox">
					<table class="wTable">
						<tr> 
							<td>
								<input type="text"  id="analysisTitle" class="inp01" placeholder="분석의 이름을 작성해 주세요." /> 
							</td> 
						</tr> 
					</table>
				</div>
			</div>
			<!-- 요약화면 END -->
			
			<!-- 사용자경계선택 화면 START -->
			<div id="userPolygonPage" class="pageView"  style="display:none;">
				<p class="analysisText01">선택된 데이터의 분석 기준이 되는 경계 유형 및 대상 지역 범위 설정이 필요합니다. 경계 분석의 유형을 선택해 주세요.</p>
				<div class="theaderBox">
					<a href="javascript:void(0)" id="myPolygonData" class="userPolygonType on">나의 데이터</a>
					<a href="javascript:void(0)" id="sharePolygonData" class="userPolygonType">공유된 데이터</a> 
				</div>
				  
				<table class="listTable01" id="userPolygonDataTable"></table> 
				<div class="pageArea">
						<span id="userPolygonDataPage"  class="pages"></span>
					</div>
			</div>
			<!-- 사용자경계선택 화면 END -->
			
			<!-- 연산조건선택 화면 START -->
			<div id="calculatePage" class="pageView"  style="display:none;">
				<p class="analysisText01">데이터 간 연산 분석을 실행하기 위해서는 분석 대상 데이터를 우선적으로 선택하여야 합니다. 분석을 원하시는 데이터의 유형과 상세 조건을 선택하시기 바랍니다</p>
					<div class="josabox mt30"  id="calculateArea">
						<div class="item n01 bgc01">
							<p class="tit">합산</p>
							<ul>
								<li><a href="javascript:void(0)" id="sum" class="calculateItem on">합산</a></li> 
							</ul>
						</div>
						<div class="item n02 bgc02">
							<p class="tit">차감</p>
							<ul>
								<li><a href="javascript:void(0)" id="minus"  class="calculateItem" >데이터A - 데이터B</a></li>
								<li><a href="javascript:void(0)" id="minus2"  class="calculateItem" >데이터B - 데이터A</a></li> 
							</ul>
						</div>
						<div class="item n01 bgc03">
							<p class="tit">곱</p>
							<ul>
								<li><a href="javascript:void(0)" id="multi"  class="calculateItem" >곱</a></li> 
							</ul>
						</div>
						<div class="item n02 bgc04">
							<p class="tit">비교</p>
							<ul>
								<li><a href="javascript:void(0)" id="comp"  class="calculateItem" >데이터A ÷ 데이터B</a></li>
								<li><a href="javascript:void(0)" id="comp2"  class="calculateItem" >데이터B ÷ 데이터A</a></li> 
							</ul>
						</div>
						<div class="item n01 bgc05">
							<p class="tit">평균</p>
							<ul>
								<li><a href="javascript:void(0)" id="avg"  class="calculateItem" >평균</a></li> 
							</ul>
						</div>
					</div>
			</div>
			<!-- 연산조건선택 화면 END -->
			
			<!-- 버퍼 임의POI/도로네트워크 화면 START -->
			<div id="bufferPolygonPage" class="pageView"  style="display:none;">
				<p id="bufferPolygonPageTitle" class="analysisText01">버퍼분석의 임의 POI는 성능이슈로 최대 20개 내로 갯수를 제한하고 있습니다.</p>
				<!-- 지역선택 영역  -->
				<div id="mapRgn_2" style="height:550px;margin:50px 30px 50px 30px;border:2px solid #879099;"></div>
			</div>
			<!-- 버퍼 임의POI/도로네트워크 화면 END -->
			
			<!-- POI반경설정화면 START-->
			<div id="poiRadiusPage" class="pageView"  style="display:none;">
				<div class="wTableBox" id="userDataPoi" >
					<table class="wTable">
						<tr class="buffer_poi_radius" >
							<th>POI 반경 설정</th>
							<td>
								<div class="form rdtype">
									<input type="radio" id="cateChk01" name="poiRadius"
										class="rdEtc" value="S" checked="checked" /> <label
										for="cateChk01">POI 반경 설정 (정적분석)</label> <select
										class="select" id="poiRadiusDistance">
										<option value="500">500m</option>
										<option value="1000">1km</option>
										<option value="2000">2km</option>
										<option value="3000">3km</option>
										<option value="4000">4km</option>
										<option value="5000">5km</option>
									</select>
								</div>
								<div class="form rdtype" id="dynamicPoiArea">
									<input type="radio" id="cateChk02" name="poiRadius"
										class="rdEtc" value="D" /> <label for="cateChk02">POI 반경 찾기 (동적분석)</label> <input type="text" class="inp01 w130" name="poi_number"
										id="poiRadiusPopul" size=4  onchange="$commonAnalysis.event.checkNumber(this);" maxlength=6/>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- POI반경설정화면 END-->	
			
			<!-- 근접이웃수 설정화면 START-->
			<div id="neighborCntPage" class="pageView" style="display:none; ">
				<div class="wTableBox" id="userDataKvalue" >
					<table class="wTable">
						<tr class ="neighbor_cnt" >
							<th>근접 이웃 수</th>
							<td>
								<div class="form">
									<select id="user_k_value" name="neighbor_cnt" class="select">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th colspan="2" style="color:red;font-size:11px;">*근접 이웃 수를 크게하면 분석 수행시간이 길어질 수 있습니다.</th>
						</tr>
					</table>
				</div>
			</div>
			<!-- 근접이웃수 설정화면 END-->
			 
			<!-- 상세조건 선택하기  -->
			<div class="btnBox nextPageArea"> 
				<a class="prevPageBtn"  href="javascript:void(0)" onclick="javascript:$commonAnalysis.ui.doPrevPageView();">이전</a>
	 			<a class="nextPageBtn"  href="javascript:void(0)" onclick="javascript:$commonAnalysis.ui.doNextPageView();">다음</a>
	 			<a class="excuteBtn"  href="javascript:void(0)" onclick="javascript:$commonAnalysis.ui.doExecuteAnalysis();">분석 실행하기</a>
			</div>

		</div>	
		
		<!-- 임의영역경계 저장 팝업창 START -->
		<div id="polygonSavePopup" style="display:none;">
			<div class="popupArea">
			 	<table>
			 		<tr>
			 			<td>
			 				<input type="text"  id="polygonDesc" name="polygonDesc" placeholder="임의영역 경계명을 입력하세요." maxlength="85">
			 			</td>
			 		</tr>
			 	</table>
			 	<ul class="nlist"><li>저장된 경계는 사용자경계 항목에서 재활용할 수 있습니다.</li></ul>
				<div class="pBtnBox">
					<button type="button"  id="savePolygonBtn">저장</button>
				</div>
		 	</div>
		</div>
		<!-- 임의영역경계 저장 팝업창 END -->
		
		<!-- 임의영역POI 저장 팝업창 START -->
		<div id="poiSavePopup" style="display:none;">
			<div class="popupArea">
			 	<table>
			 		<tr>
			 			<td>
			 				<input type="text"  id="poiDesc" name="poiDesc" placeholder="임의영역 poi명을 입력하세요." maxlength="85">
			 			</td>
			 		</tr>
			 	</table>
			 	<ul class="nlist"><li>저장된 임의POI는 POI를 사용하는 분석에서 재활용할 수 있습니다.</li></ul>
				<div class="pBtnBox">
					<button type="button"  id="savePoiBtn">저장</button>
				</div>
		 	</div>
		</div>
		<!-- 임의영역POI 저장 팝업창 END -->
		
	</div>

	<!-- commonDataView -->
	<jsp:include page="/view/common/commonDataView"></jsp:include>
	
	<!-- footer -->
	<jsp:include page="/view/common/includeFooter"></jsp:include>
	
</body>
</html>