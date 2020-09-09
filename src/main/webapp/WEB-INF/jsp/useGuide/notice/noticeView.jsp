<%
/**************************************************************************************************************************
* Program Name  : 공지사항 JSP  
* File Name     : notice.jsp
* Comment       : 
* History       : 네이버시스템 2018-01-29
*
**************************************************************************************************************************/
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="${pageContext.request.contextPath}/js/useGuide/notice/noticeView.js"></script>

<!-- 공지사항 영역 -->
<div id="noticeArea" style="display:none;">
	<div id="noticeListView">
		<div class="subTitleWrap">
			<div class="subTitle">
				<h1>공지사항</h1>
				<h2>SGIS pro 공지사항입니다. 이용에 참고하세요.</h2>
			</div>
			<!-- <div class="see">
				<select id="noticeCntSelectBox">
					<option value="10" selected>10개 보기</option>
					<option value="50">50개 보기</option>
					<option value="100">100개 보기</option>
				</select>
			</div>				 -->
		</div>
		<div class="searchArea">
			<select id="searchType">
				<option value="title" selected>제목</option>
				<option value="content">내용</option>
				<option value="total">제목+내용</option>
			</select>
			<input id="searchText" type="text" style="width:500px;"/>
			<button id="btnSearch" style="width:90px;">검색</button>
		</div>
		<div class="QA">
			<table id="noticeTable"></table>
		</div>
		<div class="pageArea">
			<span id="searchPage"  class="pages"></span>
		</div>
	</div>
</div>
