<%
/**************************************************************************************************************************
* Program Name  : Q&A JSP  
* File Name     : qnaView.jsp
* Comment       : 
* History       : 네이버시스템 2018-01-29
*
**************************************************************************************************************************/
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="${pageContext.request.contextPath}/js/useGuide/guide/guideView.js"></script>

<!-- 이용안내 영역 -->
<!-- <div id="guideArea" class="boardArea" style="display:none;">
	<div id="guideListView">
		검색영역
		<div>
			<select id="guideSearchSelectBox" style="width:200px;height:35px;">
				<option value="title" selected>제목</option>
				<option value="content">내용</option>
				<option value="total">제목+내용</option>
			</select>
			<input id="guideSearchText" type="text" style="width:500px;height:35px;"/>
			<button id="guideSearchBtn" style="width:90px;height:35px;">검색</button>
		</div>
		
		게시판 결과영역
		<div style="height:50px;">
			<div id="guideTitle" style="float:left;line-height:50px;">이용안내 목록</div>
			<select id="guideCntSelectBox" style="width:150px;height:35px;float:right;margin-top:10px;">
				<option value="10" selected>10개 보기</option>
				<option value="50">50개 보기</option>
				<option value="100">100개 보기</option>
			</select>
		</div>
		<table id="guideTable" class="apiTable"></table>
		<div id="guidePage" class="pageList" style="margin-top:10px;"></div>
	</div>
</div> -->

<div id="guideArea" style="display:none;">
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<h1>서비스 이용 가이드</h1>
				<h2>SGIS pro의 소개와 주요 서비스를 소개합니다.</h2>
			</div>					
		</div>
		<div class="tabWrap">
			<div class="tab">
				<ul>
					<!-- <li class="on"><a onclick="javascript:$guideView.ui.doChangeView(0);">LBDMS 란? </a></li> -->
					<li class="on"><a onclick="javascript:$guideView.ui.doChangeView(1);">서비스 소개</a></li>
					<li><a onclick="javascript:$guideView.ui.doChangeView(2);">사이트 맵 </a></li>
				</ul>
			</div>
		</div>
		
		<!-- LBDMS 소개영역 -->
		<jsp:include page="/view/use/guide/introView"></jsp:include>
		
		<!-- LBDMS 서비스 소개 영역 -->
		<jsp:include page="/view/use/guide/serviceView"></jsp:include>
		
		<!-- 사이트맵 -->
		<jsp:include page="/view/use/guide/siteMapView"></jsp:include>
	</div>
</div>