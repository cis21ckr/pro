<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SGIS pro</title>
<!-- <link rel="stylesheet" type="text/css" href="/css/body/body.css" /> -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mypage/mypage.css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/myData/myDataCreate.js"></script>

<!-- mng_s 2019. 06. 03 j.h.Seok -->
<script>
	$(document).ready(
		function() {
			$log.srvLogWrite("Z0", "03", "01", "01", "", "");
	});
</script>
<!-- mng_e 2019. 06. 03 j.h.Seok -->
</head>
<body>

	<style>
	.dataStepBox .stepList{margin:0 auto;margin-top:25px;position:relative;width:1150px;height:50px;overflow:hidden;}
	.dataStepBox .stepList li{position:relative;z-index:2;float:left;width:382px;height:48px;border-radius:24px;border-top-left-radius:0;border-bottom-left-radius:0;border:1px solid #d6d4d5;background:#f2f2f2;border-left:0;}
	.dataStepBox .stepList li:first-child{border-left:1px solid #d6d4d5;border-top-left-radius:24px;border-bottom-left-radius:24px;}
	.dataStepBox .stepList li.etc01{position:absolute;left:300px;width:500px;top:0;z-index:1;display:none;}
	.dataStepBox .stepList li.etc02{position:absolute;left:300px;width:500px;top:0;z-index:1;}
	.dataStepBox .stepList.step02 li.etc01{width:500px;left:200px;background:#3d62e8;display:block;}
	.dataStepBox .stepList.step02 li.etc02{width:500px;left:500px;}
	.dataStepBox .stepList.step03 li.etc01{width:500px;left:200px;background:#3d62e8;display:block;}
	.dataStepBox .stepList.step03 li.etc02{width:500px;left:500px;background:#3d62e8;}
	.dataStepBox .stepList li .t01{margin-top:7px;float:left;width:126px;height:33px;border-radius:17px;border:1px solid #d5d5d5;background:#fff;line-height:33px;text-align:center;font-size:12px;color:#3d62e8;margin-left:7px;}
	.dataStepBox .stepList li .t02{margin-top:7px;float:left;height:35px;line-height:35px;color:#000;font-weight:bold;font-size:18px;margin-left:20px;}
	.dataStepBox .stepList li .ico{margin-right:7px;margin-top:7px;float:right;width:35px;height:35px;overflow:hidden;background:url(../../img/common/bg_stepico.png);}
	.dataStepBox .stepList li.on{background:#3d62e8;}
	.dataStepBox .stepList li.on .t01{}
	.dataStepBox .stepList li.on .t02{color:#fff;}
	.dataStepBox .stepList li.on .ico{background:url(../../img/common/bg_stepico_on.png)}
	.dataStepBox ul {display: block !important;}
	.dataStepBox .stepList li:nth-child(0){z-index:10;}
	.dataStepBox .stepList li:nth-child(1){z-index:9;}
	.dataStepBox .stepList li:nth-child(2){z-index:8;}
	.dataStepBox .stepList li:nth-child(3){z-index:7;}
	</style>
	<jsp:include page="/view/common/includeHeader"></jsp:include>
	<div class="wrap">
		<div class="subConentWrap">
			<div class="subTitleWrap">
				<div class="subTitle">
					<p class="home">데이터 분석 ></p>
					<h1>데이터 생성</h1>
					<h2>SGIS pro에서 활용 가능한 데이터를 생성하고 관리할 수 있습니다.</h2>
				</div>
			</div>

			<!-- contents start  -->
			<div class="container" id="stepForm_1">
				<div class="dataStepBox step01">
					<ul class="stepList">
						<li class="on" style="width: 382px; margin-left: 0px;">
							<span class="t01" style="margin-left: 7px;">STEP1</span>
							<span class="t02">파일업로드</span>
							<span class="ico"></span>
						</li>
						<li>
							<span class="t01">STEP2</span>
							<span class="t02">위치 데이터 전환</span>
							<span class="ico"></span>
						</li>
						<li>
							<span class="t01">STEP3</span>
							<span class="t02">지오코딩 결과 조회</span>
							<span class="ico"></span>
						</li>
						<li class="etc01">&nbsp;</li>
						<li class="etc02">&nbsp;</li>
					</ul>
				</div>


				<ul class="uploadList">
					<li>
						<div class="rela selectDataType" data-type="TEXT">
							<img src="${pageContext.request.contextPath}/img/my/data/create/pic_uploadList01.png" class="ico" /> <a href="javascript:void(0)" class="btnUploadLink">텍스트 파일 업로드</a>
							<p class="t01">txt, csv</p>

							<div class="cont">
								<a href="javascript:void(0)" class="contClose"><img src="${pageContext.request.contextPath}/img/common/btn_close01.png" /></a>
								<div class="btnList">
									<a href="javascript:void(0)">.txt</a> <a href="javascript:void(0)">.csv</a>
								</div>
							</div>

							<!-- <div class="completeBox">
								<p>uplost_file.shp</p>
							</div> -->
						</div>
					</li>


					<li>
						<div class="rela selectDataType" data-type="EXCEL">
							<img src="${pageContext.request.contextPath}/img/my/data/create/pic_uploadList02.png" class="ico" /> <a href="javascript:void(0)" class="btnUploadLink">엑셀 파일 업로드</a>
							<p class="t01">xlsx</p>

							<div class="cont">
								<!-- hover style="display: block;" -->
								<a href="javascript:void(0)" class="contClose"><img src="${pageContext.request.contextPath}/img/common/btn_close01.png" /></a>
								<div class="btnList">
									<a href="javascript:void(0)">.xlsx</a>
								</div>
							</div>
							<!-- <div class="completeBox">
								<p>uplost_file.shp</p>
							</div> -->
						</div>
					</li>

					<li>
						<div class="rela selectDataType" data-type="SHP">
							<img src="${pageContext.request.contextPath}/img/my/data/create/pic_uploadList03.png" class="ico" /> <a href="javascript:void(0)" class="btnUploadLink">쉐이프 파일 업로드</a>
							<p class="t01">shp, dbf, shx</p>

							<div class="cont">
								<a href="javascript:void(0)" class="contClose"><img src="${pageContext.request.contextPath}/img/common/btn_close01.png" /></a>
								<div class="btnList">
									<a href="javascript:void(0)">.shp</a> <a href="javascript:void(0)">.dbf</a> <a href="javascript:void(0)">.shx</a>
								</div>
							</div>

							<!-- <div class="completeBox" style="display: block;">
								<ul class="uploadResultList">
									<li>shp</li>
									<li>dbf</li>
									<li>shx</li>
								</ul>
							</div> -->
						</div>
					</li>
				</ul>

				<div class="wTableBox">
					<table class="wTable">
						<tr style="display:none;">
							<th>데이터의 이름을 작성해 주세요.</th>
							<td><input type="text" class="inp" name="show_output_table_name" value="${show_output_table_name}"/></td>
						</tr>
						<tr style="display:none;" id="file_name_zone">
							<th>파일명</th>
							<td><span id="show_output_file_name"></span></td>
						</tr>
						<tr>
							<th>데이터에 대한 설명해 주세요.</th>
							<td><textarea class="textarea" name="show_description"></textarea></td>
						</tr>
					</table>
				</div>

				<div class="btnBox">
					<!-- <a href="javascript:void(0)" class="prevButton" id="prevStep_1">이전</a> --> 
					<a href="javascript:void(0)" class="nextButton" id="nextStep_1">다음</a>
				</div>


			</div>

			<div class="container" id="stepForm_2">

				<div class="dataStepBox step01">
					<ul class="stepList">
						<li class="on" style="width: 382px; margin-left: 0px;">
							<span class="t01" style="margin-left: 7px;">STEP1</span>
							<span class="t02">파일업로드</span>
							<span class="ico"></span>
						</li>
						<li>
							<span class="t01">STEP2</span>
							<span class="t02">위치 데이터 전환</span>
							<span class="ico"></span>
						</li>
						<li>
							<span class="t01">STEP3</span>
							<span class="t02">지오코딩 결과 조회</span>
							<span class="ico"></span>
						</li>
						<li class="etc01">&nbsp;</li>
						<li class="etc02">&nbsp;</li>
					</ul>
				</div>

				<dl class="uploadDlist">
					<dt>업로드한 파일이 정상적으로 되는지 확인해 보세요</dt>
					<dd>
						<div id="textPreView" style="display: none;" class="preViewDiv">
							<textarea class="textarea"></textarea>
						</div>
						<div id="excelPreView" style="display: none;" class="preViewDiv"></div>
						<div id="shpPreView" style="display: none;" class="preViewDiv"></div>
					</dd>
					<dt>정상적으로 출력되지 않는다면. 다른 인코딩 유형을 선택하여 파일이 정상적으로 출력될 수 있도록 해주세요.</dt>
					<dd>
						<div class="wTableBox">
							<div>
								<input type="checkbox" class="chkEtc" name="show_headerCheck" id="show_headerCheck01"/>
								<label>&nbsp;첫줄을 헤더로 변경</label>&nbsp;
							</div>
							
							<div id="delimiterSelector">
								<select class="inpSelector" name="show_delimiter">
									<option value=",">,</option>
									<option value="|">|</option>
									<option value=";">;</option>
								</select>
								<label>&nbsp;구분자</label>&nbsp;
							</div>
							
						
						</div>
						
					</dd>
					<dd>
						<div class="charsetBox">
							<input type="radio" id="charset01" name="show_charsets" value="CP949" checked /> <label for="charset01">CP949</label> <input type="radio" id="charset02" name="show_charsets" value="EUC-KR" /> <label for="charset02">EUC-KR</label> <input type="radio" id="charset03" name="show_charsets" value="UTF-8" /> <label for="charset03">UTF-8</label>
						</div>
					</dd>


					<dd>
						<div id="columnGridData"></div>
					</dd>
				</dl>
				<div class="btnBox">
					<a href="javascript:void(0)" class="prevButton" id="prevStep_2">이전</a> <a href="javascript:void(0)" class="nextButton" id="nextStep_2">사용자 데이터 저장</a>
				</div>
			</div>


			<div class="container" id="stepForm_3">

				<div class="dataStepBox step02">
					<ul class="stepList">
						<li style="width: 382px; margin-left: 0px;">
							<span class="t01" style="margin-left: 7px;">STEP1</span>
							<span class="t02">파일업로드</span>
							<span class="ico"></span>
						</li>
						<li class="on" style="width: 402px; margin-left: -20px;">
							<span class="t01" style="margin-left: 27px;">STEP2</span>
							<span class="t02">위치 데이터 전환</span>
							<span class="ico"></span>
						</li>
						<li>
							<span class="t01">STEP3</span>
							<span class="t02">지오코딩 결과 조회</span>
							<span class="ico"></span>
						</li>
						<li class="etc01">&nbsp;</li>
						<li class="etc02">&nbsp;</li>
					</ul>
				</div>

				<div class="barBox">
					<p class="t01">업로드한 파일에서 주소나 위치 정보가 어떻게 표현되었는지 확인하세요.</p>
				</div>
				<div class="barBox" id="gridGeoCodingTable"></div>

				<div class="barBox">
					<p class="t01">업로드한 파일에서 주소나 위치 정보가 어떻게 표현되었는지 선택하세요.</p>
				</div>
				<ul class="chkList">
					<li><a href="javascript:void(0)" class="on geoChkRadio" id="addrChk" data-type="addr"> <span class="t01">주소</span> <span class="t02">Ex) 서울특별시 종로구 청와대로 1번지</span>
					</a></li>
					<li><a href="javascript:void(0)" class="geoChkRadio" id="xyChk" data-type="xy"> <span class="t01">좌표(X,Y형)</span> <span class="t02">Ex) 9457632.44, 456527.2</span>
					</a></li>
					<li><a href="javascript:void(0)" class="geoChkRadio" id="admCdChk" data-type="admCd"> <span class="t01">행정경계코드형</span> <span class="t02">Ex)1101053(서울특별시 종로구 사직동)</span>
					</a></li>
				</ul>

				<div class="barBox">
					<p class="t01 geoCoding_desc" id="addr_desc" style="display: none;">주소 정보를 포함한 데이터를 모두 선택하세요.</p>
					<p class="t01 geoCoding_desc" id="xy_desc" style="display: none;">좌표를 선택해 주세요.</p>
					<p class="t01 geoCoding_desc" id="geom_desc" style="display: none;">GEOM 데이터 컬럼을 선택 해주세요.</p>
					<p class="t01 geoCoding_desc" id="admcd_desc" style="display: none;">행정동 주소를 가진 컬럼을 선택 해주세요.</p>
				</div>
				<div id="geoCodingSelectDiv"></div>


				<div class="btnBox">
					<a href="javascript:void(0)" class="prevButton" id="prevStep_3">이전</a> <a href="javascript:void(0)" class="nextButton" id="nextStep_3">위치데이터로 변환</a>
				</div>
			</div>



			<div class="container" id="stepForm_4">

				<div class="dataStepBox step03">
					<ul class="stepList">
						<li style="width: 382px; margin-left: 0px;">
							<span class="t01" style="margin-left: 7px;">STEP1</span>
							<span class="t02">파일업로드</span>
							<span class="ico"></span>
						</li>
						<li  style="width: 402px; margin-left: -20px;">
							<span class="t01" style="margin-left: 27px;">STEP2</span>
							<span class="t02">위치 데이터 전환</span>
							<span class="ico"></span>
						</li>
						<li class="on" style="width: 402px; margin-left: -20px;">
							<span class="t01" style="margin-left: 27px;">STEP3</span>
							<span class="t02">지오코딩 결과 조회</span>
							<span class="ico"></span>
						</li>
						<li class="etc01">&nbsp;</li>
						<li class="etc02">&nbsp;</li>
					</ul>
				</div>

				<div class="barBox">
					<p class="t01">위치데이터로 변환한 결과를 확인하세요.</p>
					<p class="t03">
						위치 정보 생성 결과 : <span id="sCount"></span>/<span id="totalResultCount"></span> (위치 정보 생성률 <span id="resultPercent"></span>)
					</p>
				</div>

				<div class="tabBox">
					<ul id="resultStatusTab">
						<li><a href="javascript:void(0)" class="on">성공 결과</a></li>
						<li><a href="javascript:void(0)">실패 결과</a></li>
					</ul>
					<select class="select" id="geoCodingViewCnt" name="geoCodingViewCnt">
						<option value="5">5개 보기</option>
						<option value="10">10개 보기</option>
						<option value="20">20개 보기</option>
					</select>
				</div>
				<div id="geoCodingResult" class="pageArea">
					현재 지오코딩 진행 중 입니다.
				</div>
			

				<div class="btnBox">
					<a href="javascript:void(0)" class="prevButton" id="prevStep_4">목록</a>
					<a href="javascript:void(0)" class="nextButton" id="nextStep_4">데이터 분석</a>
					<a href="javascript:$myDataCreate.ui.geoCodingModify();" id="modifyButton" style="display:none;"> 위치데이터 재생성</a>
				</div>

			</div>


			<%-- <div class="container" id="stepForm_5">

				<div class="dataStepBox step03">
					<ul>
						<li>STEP1 파일업로드</li>
						<li>STEP2 위치 데이터 전환</li>
						<li><strong>STEP3 공간 분석 활용</strong></li>
					</ul>
				</div>

				<div class="barBox">
					<p class="t01">기초 공간분석</p>
					<p class="t02">
						전환된 위치정보를 기반으로 <span>경계를 생성</span> 할 수 있는 공간분석기법 입니다.
					</p>
					<a href="javascript:void(0)">기초 공간 분석 활용 사례보기</a>
				</div>

				<ul class="quickList">
					<li class="fl"><img src="${pageContext.request.contextPath}/img/guide/etc_quickList01.jpg" />
						<div class="cont">
							<p class="t01">경계 분석</p>
							<p class="t02">경계 분석은 행정경계를 기준으로 선택한 데이터를 분석하여 각 영역의 특성을 비교 할 수 있는 분석 기법입니다.</p>
							<a href="javascript:void(0)">분석하러가기</a>
						</div></li>
					<li class="fr"><img src="${pageContext.request.contextPath}/img/guide/etc_quickList02.jpg" />
						<div class="cont">
							<p class="t01">보로노이 다이어그램</p>
							<p class="t02">보로노이 다이어그램은 개별 위치정보 사이의 거리를 기준으로 이등분하여 임의의 경계를 생성할 수 있는 분석 기법 입니다.</p>
							<a href="javascript:void(0)">분석하러가기</a>
						</div></li>
				</ul>

				<div class="barBox">
					<p class="t01">응용공간분석</p>
					<p class="t02">
						위치정보를 기반으로 <span>데이터의 관계성과 특성</span>을 파악할 수 있는 공간분석기법 입니다.
					</p>
					<a href="javascript:void(0)">응용 공간 분석 활용 사례보기</a>
				</div>

				<ul class="quickList">
					<li class="fl"><img src="${pageContext.request.contextPath}/img/guide/etc_quickList03.jpg" />
						<div class="cont">
							<p class="t01">버퍼 분석</p>
							<p class="t02">버퍼 분석은 수요 데이터 위에 공급 데이터의 영향 반경을 표시함으로써 공급이 밀집된 지역과 사각지대를 지도상에서 확인할 수 있는 분석 기법 입니다.</p>
							<a href="javascript:void(0)">분석하러가기</a>
						</div></li>
					<li class="fr"><img src="${pageContext.request.contextPath}/img/guide/etc_quickList04.jpg" />
						<div class="cont">
							<p class="t01">입지 계수</p>
							<p class="t02">입지 계수는 분석대상지역의 인구, 가구, 주택, 사업체, 종사자 등의 지역적 특성을 지수화하여 상위 레벨에서 유사한 지역을 도출하는 분석기법 입니다.</p>
							<a href="javascript:void(0)">분석하러가기</a>
						</div></li>
				</ul>

				<div class="barBox">
					<p class="t01">응용공간분석</p>
					<p class="t02">
						위치정보를 기반으로 <span>데이터의 관계성과 특성</span>을 파악할 수 있는 공간분석기법 입니다.
					</p>
					<a href="javascript:void(0)">응용 공간 분석 활용 사례보기</a>
				</div>

				<ul class="quickList">
					<li class="fl"><img src="${pageContext.request.contextPath}/img/guide/etc_quickList05.jpg" />
						<div class="cont">
							<p class="t01">공간자기상관 분석</p>
							<p class="t02">공간자기상관분석은 지리적으로 가까울 수록 선택 지역의 공간 특성에 영향을 미치는지 선택 지역과 근접 지역의 상관관계를 도출하는 분석기법 입니다.</p>
							<a href="javascript:void(0)">분석하러가기</a>
						</div></li>
					<li class="fr"><img src="${pageContext.request.contextPath}/img/guide/etc_quickList06.jpg" />
						<div class="cont">
							<p class="t01">데이터 간 연산 분석</p>
							<p class="t02">데이터 간 연산 분석은 사용자의 데이터 두개를 연산(＋,－,×,÷, 평균)하여 데이터의 특성을 도출하는 분석기법 입니다.</p>
							<a href="javascript:void(0)">분석하러가기</a>
						</div></li>
				</ul>



			</div> --%>


		</div>

		<style>
			/* .partForm{
				text-align:center;
				margin:0 auto 20px auto;
				width:320;height:35px;padding:25px 0;
				border-top:1px solid #d5d5d5;
				border-bottom:1px solid #d5d5d5;
			} */
			
			.partForm > ul{
				width : 100%;
				height : auto;
			}
			.partForm > ul > li{
				width:50%;height:auto;float:left;
			}
			
			.partForm>ul>li>span{
				font-weight:bold;
				float:left;
				height:35px;
				line-height:35px;
				width:160px;
				text-align:center;
				font-size:15px;
				color:#333;
				}
				
			.modalInp{
				height:33px;
				width: calc( 40% );
				border:1px solid #e5e5e5;
				padding:0 10px;
				overflow:hidden;
				margin-right: 10px;
    			margin-left: 10px;
			}
			
			.fileBox>ul>li{
				margin-bottom:10px;
			}	
		</style>
		

		<!-- DataFormText -->
		
		<form id="dataForm" style="display:none;">
			<table border="1" width="640px;">
				<tr>
					<td>제목</td>
					<td><input type="text" name="output_table_name" value="${output_table_name}"></td>
				</tr>
				<tr>
					<td>설명</td>
					<td><textarea name="description"></textarea></td>
				<tr>
				<tr>
					<td>첫줄 무시</td>
					<td><input type="checkbox" name="headerCheck"></td>
				</tr>
				<tr>
					<td>구분자</td>
					<td><input type="text" name="delimiter" value=","></td>
				</tr>
				<tr>
					<td>데이터 타입</td>
					<td><input type="radio" name="data_type" value="TEXT">TEXT <input type="radio" name="data_type" value="EXCEL">EXCEL <input type="radio" name="data_type" value="SHP">SHP</td>
				</tr>
				<tr>
					<td>TXT , CSV , XLSX</td>
					<td>
						<span id="oneFileZone">
							<!-- <input type="file" name="oneFile" id="oneFile"> -->
						</span>
					</td>
				</tr>

				<tr>
					<td>SHAPE</td>
					<td>
						<span id="shpFileZone">
							<!-- <input type="file" name="multiFile" id="shpFile"> 
							<input type="file" name="multiFile" id="dbfFile"> 
							<input type="file" name="multiFile" id="shxFile"> -->
						</span>
					</td>
				</tr>

				<tr>
					<td>인코딩 타입</td>
					<td><input type="radio" name="charsets" value="CP949" checked="checked">CP949 <input type="radio" name="charsets" value="UTF-8">UTF-8 <input type="radio" name="charsets" value="EUC-KR">EUC-KR</td>
				</tr>
				<tr>
					<td>기존 테이블 여부</td>
					<td><input type="text" name="modifyData" value="${modifyData}"/></td>
				</tr>
				<tr>
					<td>리소스id</td>
					<td><input type="text" name="resource_id" value="${resource_id}"/></td>
				</tr>
				
				<tr>
					<td>스키마</td>
					<td><input type="text" name="schema" value="${schema}"/></td>
				</tr>
				<tr>
					<td>columnInfos</td>
					<td><input type="text" name="columnInfos"/></td>
				</tr>
				
			</table>
		</form>
	</div>
	<!-- footer -->
	<jsp:include page="/view/common/includeFooter"></jsp:include>


</body>
</html>