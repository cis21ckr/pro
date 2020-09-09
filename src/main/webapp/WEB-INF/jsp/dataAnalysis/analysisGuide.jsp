<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/analysis/analysis.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/analysis/use.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/analysisMain.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/analysisGuideMain.js"></script>
	
	<!-- mng_s 2019. 06. 04 j.h.Seok -->
	<script>
		$(document).ready(
			function() {
				$log.srvLogWrite("Z0", "04", "08", "01", "", "");
		});
	</script>
	<!-- mng_e 2019. 06. 04 j.h.Seok -->
	
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<p class="home">데이터 분석 ></p>
				<h1>활용사례 </h1>
				<h2>SGIS pro에서 활용 가능한 데이터를 생성하고 관리할 수 있습니다.</h2>
			</div>						
		</div>
		

		<!-- contents start  -->
		
		<div class="container">
			<div class="useBox">
				<ul id ="guideContetnBox">
<%-- 					<li>
						<h1>1</h1>
						<div class="normal">
							<div class="normal_tilte">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon01_up.png" alt=""/></span>
								미세먼지농도가 급격히 높아졌네.<br/>
								대기질측정기를 좀 더 골고루 <br/>
								설치 해야겠다!
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon01_down.png" alt=""/></span>										
							</div>
							<div class="normal_cont">
								경상남도 보건환경연구원 <br/>
								환경연구부에 근무하는 <br/>
								김연우씨의 고민
							</div>
						</div>
						<div class="hover">
							<div class="hover_tilte">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
								미세먼지농도가 급격히 높아졌네.<br/>
								대기질측정기를 좀 더 골고루 <br/>
								설치 해야겠다!
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>										
							</div>	
							<div class="hover_cont">
								<p>경상남도 세부 지역별로 미세먼지 농도에 대해 상세한 정보를 전달하고 싶은데...경상남도 대기질측정기가 골고루 설치하고 싶은데 어떻게 확인하는게 좋을까??</p>
								<button class="pbtn01">추천 분석: 보로노이 다이어그램 보기</button>
							</div>
						</div>
					</li>
					<li>
						<h1>2</h1>
						<div class="normal">
							<div class="normal_tilte">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon02_up.png" alt=""/></span>
								파주시의 유아인구와 유치원 <br/>
								시설의 비율을 통해 부족한 지역이<br/>
								어딘지 알아야겠다
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon02_down.png" alt=""/></span>										
							</div>
							<div class="normal_cont">
								파주교육지원청 <br/>
								경영지원과에 근무하는 <br/>
								이우진씨의 고민
							</div>
						</div>
						<div class="hover">
							<div class="hover_tilte blue">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
								파주시의 유아인구와 유치원 <br/>
								시설의 비율을 통해 부족한 지역이<br/>
								어딘지 알아야겠다
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>										
							</div>	
							<div class="hover_cont">
								<p>파주시 유아인구와 유치원 시설 자료를 활용해서  유아인구 대비 유치원시설이 어디가 부족한지 한눈에 확인할 수 있을까??</p>
								<button class="blue pbtn02">추천 분석: 데이터 간 연산 분석 보기</button>
							</div>
						</div>
					</li>
					<li>
						<h1>3</h1>
						<div class="normal">
							<div class="normal_tilte">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon01_up.png" alt=""/></span>
								<!-- 전국 IT산업의 발달 현황을<br/> -->
								서울 IT산업의 발달 현황을<br/>
								확인하고 그에 합당한 지원예산<br/>
								계획을 세워야겠다
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon01_down.png" alt=""/></span>										
							</div>
							<div class="normal_cont">
								정보통신산업진흥원에 <br/>
								근무하는 이예림씨가 <br/>
								수행해야할 업무
							</div>
						</div>
						<div class="hover">
							<div class="hover_tilte">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
								<!-- 전국 IT산업의 발달 현황을<br/> -->
								서울 IT산업의 발달 현황을<br/>
								확인하고 그에 합당한 지원예산<br/>
								계획을 세워야겠다
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>										
							</div>	
							<div class="hover_cont">
								<p>IT산업 지원예산 계획을 수립해야 하는데 지역별 IT 특화 정도를 파악해서 좀 더 체계적인 지원계획을 세워수는 없을까?</p>
								<button class="pbtn03">추천 분석: 입지 계수 보기</button>
							</div>
						</div>
					</li>
					<li>
						<h1>4</h1>
						<div class="normal">
							<div class="normal_tilte">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon02_up.png" alt=""/></span>
								성남시 판교의 IT산업 발달에 관한<br/>
								상관관계를 벤치마킹해 수원시<br/>
								IT산업육성에 도움을 주고싶다!
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon02_down.png" alt=""/></span>										
							</div>
							<div class="normal_cont">
								수원시청 기업지원과에<br/>
								근무하는 이하선씨의 고민
							</div>
						</div>
						<div class="hover">
							<div class="hover_tilte  blue">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
								성남시 판교의 IT산업 발달에 관한<br/>
								상관관계를 벤치마킹해 수원시<br/>
								IT산업육성에 도움을 주고싶다!
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>										
							</div>	
							<div class="hover_cont">
								<p>판교 IT산업 발달의 상관관계를 벤치마킹해서 수원시의 IT산업 발달에 도움을 줄 수 있는 방법이 있는지 살펴볼까??</p>
								<button class="blue pbtn04" >추천 분석: 공간자기상관분석 보기</button>
							</div>
						</div>
					</li>
					<li>
						<h1>5</h1>
						<div class="normal">
							<div class="normal_tilte">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon01_up.png" alt=""/></span>
								우리 서울시 중구의 65세<br/>
								이상 1인 가구의 실제 거주지<br/>
								분포는 어떻게 될까?
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon01_down.png" alt=""/></span>										
							</div>
							<div class="normal_cont">
								서울시청 복지본부  <br/>
								어르신복지과 어르신 <br/>
								정책팀에 근무하는 <br/>
								최우식씨의 고민
							</div>
						</div>
						<div class="hover">
							<div class="hover_tilte">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
								우리 서울시 중구의 65세<br/>
								이상 1인 가구의 실제 거주지<br/>
								분포는 어떻게 될까?
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>										
							</div>	
							<div class="hover_cont">
								<p>기존 엑셀자료만 가지곤 어떻게 분포 하고 있는지 한눈에 파악하기가 어려운데… 기존의 행정경계보다 더 객관적으로 65세 이상 1인가구 현황을 파악할 수 있으면 좋겠다!!</p>
								<button class="pbtn05">추천 분석: 경계 분석 보기</button>
							</div>
						</div>
					</li>
					<li>
						<h1>6</h1>
						<div class="normal">
							<div class="normal_tilte">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon02_up.png" alt=""/></span>
								서울시 중구의 노인요양시설이 <br/>
								부족한데 어디에 추가로 지을지<br/>
								찾아봐야겠다
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon02_down.png" alt=""/></span>										
							</div>
							<div class="normal_cont">
								서울시청 복지본부  <br/>
								어르신복지과 어르신  <br/>
								정책팀에 근무하는  <br/>
								이우현씨의 업무
							</div>
						</div>
						<div class="hover">
							<div class="hover_tilte  blue">
								<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
								서울시 중구의 노인요양시설이 <br/>
								부족한데 어디에 추가로 지을지<br/>
								찾아봐야겠다
								<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>										
							</div>	
							<div class="hover_cont">
								<p>서울시 중구의 65세 이상 1인 가구 대비 노인요양시설이 부족해 추가로 시설을 설립해야 하는데 어느 곳에 시설을 지어야 할까??</p>
								<button class="blue pbtn06">추천 분석: 버퍼 분석 보기</button>
							</div>
						</div>
					</li> --%>
				</ul>
			</div>
							
		</div>
		
		<!-- contents end  -->
		
	</div><!-- subConentWrap end-->

<!-- footer -->
<jsp:include page="/view/common/includeFooter"></jsp:include>

	<!-- popup start-->
	<div class="usePopupWrap">
		<div class="usePopup p01" id = "17697">
			<div class="usePopupTitle">
				<button><img src="${pageContext.request.contextPath}/img/analysis/use/popup_btn.png" alt=""/></button>
				<div class="ml50">
					<img src="${pageContext.request.contextPath}/img/analysis/use/popup_img01.png" alt=""/>
				</div>
				<div class="ml50">
					<h1>
						<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
						미세먼지농도가 급격히 높아졌네<br/>
						대기질측정기를 좀 더 골고루 설치해야 겠다!
						<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>	
					</h1>
					<h2>
					경상남도 세부 지역별로 미세먼지 농도에 대해 상세한 정보를 전달하고 싶은데…<br/>
					경상남도 대기질측정기가 골고루 설치하고 싶은데 어떻게 확인하는게 좋을까??
					</h2>
				</div>
			</div>
			<div class="usePopupCont">
				<div class="redbox">
					<h1>김연우씨는 SGIS pro의 <span>“보로노이 다이어그램”</span>을 활용하였습니다.</h1>
					<dl>
						<dt>보로노이 다이어그램의 특징</dt>
						<dd>
							개별 위치정보들의 중간지점에 경계를 생성해서 형성된 구역들의 면적을 비교할 수 있습니다<br/>
							*경계 생성 기준 : 개별 위치정보 사이의 거리를 수직 이등분
						</dd>
						<dt>새로운 경계를 생성</dt>
						<dd>
							형성된 구역들의 면적을 타 구역의 면적과 비교하고 평균 면적을 확인 할 수 있음<br/>
							보로노이 다이어그램을 통해 생성된 경계는 SGIS pro의 다른 분석에서 경계로 활용할 수 있음
						</dd>
					</dl>
				</div>
				<div class="greenbox">							
					<h1>김연우씨는 <span>“보로노이 다이어그램”</span>을 어떻게 활용 하였을까요?</h1>
					<div class="stepBox">
						<h1>Step1. 데이터 준비</h1>
						<dl>
							<dt>내가 가진 데이터를 위치기반데이터로 전환</dt>
							<dd>SGIS pro의 공간분석을 위해서는 데이터를 업로드해서 <br/>좌표기반의 위치데이터로 전환해야 하는구나</dd>
							<dd>내가 가지고 있는<span onclick="javascript:window.location.href='${pageContext.request.contextPath}/sample/경상남도_대기오염측정소설치현황.csv';" style="cursor:pointer;">“경상남도_대기오염측정소설치현황.csv“</span> <br/>파일을 활용해 봐야지</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img01.png" alt="데이터 준비"/>
					</div>
					<div class="stepBox">
						<h1>Step2. 분석조건 선택비</h1>
						<dl>
							<dt>전환된 위치기반데이터가 포함된 지역 선택 </dt>
							<dd>위치데이터로 전환한 지역의 범위가 경상남도니까<br/><span>“경상남도”</span>를 선택하면 되겠지</dd>
							<dd>경상남도 내에 있는 대기오염측정소 위치를 기준으로<br/>지도 상에 표시되려나?</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img02.png" alt="분석조건 선택비"/>
					</div>
					<div class="stepBox">
						<h1>Step3. 분석결과 확인</h1>
						<dl>
							<dt>새로운 경계 생성과 각 구역의 면적 확인 </dt>
							<dd>보로노이 경계라는게 대기오염측정소 위치를 기준으로<br/>중간 지점의 경계를 만들어 주는 거였네!</dd>
							<dd>이걸보면<span>대기질측정소의 분포에 따라 면적이 다르게 나타나네!</span><br/>대기질측정소를 더욱 고르게 설치하려면 보로노이 경계의<br/>면적이 좀더 넓은 지역에 설치해야겠구나</dd>
							<dd>보로노이 다이어그램으로 생성한 경계를<br/>SGIS pro의<span> 다른 분석에서 경계로 활용</span>할 수 있네!!</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img03.png" alt="분석결과 확인"/>
					</div>
				</div>						
			</div>
			<div class="usePopupB">
				<p><img src="${pageContext.request.contextPath}/img/analysis/use/popup_bottom_img01.png" alt=""/></p>
				<%-- <button onclick="javascript:window.location.href='${pageContext.request.contextPath}/view/analysis/resultMap?id=18054';">김연우씨의 경상남도 대기질측정소 <span>“보로노이 다이어그램” </span>결과보기</button> --%>
				<button >김연우씨의 경상남도 대기질측정소 <span>“보로노이 다이어그램” </span>결과보기</button>
			</div>
		</div><!-- 보로노이 다이어그램 end-->
		
		<div class="usePopup p02" id ="17704">
			<div class="usePopupTitle blue">
				<button><img src="${pageContext.request.contextPath}/img/analysis/use/popup_btn.png" alt=""/></button>
				<div class="ml50">
					<img src="${pageContext.request.contextPath}/img/analysis/use/popup_img02.png" alt=""/>
				</div>
				<div class="ml50">
					<h1>
						<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
						파주시 유아인구와 유치원 시설의 비율을<br/>
						통해 부족한 지역이 어딘지 알아야겠다
						<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>	
					</h1>
					<h2>
					파주시 유아인구 와 유치원 시설 자료를 계산해서 수용율은 파악할 수 있는데  <br/>
					파주시 유아인구 대비 유치원시설이 부족한지를 파악하기 어렵네… <br/>어떻게 하면 한눈에 확인할 수 있을까?
					</h2>
				</div>
			</div>
			<div class="usePopupCont">
				<div class="redbox">
					<h1>이우진씨는 SGIS pro의  <span>“데이터 간 연산분석”</span>을 활용하였습니다</h1>
					<dl>
						<dt>데이터 간 연산분석의 특징</dt>
						<dd>
							두 개의 데이터를 연산(+,-,×,÷,평균)하여 연산 결과를 지도 상에서 시각화하여 직관적으로 데이터의 의미를 <br/>확인할 수 있습니다
						</dd>
						<dt>데이터의 활용성 증가</dt>
						<dd>
							형성된 구역들의 면적을 타 구역의 면적과 비교하고 평균 면적을 확인 할 수 있음
						</dd>
					</dl>
				</div>
				<div class="greenbox">							
					<h1>이우진씨는 <span>“데이터 간 연산분석”</span>을 어떻게 활용 하였을까요?</h1>
					<div class="stepBox">
						<h1>Step1. 데이터 준비</h1>
						<dl>
							<dt>동일한 경계를 가진 두 개의 데이터를 연산</dt>
							<dd>두 개의 데이터를 연산하기 위해선 같은 조건의<br/>데이터를 활용해야하네…<br/>
							같은 지역 내 같은 경계를 가진 데이터 A와 데이터 B가<br/>필요하겠구나</dd>
							<dd>내가 가지고 있는<span onclick="javascript:window.location.href='${pageContext.request.contextPath}/sample/파주시_유아인구0-4세_이하.xlsx';" style="cursor:pointer;">"파주시_유아인구0-4세_이하.xlsx"</span>데이터와<br/><span>파주시 어린이집 현황</span>센서스 데이터를
							활용해 유아인구대비 <br/>유치원시설의 수용현황을 살펴봐야지!</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img04.png" alt="데이터 준비"/>
					</div>
					<div class="stepBox mt30">
						<h1>Step2. 분석조건 선택비</h1>
						<dl>
							<dt>연산 종류 선택</dt>
							<dd>선택할 수 있는 연산 종류는 +,-,×,÷,평균이 있구나</dd>
							<dd>나는 인구대비 시설이 부족한 지역을 확인해야 하니<br/><span>“÷＂</span>를 선택해야지!</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img05.png" alt="분석조건 선택비"/>
					</div>
					<div class="stepBox">
						<h1>Step3. 분석결과 확인</h1>
						<dl>
							<dt>파주시 유아인구대비 유치원이 부족한 지역 확인</dt>
							<dd>데이터 간 연산분석 결과를 색상지도로 확인하니 파주시 <br/>전체 현황을 한눈에 확인할 수 있구나 </dd>
							<dd>엑셀에서 연산했을 때는 몇 개 동이 유아인구 대비 유치원이<br/> 부족한지만 확인했는데, <br/><span>지도에서 보니 생각보다 넓은 지역에 유치원이 부족하네</span></dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img06.png" alt="분석결과 확인"/>
					</div>
				</div>						
			</div>
			<div class="usePopupB">
				<p><img src="${pageContext.request.contextPath}/img/analysis/use/popup_bottom_img02.png" alt=""/></p>
				<button  onclick="javascript:window.location.href='${pageContext.request.contextPath}/view/analysis/resultMap?id=18064';">이우진씨의 파주시 유아인구 대비 유치원의 수용현황 <span>“데이터 간 연산분석” </span>결과보기</button>
			</div>
		</div><!-- 데이터 간 연산분석 end-->
		
		<div class="usePopup p03" id="17699">
			<div class="usePopupTitle ">
				<button><img src="${pageContext.request.contextPath}/img/analysis/use/popup_btn.png" alt=""/></button>
				<div class="ml50">
					<img src="${pageContext.request.contextPath}/img/analysis/use/popup_img03.png" alt=""/>
				</div>
				<div class="ml50">
					<h1>
						<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
						<!-- 전국 IT산업의 발달 현황을 확인하고 <br/> -->
						서울 IT산업의 발달 현황을 확인하고 <br/>
						그에 합당한 지원예산계획을 세워야 겠다
						<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>	
					</h1>
					<h2>
						IT산업 지원예산 계획을 수립해야 하는데 지역별 IT 특화 정도를 파악해서  <br/>
						좀 더 체계적인 지원계획을 세울 수 없을까??
					</h2>
				</div>
			</div>
			<div class="usePopupCont">
				<div class="redbox">
					<h1>이예림씨는 SGIS pro의  <span>“입지 계수”</span>를 활용하였습니다</h1>
					<dl>
						<dt>입지 계수의 특징</dt>
						<dd>동등한 행정구역에 해당하는 지역들의 입지 계수를 비교하여 지역의 특성을 상대적으로 확인할 수 있습니다 </dd>
						<dt>상대적 지역 특화도 확인</dt>
						<dd>어떤 지역의 산업 및 특성에 대해 전국의 동일한 산업 및 특성과 비교하여 상대적인 중요도 확인</dd>
					</dl>
				</div>
				<div class="greenbox">							
					<h1>이예림씨는 <span>“입지 계수”</span>를 어떻게 활용 하였을까요?</h1>
					<div class="stepBox">
						<h1>Step1. 데이터 준비</h1>
						<dl>
							<dt>통계청 센서스 데이터 활용</dt>
							<dd>내가 가진 데이터만 사용할 수 있는게 아니라 통계청 <br/>센서스 데이터도 활용할 수 있구나</dd>
							<dd>통계청 데이터 선택하기에서 <span>“통신/IT 업종”</span>을 선택해야지!</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img07.png" alt="데이터 준비"/>
					</div>
					<div class="stepBox">
						<h1>Step2. 분석조건 선택비</h1>
						<dl>
							<dt>분석 지역 선택</dt>
							<!-- <dd>전국 IT업종의 입지 계수 현황을 살펴보고 싶으니<span>“전국"</span>을 <br/>선택해 분석해야지!</dd> -->
							<dd>서울 IT업종의 입지 계수 현황을 살펴보고 싶으니<span>“서울"</span>을 <br/>선택해 분석해야지!</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img08.png" alt="분석조건 선택비"/>
					</div>
					<div class="stepBox">
						<h1>Step3. 분석결과 확인</h1>
						<dl>
							<dt>입지 계수가 높은 지역 확인</dt>
							<!-- <dd>IT업종은 타 지역에 대비했을 때 서울, 대전, 제주의 입지 <br/>계수가 높구나</dd> -->
							<dd>IT업종은 타 지역에 대비했을 때 <span>강남구, 금천구</span>의 입지 <br/>계수가 높구나</dd>
							<dd>색상 지도에서 입지 계수를 확인하니 4단계로 구분되는 구나<br/>내년에는 단계별 지원을 고민해봐야겠어</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img09.png" alt="분석결과 확인"/>
					</div>
				</div>						
			</div>
			<div class="usePopupB">
				<p><img src="${pageContext.request.contextPath}/img/analysis/use/popup_bottom_img03.png" alt=""/></p>
				<button onclick="javascript:window.location.href='${pageContext.request.contextPath}/view/analysis/resultMap?id=18061';">이예림씨의 연구개발비 <span>“입지계수” </span>결과보기</button>
			</div>
		</div><!-- 입지계수 end-->
	
		<div class="usePopup p04" id="17850">
			<div class="usePopupTitle blue">
				<button><img src="${pageContext.request.contextPath}/img/analysis/use/popup_btn.png" alt=""/></button>
				<div class="ml40">
					<img src="${pageContext.request.contextPath}/img/analysis/use/popup_img04.png" alt=""/>
				</div>
				<div class="ml50">
					<h1>
						<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
						성남시 판교의 IT산업 발달에 관한 상관관계를<br/>
						벤치마킹해 수원시 IT산업육성에 도움을<br/>주고싶다!
						<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>	
					</h1>
					<h2>판교 IT산업 발달의 상관관계를 벤치마킹해서 수원시의 IT산업 발달에 도움을 줄 수 있는 방법이 <br/>있는지 살펴볼까??</h2>
				</div>
			</div>
			<div class="usePopupCont">
				<div class="redbox">
					<h1>이하선씨는 SGIS pro의 <span>“공간자기상관분석”</span>을 활용하였습니다</h1>
					<dl>
						<dt>공간자기상관분석이란?</dt>
						<dd>사용자가 선택한 지역과 주변 지역간의 상관관계를 수치화하여 지역간의 유사성을 비교할 수 있습니다.</dd>
						<dd class="font">* 공간은 다양한 특성과 패턴을 보유한 복합적인 변수로, 독립적인 두개의 변수간의 상관관계가 아닌 하나의 변수와 여러 관측 값들<br/>
						사이에서 존재하는 관계를 분석하는 것 분석기법 입니다.</dd>
						<dt>거리와 공간 특성의 상관관계</dt>
						<dd>지리적으로 가까운 지역일 수록 공간 특성이 유사성을 가지고 있는지 확인 가능</dd>
						<dd>지역 간 공간 특성 형성에 영향을 주는지 등의 상관도를 측정할 수 있음</dd>
					</dl>
				</div>
				<div class="greenbox">							
					<h1>이하선씨는 <span>“공간자기상관분석”</span>을 어떻게 활용 하였을까요?</h1>
					<div class="stepBox">
						<h1>Step1. 데이터 준비</h1>
						<dl>
							<dt>통계청 센서스 데이터 활용</dt>
							<dd>통계청에서 조사한 데이터를 SGIS pro에서도 활용할 수 있구나!</dd>
							<dd>판교에 IT산업 관련 업체가 많으니 벤치마킹할 요소를 찾을 수<br/> 있겠지??<span>“성남시 판교동의 IT 업종”</span>을 분석해야겠어</dd>
							<dt>근접 이웃 수 선택</dt>
							<dd>음…근접 이웃 수?<span>몇 개의 대상과 상관관계를 분석할 건지 설정</span><br/>하는 건가보네
							나는 좀 더 자세한 분석결과를 확인하고 싶으니까<br/>제일 높은 숫자를 선택해봐야겠다</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img10.png" alt="데이터 준비"/>
					</div>
					<div class="stepBox mt30">
						<h1>Step2. 분석조건 선택비</h1>
						<dl>
							<dt>분석 지역 선택</dt>
							<dd>나는 성남시의 판교와 주변지역의 상관관계를 보고싶으니<br/><span>“성남시 분당구＂</span>를 선택해야지!</dd>
							<dd>판교와 인접 지역들의 상관관계가 IT산업 발전에 영향을 줬는지<br/>확인할 수 있을까?</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img11.png" alt="분석조건 선택비"/>
					</div>
					<div class="stepBox">
						<h1>Step3. 분석결과 확인</h1>
						<dl>
							<dt>유사한 공간 특성을 가진 지역 확인</dt>
							<dd>성남시는 판교 주변 지역에 IT산업 관련 업체들이 <br/>많이 분포되어 서로 <span>시너지효과</span>가 나타나는 것 같군  </dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img12.png" alt="분석결과 확인"/>
					</div>
				</div>						
			</div>
			<div class="usePopupB">
				<p><img src="${pageContext.request.contextPath}/img/analysis/use/popup_bottom_img04.png" alt=""/></p>
				<button onclick="javascript:window.location.href='${pageContext.request.contextPath}/view/analysis/resultMap?id=18352;">이하선씨의 판교 IT산업 발달 <span>“공간자기상관분석" </span>결과보기</button>
			</div>
		</div><!-- 공간자기상관분석 end-->
		
		<div class="usePopup p05" id="17830">
			<div class="usePopupTitle ">
				<button><img src="${pageContext.request.contextPath}/img/analysis/use/popup_btn.png" alt=""/></button>
				<div class="ml50">
					<img src="${pageContext.request.contextPath}/img/analysis/use/popup_img05.png" alt=""/>
				</div>
				<div class="ml50">
					<h1>
						<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
						우리 서울시 중구의 65세 이상 1인 가구의 <br/>
						실제 거주지 분포는 어떻게 될까?
						<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>	
					</h1>
					<h2>
						기존 엑셀자료만 가지곤 어떻게 분포 하고 있는지 한눈에 파악하기가 어려운데… <br/>
						기존의 행정경계보다 더 객관적으로 65세 이상 1인 가구 현황을 파악할 수 있으면 좋겠다!!
					</h2>
				</div>
			</div>
			<div class="usePopupCont">
				<div class="redbox">
					<h1>최우식씨는 SGIS pro의  <span>“경계분석”</span>을 활용하였습니다</h1>
					<dl>
						<dt>경계분석의 특징</dt>
						<dd>주소 등의 위치기반의 데이터를 행정경계 뿐만 아니라 다양한 경계기준을 활용해 <br/>집계된 정보를 지도 상에서 시각화하여 보다 직관적인 지역간 비교를 할 수 있습니다 </dd>								
					</dl>
					<dl>
						<dt>다양한 경계유형을 활용</dt>
						<dd>행정경계 : 시도, 시군구, 읍면동 경계 </dd>
						<dd>임의경계 : 그리드. 헥사곤, 임의 경계, 사용자 경계 등을 활용 가능 </dd>	
						<dd>사용자의 데이터를 위치 데이터로 전환해 지도 위에 매핑함으로써 데이터의 매우 세밀한 경계 내의 결과까지 도출 가능 </dd>									
					</dl>
				</div>
				<div class="greenbox">							
					<h1>최우식씨는 <span>“경계분석”</span>을 어떻게 활용 하였을까요?</h1>
					<div class="stepBox">
						<h1>Step1. 데이터 준비</h1>
						<dl>
							<dt>내가 가진 데이터를 위치기반데이터로 전환</dt>
							<dd>SGIS pro의 공간분석을 위해서는 데이터를 업로드해서 <br/>좌표기반의 위치데이터로 전환해야 하는구나</dd>
							<dd><span>“65세이상 1인가구 “</span><br/>데이터를 선택해서 활용해 봐야지</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img13.png" alt="데이터 준비"/>
					</div>
					<div class="stepBox">
						<h1>Step2. 분석조건 선택비</h1>
						<dl>
							<dt>다양한 경계 유형 활용</dt>
							<dd>내가 선택한 경계 유형에 따라 집계할 수 있는 형태가<br/> 다양하구나! </dd>
							<dd>그리드나 헥사곤 같은 객관적인 면적 기준의 경계, <br/>직접 그린 경계나, 보르노이 다이어그램으로 만든 경계도 활용<br/> 가능하네</dd>
							<dd>나는 행정경계 말고 <span>“그리드 경계＂</span>를 선택해야지! </dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img14.png" alt="분석조건 선택비"/>
					</div>
					<div class="stepBox mt30">
						<h1>Step3. 분석결과 확인</h1>
						<div class="step">
							<dl>
								<dt>경계 유형 선택에 따른 위치 데이터 집계</dt>
								<dd>내가 선택한 경계 유형에 따라 결과지도가 이렇게 다양해 <br/>지는구나! </dd>
								<dd>그리드 경계를 사용하니 동일한 면적을 기준으로<br/>65세 이상 1인 가구가 어디에 밀집되었는지 한눈에 확인할<br/> 수 있어행정경계보다 객관적인 지표로 활용할 수 있겠군!!</dd>
							</dl>
							<ul>
								<li>
									<img src="${pageContext.request.contextPath}/img/analysis/use/step3_img01.png" alt=""/>
									<span>행정경계</span>
								</li>
								<li>
									<img src="${pageContext.request.contextPath}/img/analysis/use/step3_img02.png" alt=""/>
									<span>그리드 경계</span>
								</li>
								<li>
									<img src="${pageContext.request.contextPath}/img/analysis/use/step3_img03.png" alt=""/>
									<span>헥사곤경계</span>
								</li>
								<li>
									<img src="${pageContext.request.contextPath}/img/analysis/use/step3_img04.png" alt=""/>
									<span>사용자경계</span>
								</li>
								<li>
									<img src="${pageContext.request.contextPath}/img/analysis/use/step3_img05.png" alt=""/>
									<span>임의경계</span>
								</li>
							</ul>
						</div>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img15.png" alt="분석결과 확인" />
					</div>
				</div>						
			</div>
			<div class="usePopupB">
				<p><img src="${pageContext.request.contextPath}/img/analysis/use/popup_bottom_img05.png" alt=""/></p>
				<button onclick="javascript:window.location.href='${pageContext.request.contextPath}/view/analysis/resultMap?id=18060';">최우식씨의 65세 이상 1인가구 <span>“경계분석” </span>결과보기</button>
			</div>
		</div><!-- 경계분석 end-->
		
		<div class="usePopup p06" id="17853">
			<div class="usePopupTitle blue">
				<button><img src="${pageContext.request.contextPath}/img/analysis/use/popup_btn.png" alt=""/></button>
				<div class="ml50">
					<img src="${pageContext.request.contextPath}/img/analysis/use/popup_img06.png" alt=""/>
				</div>
				<div class="ml50">
					<h1>
						<span class="mr5"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_up.png" alt=""/></span>
						서울시 중구의 노인요양시설이 부족한데  <br/>
						어디에 추가로 지을지 찾아봐야겠다
						<span class="ml10"><img src="${pageContext.request.contextPath}/img/analysis/use/use_icon03_down.png" alt=""/></span>	
					</h1>
					<h2>
						서울시 중구의 65세 이상 1인가구 대비 노인요양시설이 부족해 추가로 시설을 설립해야 <br/>
						하는데 어느 곳에 시설을 지어야 할까??
					</h2>
				</div>
			</div>
			<div class="usePopupCont">
				<div class="redbox">
					<h1>이우현씨는 SGIS pro의  <span>“버퍼분석”</span>을 활용하였습니다</h1>
					<dl>
						<dt>버퍼분석의 특징</dt>
						<dd>위치정보를 기준으로 거리나 수용 인원의 반경을 설정해서 영향권과 사각지대를 한눈에 확인할 수 있습니다</dd>								
					</dl>
					<dl>
						<dt>데이터의 영향 반경 확인</dt>
						<dd>거리기준 : 동일한 반경을 기준으로 수용인원의 차이 비교</dd>
						<dd>수용인원 기준 : 동일한 수용인원을 기준으로 반경의 차이 비교</dd>								
					</dl>
				</div>
				<div class="greenbox">							
					<h1>이우현씨는 <span>“버퍼분석”</span>을 어떻게 활용 하였을까요?</h1>
					<div class="stepBox">
						<h1>Step1. 데이터 준비</h1>
						<dl>
							<dt>같은 기관 사람들의 공유 데이터 활용</dt>
							<dd>SGIS pro에서는 내가 업로드한 데이터 뿐 아니라 <br/>분석 이력 데이터나 같은 기관 사람들이 공유한 데이터도<br/>분석에 활용할 수 있구나!! </dd>
							<dd>최우식씨가 공유해준 <span onclick="javascript:window.location.href='${pageContext.request.contextPath}/sample/서울시중구65세이상1인가구.xlsx';" style="cursor:pointer;">“서울시중구65세이상1인가구.xlsx“</span><br/>데이터를 사용해야지</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img16.png" alt="데이터 준비"/>
					</div>
					<div class="stepBox">
						<h1>Step2. 분석조건 선택비</h1>
						<dl>
							<dt>버퍼의 기준 데이터 선택</dt>
							<dd>선택할 수 있는 버퍼의 유형이 다양하구나! </dd>
							<dd>나는 서울시 중구에 있는 노인요양 시설의 사각지대를 <br/>알고 싶으니<span onclick="javascript:window.location.href='${pageContext.request.contextPath}/sample/서울특별시노인요양시설_서울특별시_중구.xlsx';" style="cursor:pointer;">“서울특별시노인요양시설_서울특별시_중구.xlsx</span><br/> 데이터를 선택해야지</dd>
							<dt>버퍼의 상세조건 선택</dt>
							<dd>거리나 수용인원으로 버퍼의 크기를 설정할 수 있네</dd>
							<dd>음…노인요양 시설의 사각지대가 어디인지 궁금하니까<br/>동일한 사이즈의 반경으로 설정해야겠다</dd>
							<dt>지역 조건 선택</dt>
							<dd>지금까지 선택한 데이터들이 서울시 중구의 데이터들이었으니 <br/>“서울시 중구”를 선택하면 되겠군</dd>
						</dl>
						<div class="fr">									
							<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img17.png" alt="분석조건 선택비" class="mb10"/>
							<p>* 사업체 조사, 임의 POI 생성, 사용자 데이터, 도로 네트워크</p>
						</div>
					</div>
					<div class="stepBox mt30">
						<h1>Step3. 분석결과 확인</h1>
						<dl>
							<dt>서울시 중구 노인요양시설 추가 설립 위치 찾기</dt>
							<dd>버퍼분석으로 현재 노인요양시설의 영향 반경을 지도에서 <br/>확인하니 어느 지역이 <span>사각지대인지 한눈에 확인할 수 있구나</span> </dd>
							<dd>버퍼분석 결과를 활용해서 노인요양시설을 어디에 추가 <br/>설립할지찾아봐야겠군!</dd>
						</dl>
						<img src="${pageContext.request.contextPath}/img/analysis/use/popup_cont_img18.png" alt="분석결과 확인"/>
					</div>
				</div>						
			</div>
			<div class="usePopupB">
				<p><img src="${pageContext.request.contextPath}/img/analysis/use/popup_bottom_img06.png" alt=""/></p>
				<button onclick="javascript:window.location.href='${pageContext.request.contextPath}/view/analysis/resultMap?id=18046';">이우현씨의 서울시 장충동 노인요양시설 신설 계획 <span>“버퍼분석” </span>결과보기</button>
			</div>
		</div><!-- 버퍼분석 end-->
		
	</div><!-- popup end-->
</body>
</html>