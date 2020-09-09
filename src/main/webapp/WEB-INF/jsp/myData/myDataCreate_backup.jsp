<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SGIS pro</title>
<link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/main/main.css" />

<script type="text/javascript" src="/js/common/includeHead.js"></script>
<script type="text/javascript" src="/js/myData/myDataCreate.js"></script>
</head>
<body>

	<style>
#processBar {
	width: 100%;
}

#processBar>.step {
	width: 32%;
	border: solid 1px black;
	display: inline-block;
	height: 40px;
}

.bar {
	width: 100%;
}

.bar .block3 {
	width: 32%;
	border: solid 1px black;
	display: inline-block;
	height: 40px;
}

.bar .block4 {
	width: 22%;
	border: solid 1px black;
	display: inline-block;
	height: 40px;
}

.onStep {
	background-color: #47e6df;
}

.nextButton {
	width: 82px;
	height: 35px;
	border: 1px solid #47e6df;
	background-color: #47e6df;
	box-sizing: border-box;
	font-size: 12px;
	text-align: center;
	border-radius: 30px;
	/* float: left; */
	margin-left: 10px;
	color: white;
}

.prevButton {
	width: 82px;
	height: 35px;
	border: 1px solid #e5e5e5;
	box-sizing: border-box;
	font-size: 12px;
	text-align: center;
	border-radius: 30px;
	/* float: left; */
	margin-left: 10px;
}

.preViewDiv{
	border : solid 1px black;
}
</style>

	<div class="wrap">
		<jsp:include page="/view/common/includeHeader"></jsp:include>

		<div class="dashbordWrap">
			<div class="dashbordTile">
				<h1>나의 데이터 > 데이터 생성</h1>
			</div>
		</div>



		<div class="contentWrap">
			<div class="content">
				<div id="processBar">
					<div id="step1" class="step">STEP.1 파일 업로드</div>
					<div id="step2" class="step">STEP.2 위치 데이터 전환</div>
					<div id="step3" class="step">STEP.3 공간 분석 활용</div>
				</div>
			</div>
			<div style="margin-top: 40px;"></div>
			<div id="stepForm_1">
				<div class="content">
					<div class="bar">
						<div class="block3 selectDataType" data-type="TEXT">
							텍스트 파일 업로드 <br> txt,csv
						</div>
						<div class="block3 selectDataType" data-type="EXCEL">
							엑셀 파일 업로드 <br> xlsx
						</div>
						<div class="block3 selectDataType" data-type="SHP">
							쉐이프 파일 업로드 <br>shp,dbf,shx
						</div>
					</div>
				</div>

				<div style="margin-top: 40px;"></div>

				<div class="content">
					<div>
						<div>데이터의 이름을 작성해 주세요</div>
						<div>
							<input type="text" style="width: 480px" name="show_output_table_name">
						</div>
						<div>데이터에 대해 설명을 해 주세요</div>
						<div>
							<input type="text" style="width: 820px" name="show_description">
						</div>
					</div>
				</div>

				<div class="content" style="margin-top: 40px;">
					<div class="">
						<button class="nextButton" id="nextStep_1">다음</button>
						<button class="prevButton" id="prevStep_1">취소</button>
					</div>
				</div>
			</div>
			
			<div id="stepForm_2">
				<div class="content">업로드한 데이터를 미리 볼 수 있습니다.</div>
				<div class="content">
					<div id="textPreView" style="display:none;" class="preViewDiv"></div>
					<div id="excelPreView" style="display:none;" class="preViewDiv"></div>
					<div id="shpPreView" style="display:none;" class="preViewDiv"></div>
				</div>
				<div class="content" id="columnGridData"></div>
				
				<div class="content"><input type="checkbox" name="show_headerCheck"/><label for="show_headerCheck">첫줄을 헤더로 변경</label></div>
				
				<div class="content textEncodingDiv">정상적으로 출력되지 않는다면, 다른 인코딩 유형을 선택하여 파일을 정상적으로 출력될 수 있도록 해주세요.</div>
				<div class="content textEncodingDiv">
					<div>
						<input type="radio" name="show_charsets" value="CP949" checked="checked"/>CP949
						<input type="radio" name="show_charsets" value="EUC-KR"/>EUC-KR
						<input type="radio" name="show_charsets" value="UTF-8"/>UTF-8
					</div>
				</div>
				
				<div class="content" style="margin-top: 10px;">
					<div class="">
						<button class="nextButton" id="nextStep_2">사용자 데이터 저장</button>
						<button class="prevButton" id="prevStep_2">취소</button>
					</div>
				</div>
			</div>
			
			<div id="stepForm_3">
				<div class="content">업로드한 파일에서 주소나 위치 정보가 어떻게 표현되었는지 확인하세요.</div>
				<div class="content">
					<table border="1" width="100%" height="150px;">
						<tr>
							<td>sample</td>
							<td>sample</td>
						</tr>
					</table>
				</div>
				<div class="content">업로드한 파일에서 주소나 위치 정보가 어떻게 표현되었는지 선택하세요.</div>
				<div class="content">
					<div class="bar">
						<div class="block4">
							주소
						</div>
						<div class="block4">
							좌표
						</div>
						<div class="block4">
							좌표
						</div>
						<div class="block4">
							행정경계코드형
						</div>
					</div>
				</div>
				
				<div class="content" style="margin-top: 40px;">
					<div class="">
						<button class="nextButton" id="nextStep_3">다음</button>
						<button class="prevButton" id="prevStep_3">취소</button>
					</div>
				</div>
			</div>

		</div>

		<!-- DataFormText -->

		<form id="dataForm">
			<table border="1" width="640px;">
				<tr>
					<td>제목</td>
					<td><input type="text" name="output_table_name"></td>
				</tr>
				<tr>
					<td>설명</td>
					<td><input type="text" name="description"></td>
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
					<td>
						<input type="radio" name="data_type" value="TEXT">TEXT
						<input type="radio" name="data_type" value="EXCEL">EXCEL
						<input type="radio" name="data_type" value="SHP">SHP
					</td>
				</tr>
				<tr>
					<td>TXT , CSV , XLSX</td>
					<td><input type="file" name="oneFile" id="oneFile"></td>
				</tr>
				
				<tr>
					<td>SHAPE</td>
					<td>
						<input type="file" name="multiFile" id="shpFile">
						<input type="file" name="multiFile" id="dbfFile">
						<input type="file" name="multiFile" id="shxFile">
					</td>
				</tr>
				
				<tr>
					<td>인코딩 타입</td>
					<td>
						<input type="radio" name="charsets" value="CP949"  checked="checked">CP949
						<input type="radio" name="charsets" value="UTF-8">UTF-8
						<input type="radio" name="charsets" value="EUC-KR">EUC-KR
					</td>
				</tr>
				<tr>
					<td>지오코딩 타입</td>
					<td>
						<input type="text" name="geoCodingType">
					</td>
				</tr>
				
			</table>
		</form>


		<div class="footerWrap">
			<div class="footer">
				<p>
					[35208] 대전광역시 서구 청사로 189(둔산동, 정부대전청사 3동) FAX 042-481-2461 / 통계청콜센터 02-2012-9114 / 국번없이 110<br /> ⓒ Statistics Korea. All rights reserved since 1996.
				</p>
			</div>
		</div>


	</div>


</body>
</html>