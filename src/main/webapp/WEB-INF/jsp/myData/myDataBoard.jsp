<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 데이터보드영역 영역 -->
<a href="javascript:void(0)" id="analysisDataBoard" class="analysisDataBoard" style="opacity: 10; right: 0px;">데이터보드</a>
<div class="dataBoardBox" style="right:-1500px;">
	<div class="dbHeader">
		<a href="javascript:void(0)" id="dataBoardClose"><img src="${pageContext.request.contextPath}/img/common/ico_close01.png" /></a>
	</div>

	<div class="dbCont">
		<div class="dbInfo">
			<table style="margin: 10px 10px 10px 20px;">
				<!-- <tr>
					<th class="tit w80">분석타입 : </th>
					<td id="analysisType2" class="tit fn"></td>
				</tr> -->
				<tr>
					<th class="tit w80">데이터명 : </th>
					<td id="analysisTitle2" class="tit fn"></td>
				</tr>
				<tr>
					<th class="tit w80">설명   : </th>
					<td id="analysis_description2" class="tit fn"></td>
				</tr>
			</table>
		</div>

		<div class="scrolls">
			<p class="e02"></p>
			<div class="boardSearchBox" style="width:100%;float:left">
				<div class="etc" style="margin-left:410px;margin-top:5px;">
					<select id="viewCnt" class="select w130">
						<option value="10">10개 보기</option>
						<option value="20">20개 보기</option>
						<option value="40">40개 보기</option>
						<option value="100">100개 보기</option>
					</select> 
				</div>
			</div>
			<div id="gridZone" style="width:540px;overflow-x:auto;margin-left:20px;margin-right:20px">
				<table class="listTable02" id="gridTable"  style="margin-top:10px;">
				
				</table>
				
			</div>
			<div id="gridPaging" class="pageArea"></div>
		</div>
		
		<p class="dbe01">* </p>
	</div>
</div>	