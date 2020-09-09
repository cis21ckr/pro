<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/analysis/analysis.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/analysisMain.js"></script>
	
	<script>
   		$(document).ready(
			function() {
				// mng_s 2019. 06. 05 j.h.Seok
				$log.srvLogWrite("Z0", "04", "01", "01", "", "");
				
			 	var type = "${type}";
				$analysisMain.ui.doChangeView(type);
   		});
    </script>
	
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<p class="home">데이터 분석 ></p>
				<h1>데이터 분석 </h1>
				<h2>SGIS pro에서 활용 가능한 데이터를 이용하여 다양한 분석방법을 활용할 수 있습니다.</h2> 
			</div>						
		</div>
		
		<div class="container">
			<div id="basicAnalysis">
				<div class="barBox">
					<p class="t01">기초 공간분석</p>
					<p class="t02">전환된 위치정보를 기반으로 <span>경계를 생성</span> 할 수 있는 공간분석기법 입니다.</p>
					<a class="btn"  href="${pageContext.request.contextPath}/view/analysis/analysisGuide">공간 분석 활용 사례보기</a>
				</div>
	
				<ul class="quickList">
					<li class="fl">
						<img src="${pageContext.request.contextPath}/img/analysis/etc_quickList01.jpg" />
						<div class="cont">
							<p class="t01">경계 분석</p>
							<p class="t02">경계 분석은 행정경계를 기준으로 선택한 데이터를 분석하여 각 영역의 특성을 비교 할 수 있는 분석 기법입니다.</p>
							<a class="btn" href="javascript:void(0)" onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/boundary';">분석하러가기</a>
						</div>
					</li>
					<li class="fr">
						<img src="${pageContext.request.contextPath}/img/analysis/etc_quickList02.jpg" />
						<div class="cont">
							<p class="t01">보로노이 다이어그램</p>
							<p class="t02">보로노이 다이어그램은 개별 위치정보 사이의 거리를 기준으로 이등분하여 임의의 경계를 생성할 수 있는 분석 기법 입니다.</p>
							<a class="btn"  href="javascript:void(0)" onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/voronoi';">분석하러가기</a>
						</div>
					</li>
				</ul>
			</div>
			
			<div id="expertAnalysis">
				<div class="barBox" >
				<p class="t01">응용 공간분석</p>
				<p class="t02">위치정보를 기반으로 <span>데이터의 관계성과 특성</span>을 파악할 수 있는 공간분석기법 입니다.</p>
				<a class="btn" href="${pageContext.request.contextPath}/view/analysis/analysisGuide">공간 분석 활용 사례보기</a>
			</div>

			<ul class="quickList">
				<li class="fl">
					<img src="${pageContext.request.contextPath}/img/analysis/etc_quickList03.jpg" />
					<div class="cont">
						<p class="t01">버퍼 분석</p>
						<p class="t02">버퍼 분석은 수요 데이터 위에 공급 
						데이터의 영향 반경을 표시함으로써 공급이 
						밀집된 지역과 사각지대를 지도상에서 
						확인할 수 있는 분석 기법 입니다.
						</p>
						<a class="btn" href="javascript:void(0)" onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/buffer';">분석하러가기</a>
					</div>
				</li>
				<li class="fr">
					<img src="${pageContext.request.contextPath}/img/analysis/etc_quickList04.jpg" />
					<div class="cont">
						<p class="t01">입지 계수</p>
						<p class="t02">입지 계수는 분석대상지역의 인구, 가구, 
						주택, 사업체, 종사자 등의 지역적 특성을 
						지수화하여 상위 레벨에서 유사한 지역을 
						도출하는 분석기법 입니다.</p>
						<a class="btn" href="javascript:void(0)" onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/location'">분석하러가기</a>
					</div>
				</li>
			</ul>

			<ul class="quickList">
				<li class="fl">
					<img src="${pageContext.request.contextPath}/img/analysis/etc_quickList05.jpg" />
					<div class="cont">
						<p class="t01">공간자기상관 분석</p>
						<p class="t02">공간자기상관분석은 지리적으로 가까울 
						수록 선택 지역의 공간 특성에 영향을 
						미치는지 선택 지역과 근접 지역의 
						상관관계를 도출하는 분석기법 입니다. </p>
						<a class="btn" href="javascript:void(0)" onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/spatial'">분석하러가기</a>
					</div>
				</li>
				<li class="fr">
					<img src="${pageContext.request.contextPath}/img/analysis/etc_quickList06.jpg" />
					<div class="cont">
						<p class="t01">데이터 간 연산 분석</p>
						<p class="t02">데이터 간 연산 분석은 사용자의 데이터 
						두개를 연산(＋,－,×,÷, 평균)하여 
						데이터의 특성을 도출하는 분석기법 입니다.
						</p>
						<a class="btn" href="javascript:void(0)" onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/operation'">분석하러가기</a>
					</div>
				</li>
			</ul>
			</div>
			
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="/view/common/includeFooter"></jsp:include>
	
</body>
</html>