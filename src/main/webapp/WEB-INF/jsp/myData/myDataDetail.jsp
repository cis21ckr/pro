<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SGIS pro</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/commonDataFunc.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/myData/myDataDetail.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mypage/mypage.css" />

<!-- mng_s 2019. 06. 05 j.h.Seok -->
<script>
	$(document).ready(
		function() {
			$log.srvLogWrite("Z0", "03", "02", "06", "", "");
	});
</script>
<!-- mng_e 2019. 06. 05 j.h.Seok -->
</head>
<body>

	<jsp:include page="/view/common/includeHeader"></jsp:include>

<style>
.listTable02 tr>th:first-child, .listTable02 tr>td:first-child {
	border-left: 0;
	width: 10%;
}

/*dialog 처리*/
select {
	border-radius: 5px;
	width: 200px;
	height: 30px;
	border: 1px solid #d5d5d5;
	background: url(/img/common/select_bg.png) no-repeat 165px -6px;
	background-color: #fff;
	font-size: 12px;
	color: #000;
	box-sizing: border-box;
	padding-left: 15px;
	line-height: 35px;
}

button {
	border: 1px solid #d5d5d5;
	border-radius: 8px;
	color: #000;
	width: 41px;
	height: 29px;
}

.wTableBox.footer {
    margin: -10px auto;
    height: auto;
    border-top: 2px solid #879099;
    border-bottom: 1px solid #e5e5e5;
    padding: 30px 0;
}

.downFormat, .inp {
    height: 33px;
    width: 263px;
    border: 1px solid #e5e5e5;
    padding: 0 10px;
    overflow: hidden;
    border-radius: 5px;
}

/* 2019-02-20 수정 */
#table td {
	max-width : 200px;
}


</style>

	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<p class="home">나의 데이터 > 데이터 분석</p>
				<h1>사용자데이터 상세보기</h1>
				<h2>선택된 데이터를 수정하거나 위치데이터로 전환, SGIS+ 포털 내 서비스로 해당 데이터를 전송하여 서비스할 수 있습니다.</h2>
			</div>
		</div>


		<!-- contents start  -->

		<div class="container">

			<div class="viewInfoBox">
				<p class="t01" id="data_nm">데이터 명</p>
				<p class="t02" id="data_create_time">2018-07-01 14:20</p>
				<div class="t03">
					 <a href="javascript:void(0);" id="sharedButton" class="b03" style="width:100px;">공유</a>
					 <a href="javascript:void(0);" id="favButton" class="b03"  style="width:100px;">즐겨찾기</a>
					 <a href="javascript:void(0);" id="columnEdit" class="b03" data-type="read" style="width:100px;">수정</a>
					 <a href="javascript:void(0);" id="viewMap" class="b03" style="width:100px;">지도</a>
					 <a href="javascript:void(0);" id="dataDetailGeoCoding" class="b02" >지오 코딩 결과 보기</a>
				</div>
			</div>

			<div class="wTableBox t02 mt0" style="display: none;" id="editBar">
				<table class="wTable">
					<!-- <tr>
						<th>데이터의 이름을 작성해 주세요.</th>
						<td><input type="text" class="inp" id="editDataNm"></td>
					</tr> -->
					<tr>
						<th>데이터 설명</th>
						<td><textarea class="textarea" id="editDesc"></textarea></td>
					</tr>
					<tr>
						<th></th>
						<td><p class="e01">*설명의 경우 저장 버튼을 클릭후 변경 됩니다.</p></td>
					</tr>
				</table>
				<br>
			</div>

			<div class="tabBox" id="editTabBox" style="display: none;">
				<ul>
					<li><a href="javascript:void(0)" id="dataEditTab">데이터 수정</a></li>
					<li><a href="javascript:void(0)" class="on" id="columnEditTab">컬럼 수정</a></li>
				</ul>
				<p class="e01">* 컬럼 : 데이터의 열을 의미합니다</p>
			</div>

			<div class="boardSearchBox">
				<div class="etc">
					<select class="select w130" id="viewCnt">
						<option value="10">10개 보기</option>
						<option value="20">20개 보기</option>
						<option value="30">30개 보기</option>
						<option value="40">40개 보기</option>
					</select> <a href="javascript:void(0)" class="btnEdit" id="columnAddButton" style="display: none;">컬럼 추가</a> <a href="javascript:void(0)" class="btnEdit" id="columnEditButton" style="display: none;">선택한 컬럼 수정</a> <a href="javascript:void(0)" class="btnDelete" id="columnDeleteButton" style="display: none;">선택한 컬럼 삭제</a> <a href="javascript:void(0)" class="btnDelete" id="columnRowDeleteButton" style="display: none;">선택한 데이터 삭제</a>
				</div>
			</div>
			<div id="gridTable"></div>
			<div class="pageArea" id="gridPaging"></div>

			<div id="insertDiv" style="display: none;"></div>

			

			<div class="btnBox">
				<a href="javascript:void(0)" id="moveMyDataList">데이터관리 목록</a>
				<!-- <a href="javascript:void(0)">위치 데이터로 변환</a>
			 		<a href="javascript:void(0)" id="columnDataEdit">컬럼수정</a>
			 		<a href="javascript:void(0)">데이터 추가</a> -->
			</div>

		</div>


		<!-- contents end  -->



	</div>
	<table style="display:none;">
		<tr>
			<td>resource_id</td>
			<td><input type="text" id="resource_id" value="${resource_id}"></td>
		</tr>
		<tr>
			<td>prevPageNumber</td>
			<td><input type="text" id="prevPageNumber" value="${prevPageNumber}"></td>
		</tr>
		<tr>
			<td>prevViewCnt</td>
			<td><input type="text" id="prevViewCnt" value="${prevViewCnt}"></td>
		</tr>
		<tr>
			<td>prevSearchStandard</td>
			<td><input type="text" id="prevSearchStandard" value="${prevSearchStandard}"></td>
		</tr>
		<tr>
			<td>prevSerarchWord</td>
			<td><input type="text" id="prevSerarchWord" value="${prevSerarchWord}"></td>
		</tr>
		<tr>
			<td>resourceList</td>
			<td><textArea id="resourceList">${resourceList}</textArea></td>
		</tr>
		<tr>
			<td>resourceInfo</td>
			<td><textArea id="resourceInfo">${resourceInfo}</textArea></td>
		</tr>
		<tr>
			<td>columnDataType</td>
			<td><textArea id="columnDataType">${columnDataType}</textArea></td>
		</tr>
	</table>

	<div id="popBox01">
		<div class="popStatus t02" id="popColumEdit01" style="display: none;">
			<div class="pcont auto">
				<p class="t02">검색 조건을 설정하여 선택 컬럼중 수정할 데이터를 검색하세요</p>

				<div class="wTableBox">
					
					<table class="wTable type01">
						<colgroup>
							<col width="60" />
							<col width="280" />
						</colgroup>
						<tr>
							<td>비교 방법</td>
							<td>비교 수식</td>
						</tr>
						<tr>
							<td><input type="radio" name="compareRd" id="compareRd01" value="compare" />값 비교 <input type="radio" name="compareRd" id="compareRd02" value="range" />범위</td>
							
							<td>
								<div id="compareSearch" class="tabSearch">
									<select class="w150" id="compareColumnSelect" name="columnSelect">
										<option>비교대상 컬럼</option>
									</select> <input type="text" class="inp01 w100 ml5" name="compareText" /> <select class="w150 ml5" name="RELATIONAL_OPERATOR">
										<option value="EQUAL_TO">와 같다</option>
										<option value="NOT_EQUAL_TO">가 다르다</option>
										<option value="LESS_THAN">보다 작다</option>
										<option value="GREATER_THAN">보다 크다</option>
										<option value="LESS_THAN_OR_EQUAL_TO">보다 적거나 같다</option>
										<option value="GREATER_THAN_EQUAL_TO">보다 크거나 같다</option>
										<option value="LIKE">와 비슷하다</option>
									</select> <select class="w150 ml5" id="compareCaralcSelect" name="columnCaralc">
										<option value="AND">이고 [AND]</option>
										<option value="OR">또는 [OR]</option>
										<option value="PARENTHESIS_AND">) 이고 ( [조건문 AND 조건문]</option>
										<option value="PARENTHESIS_OR">) 또는 ( [조건문 OR 조건문]</option>
									</select>
									<button class="addButton">추가</button>
								</div>

								<div id="rangeSearch" style="display: none;" class="tabSearch">
									<select class="w150" id="rangeColumnSelect" name="columnSelect">
										<option>범위대상 컬럼</option>
									</select> <input type="text" class="inp01 w100 ml5" name="minValue" /> <span>~</span> <input type="text" class="inp01 w100 ml5" name="maxValue" /> <select class="w120 ml5" id="rangeCaralcSelect" name="columnCaralc">
										<option value="AND">이고 [AND]</option>
										<option value="OR">또는 [OR]</option>
										<option value="PARENTHESIS_AND">) 이고 ( [조건문 AND 조건문]</option>
										<option value="PARENTHESIS_OR">) 또는 ( [조건문 OR 조건문]</option>
									</select>
									<button class="addButton">추가</button>
								</div>

							</td>
						</tr>

					</table>

					<div class="dataSearchResultScrolls">
						<ul class="dataSearchResult" id="dataSearchResult">

						</ul>
					</div>
					
					<div id="conditionList" class="conditionList">
					
					</div>
					<div class="pfooter btnBox">
						<a href="javascript:void(0)" id="columnModifySearchClose">취소</a> <a href="javascript:void(0)" id="columnModifySearch">검색</a>
					</div>
					

									
					<div class="wTableBox footer">
						<table class="wTable type01">
							<colgroup>
								<col width="90" />
								<col width="70" />
								<col width="23" />
								<col width="120" />
							</colgroup>
							<tr>
								<td>변경 컬럼</td>
								<td align="left"><select class="w150 ml5" id="originColumn" name="columnSelect"></select></td>
								<td>변경 값</td>
								<td>
									<input type="text" class="inp01 w140 ml5" name="replaceValue"/> <button id="replaceAllData">수정</button>
								</td>
							</tr>
						
						</table>
					</div>
					
					
					<textArea id="where" style="display:none"></textArea>
					
				</div> 

			</div>
			
		</div>
	</div>
	<!-- commonDataView -->
	<jsp:include page="/view/common/commonDataView"></jsp:include>
	<!-- footer -->
	<jsp:include page="/view/common/includeFooter"></jsp:include>

</body>
</html>